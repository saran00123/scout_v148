.class public Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;,
        Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;,
        Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;
    }
.end annotation


# instance fields
.field private entropyBitsRequired:I

.field private final entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

.field private personalizationString:[B

.field private final random:Ljava/security/SecureRandom;

.field private securityStrength:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    iput v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    new-instance p1, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/prng/EntropySourceProvider;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    iput v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->getSimplifiedName(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSimplifiedName(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/String;
    .registers 4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2e

    const-string v1, "SHA3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2e
    return-object p0
.end method


# virtual methods
.method public buildCTR(Lorg/bouncycastle/crypto/BlockCipher;I[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .registers 15

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v9, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v8, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    move-object v3, v9

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I[B[BI)V

    invoke-direct {v0, v1, v2, v9, p4}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public buildHMAC(Lorg/bouncycastle/crypto/Mac;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .registers 10

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;-><init>(Lorg/bouncycastle/crypto/Mac;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public buildHash(Lorg/bouncycastle/crypto/Digest;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .registers 10

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;-><init>(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public setEntropyBitsRequired(I)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;
    .registers 2

    iput p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    return-object p0
.end method

.method public setPersonalizationString([B)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;
    .registers 2

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    return-object p0
.end method

.method public setSecurityStrength(I)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;
    .registers 2

    iput p1, p0, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    return-object p0
.end method
