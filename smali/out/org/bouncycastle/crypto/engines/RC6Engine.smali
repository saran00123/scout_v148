.class public Lorg/bouncycastle/crypto/engines/RC6Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final LGW:I = 0x5

.field private static final P32:I = -0x481eae9d

.field private static final Q32:I = -0x61c88647

.field private static final _noRounds:I = 0x14

.field private static final bytesPerWord:I = 0x4

.field private static final wordSize:I = 0x20


# instance fields
.field private _S:[I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    return-void
.end method

.method private bytesToWord([BI)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_2
    if-ltz v1, :cond_10

    shl-int/lit8 v0, v0, 0x8

    add-int v2, v1, p2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method private decryptBlock([BI[BI)I
    .registers 14

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v2

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v3, 0x2b

    aget v3, p2, v3

    sub-int/2addr v2, v3

    const/16 v3, 0x2a

    aget p2, p2, v3

    sub-int/2addr v0, p2

    const/16 p2, 0x14

    :goto_24
    const/4 v3, 0x1

    if-lt p2, v3, :cond_58

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    mul-int/2addr v4, v0

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v4

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    mul-int/2addr v6, v2

    invoke-direct {p0, v6, v5}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v6, p2, 0x2

    add-int/lit8 v7, v6, 0x1

    aget v5, v5, v7

    sub-int/2addr v1, v5

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v1, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    aget v5, v5, v6

    sub-int/2addr p1, v5

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result p1

    xor-int/2addr p1, v4

    add-int/lit8 p2, p2, -0x1

    move v8, v0

    move v0, p1

    move p1, v2

    move v2, v1

    move v1, v8

    goto :goto_24

    :cond_58
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    aget v3, p2, v3

    sub-int/2addr p1, v3

    const/4 v3, 0x0

    aget p2, p2, v3

    sub-int/2addr v1, p2

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p2, p4, 0x4

    invoke-direct {p0, v1, p3, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p2, p4, 0x8

    invoke-direct {p0, v2, p3, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p4, p4, 0xc

    invoke-direct {p0, p1, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method private encryptBlock([BI[BI)I
    .registers 14

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v2

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v3, 0x0

    aget v3, p2, v3

    add-int/2addr v1, v3

    const/4 v3, 0x1

    aget p2, p2, v3

    add-int/2addr p1, p2

    move p2, p1

    move p1, v3

    :goto_22
    const/16 v4, 0x14

    if-gt p1, v4, :cond_56

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v3

    mul-int/2addr v4, v1

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v4

    mul-int/lit8 v6, p2, 0x2

    add-int/2addr v6, v3

    mul-int/2addr v6, p2

    invoke-direct {p0, v6, v5}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v5

    xor-int/2addr v0, v4

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v7, p1, 0x2

    aget v6, v6, v7

    add-int/2addr v0, v6

    xor-int/2addr v2, v5

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    add-int/2addr v7, v3

    aget v4, v4, v7

    add-int/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    move v8, v2

    move v2, p2

    move p2, v0

    move v0, v1

    move v1, v8

    goto :goto_22

    :cond_56
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v3, 0x2a

    aget v3, p1, v3

    add-int/2addr v0, v3

    const/16 v3, 0x2b

    aget p1, p1, v3

    add-int/2addr v2, p1

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p1, p4, 0x4

    invoke-direct {p0, v1, p3, p1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p1, p4, 0x8

    invoke-direct {p0, v2, p3, p1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    add-int/lit8 p4, p4, 0xc

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    const/16 p1, 0x10

    return p1
.end method

.method private rotateLeft(II)I
    .registers 4

    shl-int v0, p1, p2

    neg-int p2, p2

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private rotateRight(II)I
    .registers 4

    ushr-int v0, p1, p2

    neg-int p2, p2

    shl-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private setKey([B)V
    .registers 12

    array-length v0, p1

    const/4 v1, 0x3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    array-length v3, p1

    sub-int/2addr v3, v2

    :goto_10
    if-ltz v3, :cond_22

    div-int/lit8 v4, v3, 0x4

    aget v5, v0, v4

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    aput v5, v0, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    :cond_22
    const/16 p1, 0x2c

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const v3, -0x481eae9d

    const/4 v4, 0x0

    aput v3, p1, v4

    move p1, v2

    :goto_31
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v5, v3

    if-ge p1, v5, :cond_43

    add-int/lit8 v5, p1, -0x1

    aget v5, v3, v5

    const v6, -0x61c88647

    add-int/2addr v5, v6

    aput v5, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    :cond_43
    array-length p1, v0

    array-length v5, v3

    if-le p1, v5, :cond_49

    array-length p1, v0

    goto :goto_4a

    :cond_49
    array-length p1, v3

    :goto_4a
    mul-int/2addr p1, v1

    move v3, v4

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_4f
    if-ge v4, p1, :cond_73

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    aget v9, v8, v3

    add-int/2addr v9, v5

    add-int/2addr v9, v6

    invoke-direct {p0, v9, v1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v5

    aput v5, v8, v3

    aget v8, v0, v7

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    add-int/2addr v6, v5

    invoke-direct {p0, v8, v6}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v6

    aput v6, v0, v7

    add-int/2addr v3, v2

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v8, v8

    rem-int/2addr v3, v8

    add-int/2addr v7, v2

    array-length v8, v0

    rem-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_73
    return-void
.end method

.method private wordToBytes(I[BI)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_e

    add-int v1, v0, p3

    int-to-byte v2, p1

    aput-byte v2, p2, v1

    ushr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "RC6"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_10

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->forEncryption:Z

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->setKey([B)V

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to RC6 init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .registers 8

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RC6Engine;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    if-eqz v1, :cond_2f

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_27

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_1f

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->forEncryption:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->encryptBlock([BI[BI)I

    move-result p1

    goto :goto_1e

    :cond_1a
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->decryptBlock([BI[BI)I

    move-result p1

    :goto_1e
    return p1

    :cond_1f
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RC6 engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 1

    return-void
.end method
