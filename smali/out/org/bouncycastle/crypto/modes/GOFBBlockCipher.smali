.class public Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;


# static fields
.field static final C1:I = 0x1010104

.field static final C2:I = 0x1010101


# instance fields
.field private IV:[B

.field N3:I

.field N4:I

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field firstStep:Z

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2d

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    return-void

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GCTR only for 64 bit block ciphers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bytesToint([BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    return v0
.end method

.method private intTobytes(I[BI)V
    .registers 6

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_25

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v0, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    :cond_25
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    const v3, 0x1010101

    add-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    const v3, 0x1010104

    add-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    if-ge v0, v3, :cond_3f

    if-lez v0, :cond_3f

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    :cond_3f
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v0, v3, v2}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :cond_56
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    if-ne v0, v2, :cond_7c

    iput v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7c
    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_40

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    array-length v2, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v3

    if-ge v2, v4, :cond_2c

    array-length v2, v3

    array-length v4, v1

    sub-int/2addr v2, v4

    array-length v4, v1

    invoke-static {v1, v0, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v0

    :goto_20
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v3

    array-length v5, v1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_30

    aput-byte v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2c
    array-length v2, v3

    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_30
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->reset()V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_47

    :cond_40
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->reset()V

    if-eqz p2, :cond_4a

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    :goto_47
    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :cond_4a
    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->processBytes([BII[BI)I

    iget p1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return p1
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
