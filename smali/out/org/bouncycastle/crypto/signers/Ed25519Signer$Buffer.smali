.class Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;
.super Ljava/io/ByteArrayOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/signers/Ed25519Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Buffer"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/signers/Ed25519Signer$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized generateSignature(Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;)[B
    .registers 11

    monitor-enter p0

    const/16 v0, 0x40

    :try_start_3
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->buf:[B

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I

    const/4 v8, 0x0

    move-object v1, p1

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->sign(I[B[BII[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->reset()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iput v2, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized verifySignature(Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;[B)Z
    .registers 10

    monitor-enter p0

    const/16 v0, 0x40

    :try_start_3
    array-length v1, p2

    if-eq v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->reset()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_21

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->getEncoded()[B

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->buf:[B

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->verify([BI[BI[BII)Z

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->reset()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_21

    monitor-exit p0

    return p1

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method
