.class public Lcom/nimbusds/jose/crypto/impl/RSAKeyUtils;
.super Ljava/lang/Object;
.source "RSAKeyUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static keyBitLength(Ljava/security/PrivateKey;)I
    .registers 3

    .line 67
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 71
    :cond_6
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    .line 74
    :try_start_8
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    return p0

    :catch_11
    return v1
.end method

.method public static toRSAPrivateKey(Lcom/nimbusds/jose/jwk/RSAKey;)Ljava/security/PrivateKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/RSAKey;->toPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    .line 48
    :cond_b
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    const-string v0, "The RSA JWK doesn\'t contain a private part"

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
