.class public Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;
.super Lcom/nimbusds/jose/jwk/gen/JWKGenerator;
.source "OctetKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nimbusds/jose/jwk/gen/JWKGenerator<",
        "Lcom/nimbusds/jose/jwk/OctetKeyPair;",
        ">;"
    }
.end annotation


# static fields
.field public static final SUPPORTED_CURVES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/jwk/Curve;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final crv:Lcom/nimbusds/jose/jwk/Curve;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 64
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->SUPPORTED_CURVES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/jwk/Curve;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/gen/JWKGenerator;-><init>()V

    if-eqz p1, :cond_18

    .line 81
    sget-object v0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->SUPPORTED_CURVES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 85
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->crv:Lcom/nimbusds/jose/jwk/Curve;

    return-void

    .line 82
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Curve not supported for OKP generation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The curve must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic generate()Lcom/nimbusds/jose/jwk/JWK;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->generate()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public generate()Lcom/nimbusds/jose/jwk/OctetKeyPair;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->crv:Lcom/nimbusds/jose/jwk/Curve;

    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->X25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 102
    :try_start_a
    invoke-static {}, Lcom/google/crypto/tink/subtle/X25519;->generatePrivateKey()[B

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/X25519;->publicFromPrivate([B)[B

    move-result-object v1
    :try_end_12
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_12} :catch_1e

    .line 110
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    .line 111
    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_47

    :catch_1e
    move-exception v0

    .line 107
    new-instance v1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :cond_29
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->crv:Lcom/nimbusds/jose/jwk/Curve;

    sget-object v1, Lcom/nimbusds/jose/jwk/Curve;->Ed25519:Lcom/nimbusds/jose/jwk/Curve;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/Curve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 118
    :try_start_33
    invoke-static {}, Lcom/google/crypto/tink/subtle/Ed25519Sign$KeyPair;->newKeyPair()Lcom/google/crypto/tink/subtle/Ed25519Sign$KeyPair;

    move-result-object v0
    :try_end_37
    .catch Ljava/security/GeneralSecurityException; {:try_start_33 .. :try_end_37} :catch_76

    .line 125
    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/Ed25519Sign$KeyPair;->getPrivateKey()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/Ed25519Sign$KeyPair;->getPublicKey()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    .line 133
    :goto_47
    new-instance v2, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    iget-object v3, p0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->crv:Lcom/nimbusds/jose/jwk/Curve;

    invoke-direct {v2, v3, v0}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;-><init>(Lcom/nimbusds/jose/jwk/Curve;Lcom/nimbusds/jose/util/Base64URL;)V

    .line 134
    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->d(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->use:Lcom/nimbusds/jose/jwk/KeyUse;

    .line 135
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->keyUse(Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->ops:Ljava/util/Set;

    .line 136
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->keyOperations(Ljava/util/Set;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->alg:Lcom/nimbusds/jose/Algorithm;

    .line 137
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->algorithm(Lcom/nimbusds/jose/Algorithm;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    move-result-object v0

    .line 139
    iget-boolean v1, p0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->x5tKid:Z

    if-eqz v1, :cond_6c

    .line 140
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->keyIDFromThumbprint()Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    goto :goto_71

    .line 142
    :cond_6c
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/gen/OctetKeyPairGenerator;->kid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->keyID(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;

    .line 145
    :goto_71
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/OctetKeyPair$Builder;->build()Lcom/nimbusds/jose/jwk/OctetKeyPair;

    move-result-object v0

    return-object v0

    :catch_76
    move-exception v0

    .line 122
    new-instance v1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 130
    :cond_81
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    const-string v1, "Curve not supported"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
