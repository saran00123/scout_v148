.class public Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;
.super Lorg/bouncycastle/crypto/BufferedBlockCipher;


# static fields
.field private static final RED_POLY_128:J = 0x87L

.field private static final RED_POLY_256:J = 0x425L

.field private static final RED_POLY_512:J = 0x125L


# instance fields
.field private final blockSize:I

.field private counter:I

.field private final reductionPolynomial:J

.field private final tw_current:[J

.field private final tw_init:[J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    iget p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->getReductionPolynomial(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->reductionPolynomial:J

    iget p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    ushr-int/lit8 v0, p1, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    ushr-int/lit8 p1, p1, 0x3

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    return-void
.end method

.method private static GF_double(J[J)V
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    move v1, v0

    :goto_5
    array-length v4, p2

    if-ge v1, v4, :cond_17

    aget-wide v4, p2, v1

    const/16 v6, 0x3f

    ushr-long v6, v4, v6

    const/4 v8, 0x1

    shl-long/2addr v4, v8

    xor-long/2addr v2, v4

    aput-wide v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    move-wide v2, v6

    goto :goto_5

    :cond_17
    aget-wide v4, p2, v0

    neg-long v1, v2

    and-long/2addr p0, v1

    xor-long/2addr p0, v4

    aput-wide p0, p2, v0

    return-void
.end method

.method protected static getReductionPolynomial(I)J
    .registers 3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x40

    if-ne p0, v0, :cond_f

    const-wide/16 v0, 0x125

    return-wide v0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only 128, 256, and 512 -bit block sizes supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    const-wide/16 v0, 0x425

    return-wide v0

    :cond_1a
    const-wide/16 v0, 0x87

    return-wide v0
.end method

.method private processBlock([BI[BI)V
    .registers 11

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4a

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->reductionPolynomial:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->GF_double(J[J)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v3, v1, [B

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    :goto_22
    iget v4, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ge v1, v4, :cond_33

    aget-byte v4, v3, v1

    add-int v5, p2, v1

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_33
    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v3, v2, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_38
    iget p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ge v2, p1, :cond_49

    add-int p1, p4, v2

    aget-byte p2, v3, v2

    aget-byte v1, v0, v2

    xor-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_49
    return-void

    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempt to process too many blocks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->reset()V

    const/4 p1, 0x0

    return p1
.end method

.method public getOutputSize(I)I
    .registers 2

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .registers 2

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 7

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_41

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p2

    array-length v1, p2

    iget v2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ne v1, v2, :cond_39

    new-array v1, v2, [B

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v2, 0x1

    invoke-interface {p2, v2, v0}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p2, v1, v3, v1, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    invoke-static {v1, v3, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget-object p2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    array-length v0, p1

    invoke-static {p1, v3, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    return-void

    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Currently only support IVs of exactly one block"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameters passed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processByte(B[BI)I
    .registers 4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unsupported operation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBytes([BII[BI)I
    .registers 9

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_2d

    array-length v0, p4

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_25

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    rem-int v0, p3, v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p3, :cond_1c

    add-int v1, p2, v0

    add-int v2, p5, v0

    invoke-direct {p0, p1, v1, p4, v2}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->processBlock([BI[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    add-int/2addr v0, v1

    goto :goto_f

    :cond_1c
    return p3

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Partial blocks not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    return-void
.end method
