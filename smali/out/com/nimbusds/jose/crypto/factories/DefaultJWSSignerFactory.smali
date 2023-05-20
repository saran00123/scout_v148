.class public Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;
.super Ljava/lang/Object;
.source "DefaultJWSSignerFactory.java"

# interfaces
.implements Lcom/nimbusds/jose/produce/JWSSignerFactory;


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jcaContext:Lcom/nimbusds/jose/jca/JCAContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    sget-object v1, Lcom/nimbusds/jose/crypto/MACSigner;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 59
    sget-object v1, Lcom/nimbusds/jose/crypto/RSASSASigner;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    sget-object v1, Lcom/nimbusds/jose/crypto/ECDSASigner;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    sget-object v1, Lcom/nimbusds/jose/crypto/Ed25519Signer;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/nimbusds/jose/jca/JCAContext;

    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JCAContext;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    return-void
.end method


# virtual methods
.method public createJWSSigner(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWSSigner;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 82
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/KeyUse;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    .line 83
    :cond_19
    new-instance p1, Lcom/nimbusds/jose/jwk/JWKException;

    const-string v0, "The JWK use must be sig (signature) or unspecified"

    invoke-direct {p1, v0}, Lcom/nimbusds/jose/jwk/JWKException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_21
    :goto_21
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    if-eqz v0, :cond_2d

    .line 90
    new-instance v0, Lcom/nimbusds/jose/crypto/MACSigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/MACSigner;-><init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V

    goto :goto_50

    .line 91
    :cond_2d
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/RSAKey;

    if-eqz v0, :cond_39

    .line 92
    new-instance v0, Lcom/nimbusds/jose/crypto/RSASSASigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/RSAKey;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    goto :goto_50

    .line 93
    :cond_39
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/ECKey;

    if-eqz v0, :cond_45

    .line 94
    new-instance v0, Lcom/nimbusds/jose/crypto/ECDSASigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/ECKey;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/ECDSASigner;-><init>(Lcom/nimbusds/jose/jwk/ECKey;)V

    goto :goto_50

    .line 95
    :cond_45
    instance-of v0, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    if-eqz v0, :cond_6b

    .line 96
    new-instance v0, Lcom/nimbusds/jose/crypto/Ed25519Signer;

    check-cast p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/crypto/Ed25519Signer;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    .line 102
    :goto_50
    invoke-interface {v0}, Lcom/nimbusds/jose/JWSSigner;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    iget-object v1, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/jca/JCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    .line 103
    invoke-interface {v0}, Lcom/nimbusds/jose/JWSSigner;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    iget-object v1, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    return-object v0

    .line 98
    :cond_6b
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported JWK type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_82
    invoke-static {}, Lcom/nimbusds/jose/jwk/JWKException;->expectedPrivate()Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1
.end method

.method public createJWSSigner(Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/JWSAlgorithm;)Lcom/nimbusds/jose/JWSSigner;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 115
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyUse()Lcom/nimbusds/jose/jwk/KeyUse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/KeyUse;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    .line 116
    :cond_19
    new-instance p1, Lcom/nimbusds/jose/jwk/JWKException;

    const-string p2, "The JWK use must be sig (signature) or unspecified"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/jwk/JWKException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_21
    :goto_21
    sget-object v0, Lcom/nimbusds/jose/crypto/MACSigner;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 124
    instance-of p2, p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    if-eqz p2, :cond_35

    .line 128
    new-instance p2, Lcom/nimbusds/jose/crypto/MACSigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/MACSigner;-><init>(Lcom/nimbusds/jose/jwk/OctetSequenceKey;)V

    goto :goto_85

    .line 125
    :cond_35
    const-class p1, Lcom/nimbusds/jose/jwk/OctetSequenceKey;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKException;->expectedClass(Ljava/lang/Class;)Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1

    .line 129
    :cond_3c
    sget-object v0, Lcom/nimbusds/jose/crypto/RSASSASigner;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 131
    instance-of p2, p1, Lcom/nimbusds/jose/jwk/RSAKey;

    if-eqz p2, :cond_50

    .line 135
    new-instance p2, Lcom/nimbusds/jose/crypto/RSASSASigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/RSAKey;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/RSASSASigner;-><init>(Lcom/nimbusds/jose/jwk/RSAKey;)V

    goto :goto_85

    .line 132
    :cond_50
    const-class p1, Lcom/nimbusds/jose/jwk/RSAKey;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKException;->expectedClass(Ljava/lang/Class;)Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1

    .line 136
    :cond_57
    sget-object v0, Lcom/nimbusds/jose/crypto/ECDSASigner;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 138
    instance-of p2, p1, Lcom/nimbusds/jose/jwk/ECKey;

    if-eqz p2, :cond_6b

    .line 142
    new-instance p2, Lcom/nimbusds/jose/crypto/ECDSASigner;

    check-cast p1, Lcom/nimbusds/jose/jwk/ECKey;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/ECDSASigner;-><init>(Lcom/nimbusds/jose/jwk/ECKey;)V

    goto :goto_85

    .line 139
    :cond_6b
    const-class p1, Lcom/nimbusds/jose/jwk/ECKey;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKException;->expectedClass(Ljava/lang/Class;)Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1

    .line 143
    :cond_72
    sget-object v0, Lcom/nimbusds/jose/crypto/Ed25519Signer;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 145
    instance-of p2, p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    if-eqz p2, :cond_a0

    .line 149
    new-instance p2, Lcom/nimbusds/jose/crypto/Ed25519Signer;

    check-cast p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/Ed25519Signer;-><init>(Lcom/nimbusds/jose/jwk/OctetKeyPair;)V

    .line 156
    :goto_85
    invoke-interface {p2}, Lcom/nimbusds/jose/JWSSigner;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    .line 157
    invoke-interface {p2}, Lcom/nimbusds/jose/JWSSigner;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jca/JCAContext;->setProvider(Ljava/security/Provider;)V

    return-object p2

    .line 146
    :cond_a0
    const-class p1, Lcom/nimbusds/jose/jwk/OctetKeyPair;

    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKException;->expectedClass(Ljava/lang/Class;)Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1

    .line 152
    :cond_a7
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported JWS algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_be
    invoke-static {}, Lcom/nimbusds/jose/jwk/JWKException;->expectedPrivate()Lcom/nimbusds/jose/jwk/JWKException;

    move-result-object p1

    throw p1
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    return-object v0
.end method

.method public supportedJWSAlgorithms()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSSignerFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    return-object v0
.end method
