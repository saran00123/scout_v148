.class public Lorg/bouncycastle/crypto/prng/X931SecureRandom;
.super Ljava/security/SecureRandom;


# instance fields
.field private final drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

.field private final predictionResistant:Z

.field private final randomSource:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/X931RNG;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    iput-boolean p3, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/prng/X931RNG;->getEntropySource()Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/prng/EntropyUtil;->generateSeed(Lorg/bouncycastle/crypto/prng/EntropySource;I)[B

    move-result-object p1

    return-object p1
.end method

.method public nextBytes([B)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/prng/X931RNG;->generate([BZ)I

    move-result v0

    if-gez v0, :cond_17

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/prng/X931RNG;->reseed()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->drbg:Lorg/bouncycastle/crypto/prng/X931RNG;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->predictionResistant:Z

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/prng/X931RNG;->generate([BZ)I

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public setSeed(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p2}, Ljava/security/SecureRandom;->setSeed(J)V

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setSeed([B)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;->randomSource:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method
