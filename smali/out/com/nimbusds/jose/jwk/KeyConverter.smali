.class public Lcom/nimbusds/jose/jwk/KeyConverter;
.super Ljava/lang/Object;
.source "KeyConverter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJavaKeys(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 55
    :cond_7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_10
    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nimbusds/jose/jwk/JWK;

    .line 58
    :try_start_1c
    instance-of v2, v1, Lcom/nimbusds/jose/jwk/AsymmetricJWK;

    if-eqz v2, :cond_3b

    .line 59
    check-cast v1, Lcom/nimbusds/jose/jwk/AsymmetricJWK;

    invoke-interface {v1}, Lcom/nimbusds/jose/jwk/AsymmetricJWK;->toKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 62
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 64
    :cond_3b
    instance-of v2, v1, Lcom/nimbusds/jose/jwk/SecretJWK;

    if-eqz v2, :cond_10

    .line 65
    check-cast v1, Lcom/nimbusds/jose/jwk/SecretJWK;

    invoke-interface {v1}, Lcom/nimbusds/jose/jwk/SecretJWK;->toSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1c .. :try_end_48} :catch_10

    goto :goto_10

    :cond_49
    return-object v0
.end method
