.class public Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;
.super Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
.source "ECKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
        "Lcom/nimbusds/jose/jwk/ECKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final crv:Lcom/nimbusds/jose/jwk/Curve;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;-><init>()V

    if-eqz p1, :cond_8

    .line 67
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->crv:Lcom/nimbusds/jose/jwk/Curve;

    return-void

    .line 65
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The curve must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generate()Lcom/nimbusds/jose/jwk/ECKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->crv:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/Curve;->toECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 79
    :try_start_6
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->keyStore:Ljava/security/KeyStore;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_8} :catch_63
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_8} :catch_61

    const-string v2, "EC"

    if-eqz v1, :cond_17

    .line 81
    :try_start_c
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    goto :goto_1b

    .line 83
    :cond_17
    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 85
    :goto_1b
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_1e} :catch_63
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_1e} :catch_61

    .line 90
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/nimbusds/jose/jwk/ECKey$Builder;

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->crv:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v1, v2, v3}, Lcom/nimbusds/jose/jwk/ECKey$Builder;-><init>(Lcom/nimbusds/jose/jwk/Curve;Ljava/security/interfaces/ECPublicKey;)V

    .line 93
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->privateKey(Ljava/security/PrivateKey;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 94
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->ops:Ljava/util/Set;

    .line 95
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 96
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->keyStore:Ljava/security/KeyStore;

    .line 97
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyStore(Ljava/security/KeyStore;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    move-result-object v0

    .line 99
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->x5tKid:Z

    if-eqz v1, :cond_57

    .line 100
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/ECKey$Builder;

    goto :goto_5c

    .line 102
    :cond_57
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->kid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/ECKey$Builder;

    .line 105
    :goto_5c
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/ECKey$Builder;->build()Lcom/nimbusds/jose/jwk/ECKey;

    move-result-object v0

    return-object v0

    :catch_61
    move-exception v0

    goto :goto_64

    :catch_63
    move-exception v0

    .line 87
    :goto_64
    new-instance v1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic generate()Lcom/nimbusds/jose/jwk/JWK;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/gen/ECKeyGenerator;->generate()Lcom/nimbusds/jose/jwk/ECKey;

    move-result-object v0

    return-object v0
.end method
