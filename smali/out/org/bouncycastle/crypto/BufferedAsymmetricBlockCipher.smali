.class public Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;
.super Ljava/lang/Object;


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field private final cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-void
.end method


# virtual methods
.method public doFinal()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    return-object v0
.end method

.method public getBufferPosition()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return v0
.end method

.method public getInputBlockSize()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p2

    add-int/2addr p2, p1

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return-void
.end method

.method public processByte(B)V
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v2, v1

    if-ge v0, v2, :cond_e

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    aput-byte p1, v1, v0

    return-void

    :cond_e
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v0, "attempt to process message too long for cipher"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII)V
    .registers 8

    if-nez p3, :cond_3

    return-void

    :cond_3
    if-ltz p3, :cond_1f

    iget v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int v1, v0, p3

    iget-object v2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v3, v2

    if-gt v1, v3, :cond_17

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return-void

    :cond_17
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "attempt to process message too long for cipher"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_6
    iget-object v2, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v3, v2

    if-ge v0, v3, :cond_10

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    iput v1, p0, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return-void
.end method
