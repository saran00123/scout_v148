.class public Lcom/nimbusds/jose/crypto/Ed25519Verifier;
.super Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;
.source "Ed25519Verifier.java"

# interfaces
.implements Lcom/nimbusds/jose/JWSVerifier;
.implements Lcom/nimbusds/jose/CriticalHeaderParamsAware;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

.field private final publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

.field private final tinkVerifier:Lcom/google/crypto/tink/subtle/Ed25519Verify;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/crypto/Ed25519Verifier;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/OctetKeyPair;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/nimbusds/jose/crypto/impl/EdDSAProvider;-><init>()V

    .line 63
    new-instance v0, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    .line 101
    sget-object v0, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getCurve()Lcom/nimbusds/jose/jwk/Curve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 105
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 109
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    .line 110
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519Verify;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/OctetKeyPair;->getDecodedX()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/subtle/Ed25519Verify;-><init>([B)V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->tinkVerifier:Lcom/google/crypto/tink/subtle/Ed25519Verify;

    .line 111
    iget-object p1, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->setDeferredCriticalHeaderParams(Ljava/util/Set;)V

    return-void

    .line 106
    :cond_2f
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Ed25519Verifier requires a public key, use OctetKeyPair.toPublicJWK()"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_37
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Ed25519Verifier only supports OctetKeyPairs with crv=Ed25519"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDeferredCriticalHeaderParams()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProcessedCriticalHeaderParams()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->getProcessedCriticalHeaderParams()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->publicKey:Lcom/nimbusds/jose/jwk/OctetKeyPair;

    return-object v0
.end method

.method public verify(Lcom/nimbusds/jose/JWSHeader;[BLcom/nimbusds/jose/util/Base64URL;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm;->EdDSA:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 153
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->critPolicy:Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/crypto/impl/CriticalHeaderParamsDeferral;->headerPasses(Lcom/nimbusds/jose/Header;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_16

    return v0

    .line 157
    :cond_16
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object p1

    .line 160
    :try_start_1a
    iget-object p3, p0, Lcom/nimbusds/jose/crypto/Ed25519Verifier;->tinkVerifier:Lcom/google/crypto/tink/subtle/Ed25519Verify;

    invoke-virtual {p3, p1, p2}, Lcom/google/crypto/tink/subtle/Ed25519Verify;->verify([B[B)V
    :try_end_1f
    .catch Ljava/security/GeneralSecurityException; {:try_start_1a .. :try_end_1f} :catch_21

    const/4 p1, 0x1

    return p1

    :catch_21
    return v0

    .line 149
    :cond_22
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Ed25519Verifier requires alg=EdDSA in JWSHeader"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
