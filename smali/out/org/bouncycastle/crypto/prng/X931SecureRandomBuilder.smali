.class public Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;
.super Ljava/lang/Object;


# instance fields
.field private dateTimeVector:[B

.field private entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    new-instance p1, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/prng/EntropySourceProvider;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/params/KeyParameter;Z)Lorg/bouncycastle/crypto/prng/X931SecureRandom;
    .registers 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    if-nez v0, :cond_16

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_16
    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p2, Lorg/bouncycastle/crypto/prng/X931SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    new-instance v1, Lorg/bouncycastle/crypto/prng/X931RNG;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/prng/X931RNG;-><init>(Lorg/bouncycastle/crypto/BlockCipher;[BLorg/bouncycastle/crypto/prng/EntropySource;)V

    invoke-direct {p2, v0, v1, p3}, Lorg/bouncycastle/crypto/prng/X931SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/X931RNG;Z)V

    return-object p2
.end method

.method public setDateTimeVector([B)Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;
    .registers 2

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    return-object p0
.end method
