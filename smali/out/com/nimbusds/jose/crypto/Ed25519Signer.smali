.class public Lcom/nimbusds/jose/crypto/Ed25519Signer;
.super Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;
.source "Ed25519Signer.java"

# interfaces
.implements Lcom/nimbusds/jose/JWSSigner;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

.field private final tinkSigner:Lcom/google/crypto/tink/subtle/Ed25519Sign;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;-><init>()V

    .line 83
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 87
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 91
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/Ed25519Signer;->privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 94
    :try_start_17
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519Sign;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getDecodedD()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/subtle/Ed25519Sign;-><init>([B)V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Signer;->tinkSigner:Lcom/google/crypto/tink/subtle/Ed25519Sign;
    :try_end_22
    .catch Ljava/security/GeneralSecurityException; {:try_start_17 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p1

    .line 98
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 88
    :cond_2e
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string v0, "The OctetKeyPair doesn\'t contain a private part"

    invoke-direct {p1, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_36
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string v0, "Ed25519Signer only supports OctetKeyPairs with crv=Ed25519"

    invoke-direct {p1, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getPrivateKey()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Signer;->privateKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    return-object v0
.end method

.method public sign(Lcom/nimbusds/jose/JWSHeader;[B)Lcom/nimbusds/jose/util/Base64URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object p1

    .line 120
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 127
    :try_start_c
    iget-object p1, p0, Lcom/nimbusds/jose/crypto/Ed25519Signer;->tinkSigner:Lcom/google/crypto/tink/subtle/Ed25519Sign;

    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/subtle/Ed25519Sign;->sign([B)[B

    move-result-object p1
    :try_end_12
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_12} :catch_17

    .line 134
    invoke-static {p1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    return-object p1

    :catch_17
    move-exception p1

    .line 131
    new-instance p2, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 121
    :cond_22
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Ed25519Signer requires alg=EdDSA in JWSHeader"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
