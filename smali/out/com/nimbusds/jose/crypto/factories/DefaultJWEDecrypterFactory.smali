.class public Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;
.super Ljava/lang/Object;
.source "DefaultJWEDecrypterFactory.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWEDecrypterFactory;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final SUPPORTED_ALGORITHMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 66
    sget-object v1, Lcom/nimbusds/jose/crypto/RSADecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    sget-object v1, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    sget-object v1, Lcom/nimbusds/jose/crypto/DirectDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    sget-object v1, Lcom/nimbusds/jose/crypto/AESDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 70
    sget-object v1, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 74
    sget-object v1, Lcom/nimbusds/jose/crypto/RSADecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    sget-object v1, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 76
    sget-object v1, Lcom/nimbusds/jose/crypto/DirectDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    sget-object v1, Lcom/nimbusds/jose/crypto/AESDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    sget-object v1, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JWEJCAContext;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    return-void
.end method


# virtual methods
.method public createJWEDecrypter(Lcom/nimbusds/jose/JWEHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWEDecrypter;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/nimbusds/jose/crypto/RSADecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/nimbusds/jose/crypto/RSADecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 117
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 119
    instance-of p1, p2, Ljava/security/PrivateKey;

    if-eqz p1, :cond_2c

    instance-of p1, p2, Ljava/security/interfaces/RSAKey;

    if-eqz p1, :cond_2c

    .line 123
    check-cast p2, Ljava/security/PrivateKey;

    .line 125
    new-instance p1, Lcom/nimbusds/jose/crypto/RSADecrypter;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/crypto/RSADecrypter;-><init>(Ljava/security/PrivateKey;)V

    move-object v0, p1

    goto/16 :goto_134

    .line 120
    :cond_2c
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljava/security/PrivateKey;

    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Ljava/security/interfaces/RSAKey;

    aput-object v2, v0, v1

    invoke-direct {p1, p2, v0}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    throw p1

    .line 127
    :cond_3a
    sget-object v0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 128
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 130
    instance-of p1, p2, Ljava/security/PrivateKey;

    if-eqz p1, :cond_6f

    instance-of p1, p2, Ljava/security/interfaces/ECKey;

    if-eqz p1, :cond_6f

    .line 134
    move-object p1, p2

    check-cast p1, Ljava/security/PrivateKey;

    .line 135
    check-cast p2, Ljava/security/interfaces/ECKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-static {p2}, Lcom/nimbusds/jose/jwk/Curve;->forECParameterSpec(Ljava/security/spec/ECParameterSpec;)Lcom/nimbusds/jose/jwk/Curve;

    move-result-object p2

    .line 137
    new-instance v0, Lcom/nimbusds/jose/crypto/ECDHDecrypter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/nimbusds/jose/crypto/ECDHDecrypter;-><init>(Ljava/security/PrivateKey;Ljava/util/Set;Lcom/nimbusds/jose/jwk/Curve;)V

    goto/16 :goto_134

    .line 131
    :cond_6f
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljava/security/PrivateKey;

    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Ljava/security/interfaces/ECKey;

    aput-object v2, v0, v1

    invoke-direct {p1, p2, v0}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    throw p1

    .line 139
    :cond_7d
    sget-object v0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    sget-object v0, Lcom/nimbusds/jose/crypto/DirectDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 140
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 142
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_c2

    .line 146
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 147
    new-instance v0, Lcom/nimbusds/jose/crypto/DirectDecrypter;

    invoke-direct {v0, p2}, Lcom/nimbusds/jose/crypto/DirectDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 149
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/DirectDecrypter;->supportedEncryptionMethods()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b0

    goto/16 :goto_134

    .line 150
    :cond_b0
    new-instance p2, Lcom/nimbusds/jose/KeyLengthException;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(ILcom/nimbusds/jose/Algorithm;)V

    throw p2

    .line 143
    :cond_c2
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljavax/crypto/SecretKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 155
    :cond_ca
    sget-object v0, Lcom/nimbusds/jose/crypto/AESDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    sget-object v0, Lcom/nimbusds/jose/crypto/AESDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 156
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 158
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_106

    .line 162
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 163
    new-instance v0, Lcom/nimbusds/jose/crypto/AESDecrypter;

    invoke-direct {v0, p2}, Lcom/nimbusds/jose/crypto/AESDecrypter;-><init>(Ljavax/crypto/SecretKey;)V

    .line 165
    invoke-virtual {v0}, Lcom/nimbusds/jose/crypto/AESDecrypter;->supportedJWEAlgorithms()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_fc

    goto :goto_134

    .line 166
    :cond_fc
    new-instance p2, Lcom/nimbusds/jose/KeyLengthException;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/KeyLengthException;-><init>(Lcom/nimbusds/jose/Algorithm;)V

    throw p2

    .line 159
    :cond_106
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljavax/crypto/SecretKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 171
    :cond_10e
    sget-object v0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    sget-object v0, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    .line 172
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_188

    .line 174
    instance-of p1, p2, Ljavax/crypto/SecretKey;

    if-eqz p1, :cond_180

    .line 178
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    .line 179
    new-instance p2, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/crypto/PasswordBasedDecrypter;-><init>([B)V

    move-object v0, p2

    .line 187
    :goto_134
    invoke-interface {v0}, Lcom/nimbusds/jose/JWEDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    check-cast p1, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object p2, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {p2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setSecureRandom(Ljava/security/SecureRandom;)V

    .line 188
    invoke-interface {v0}, Lcom/nimbusds/jose/JWEDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    check-cast p1, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object p2, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {p2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getProvider()Ljava/security/Provider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setProvider(Ljava/security/Provider;)V

    .line 189
    invoke-interface {v0}, Lcom/nimbusds/jose/JWEDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    check-cast p1, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object p2, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {p2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getKeyEncryptionProvider()Ljava/security/Provider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setKeyEncryptionProvider(Ljava/security/Provider;)V

    .line 190
    invoke-interface {v0}, Lcom/nimbusds/jose/JWEDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    check-cast p1, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object p2, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {p2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getMACProvider()Ljava/security/Provider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setMACProvider(Ljava/security/Provider;)V

    .line 191
    invoke-interface {v0}, Lcom/nimbusds/jose/JWEDecrypter;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object p1

    check-cast p1, Lcom/nimbusds/jose/jca/JWEJCAContext;

    iget-object p2, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    invoke-virtual {p2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getContentEncryptionProvider()Ljava/security/Provider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jca/JWEJCAContext;->setContentEncryptionProvider(Ljava/security/Provider;)V

    return-object v0

    .line 175
    :cond_180
    new-instance p1, Lcom/nimbusds/jose/KeyTypeException;

    const-class p2, Ljavax/crypto/SecretKey;

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/KeyTypeException;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 183
    :cond_188
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "Unsupported JWE algorithm or encryption method"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;

    move-result-object v0

    return-object v0
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JWEJCAContext;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->jcaContext:Lcom/nimbusds/jose/jca/JWEJCAContext;

    return-object v0
.end method

.method public supportedEncryptionMethods()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            ">;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ENCRYPTION_METHODS:Ljava/util/Set;

    return-object v0
.end method

.method public supportedJWEAlgorithms()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;->SUPPORTED_ALGORITHMS:Ljava/util/Set;

    return-object v0
.end method
