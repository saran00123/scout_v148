.class public Lorg/bouncycastle/crypto/engines/HC128Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private buf:[B

.field private cnt:I

.field private idx:I

.field private initialised:Z

.field private iv:[B

.field private key:[B

.field private p:[I

.field private q:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    return-void
.end method

.method private static dim(II)I
    .registers 2

    sub-int/2addr p0, p1

    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->mod512(I)I

    move-result p0

    return p0
.end method

.method private static f1(I)I
    .registers 3

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x12

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x3

    xor-int/2addr p0, v0

    return p0
.end method

.method private static f2(I)I
    .registers 3

    const/16 v0, 0x11

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x13

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0xa

    xor-int/2addr p0, v0

    return p0
.end method

.method private g1(III)I
    .registers 5

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result p1

    const/16 v0, 0x17

    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result p3

    xor-int/2addr p1, p3

    const/16 p3, 0x8

    invoke-static {p2, p3}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private g2(III)I
    .registers 5

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result p1

    const/16 v0, 0x17

    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result p3

    xor-int/2addr p1, p3

    const/16 p3, 0x8

    invoke-static {p2, p3}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private getByte()B
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_28

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v4, 0x0

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    shr-int/lit8 v0, v0, 0x8

    const/4 v4, 0x2

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    :cond_28
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    aget-byte v0, v0, v3

    add-int/2addr v3, v2

    and-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    return v0
.end method

.method private h1(I)I
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    and-int/lit16 v1, p1, 0xff

    aget v1, v0, v1

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    add-int/lit16 p1, p1, 0x100

    aget p1, v0, p1

    add-int/2addr v1, p1

    return v1
.end method

.method private h2(I)I
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    and-int/lit16 v1, p1, 0xff

    aget v1, v0, v1

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    add-int/lit16 p1, p1, 0x100

    aget p1, v0, p1

    add-int/2addr v1, p1

    return v1
.end method

.method private init()V
    .registers 12

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a0

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    const/16 v2, 0x500

    new-array v3, v2, [I

    move v4, v0

    :goto_11
    const/16 v5, 0x8

    if-ge v4, v1, :cond_2a

    shr-int/lit8 v6, v4, 0x2

    aget v7, v3, v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    aget-byte v8, v8, v4

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v4, 0x3

    mul-int/2addr v9, v5

    shl-int v5, v8, v9

    or-int/2addr v5, v7

    aput v5, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2a
    const/4 v4, 0x4

    invoke-static {v3, v0, v3, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v0

    :goto_2f
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    array-length v8, v7

    if-ge v6, v8, :cond_49

    if-ge v6, v1, :cond_49

    shr-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v5

    aget v9, v3, v8

    aget-byte v7, v7, v6

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v10, v6, 0x3

    mul-int/2addr v10, v5

    shl-int/2addr v7, v10

    or-int/2addr v7, v9

    aput v7, v3, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_49
    const/16 v6, 0xc

    invoke-static {v3, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4e
    if-ge v1, v2, :cond_71

    add-int/lit8 v4, v1, -0x2

    aget v4, v3, v4

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->f2(I)I

    move-result v4

    add-int/lit8 v5, v1, -0x7

    aget v5, v3, v5

    add-int/2addr v4, v5

    add-int/lit8 v5, v1, -0xf

    aget v5, v3, v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/HC128Engine;->f1(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x10

    aget v5, v3, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_71
    const/16 v1, 0x100

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    const/16 v4, 0x200

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x300

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_82
    if-ge v1, v4, :cond_8f

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    :cond_8f
    move v1, v0

    :goto_90
    if-ge v1, v4, :cond_9d

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_9d
    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    return-void

    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static mod1024(I)I
    .registers 1

    and-int/lit16 p0, p0, 0x3ff

    return p0
.end method

.method private static mod512(I)I
    .registers 1

    and-int/lit16 p0, p0, 0x1ff

    return p0
.end method

.method private static rotateLeft(II)I
    .registers 3

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private static rotateRight(II)I
    .registers 3

    ushr-int v0, p0, p1

    neg-int p1, p1

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private step()I
    .registers 9

    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->mod512(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    const/16 v2, 0xc

    const/16 v3, 0x1ff

    const/16 v4, 0xa

    const/4 v5, 0x3

    const/16 v6, 0x200

    if-ge v1, v6, :cond_45

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    aget v6, v1, v0

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v5

    aget v5, v1, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v4

    aget v4, v7, v4

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v3

    aget v3, v7, v3

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/engines/HC128Engine;->g1(III)I

    move-result v3

    add-int/2addr v6, v3

    aput v6, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->h1(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    aget v0, v2, v0

    goto :goto_76

    :cond_45
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    aget v6, v1, v0

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v5

    aget v5, v1, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v4

    aget v4, v7, v4

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v3

    aget v3, v7, v3

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/engines/HC128Engine;->g2(III)I

    move-result v3

    add-int/2addr v6, v3

    aput v6, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->h2(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    aget v0, v2, v0

    :goto_76
    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->mod1024(I)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "HC-128"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_12

    move-object p1, p2

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_18

    :cond_12
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    move-object p1, p2

    :goto_18
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2b

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->init()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->initialised:Z

    return-void

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter passed to HC128 init - "

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

.method public processBytes([BII[BI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->initialised:Z

    if-eqz v0, :cond_33

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2b

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_23

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p3, :cond_22

    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->getByte()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_22
    return p3

    :cond_23
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->init()V

    return-void
.end method

.method public returnByte(B)B
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->getByte()B

    move-result v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method
