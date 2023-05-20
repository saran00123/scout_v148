.class public Lorg/bouncycastle/crypto/engines/HC256Engine;
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

    const/16 v0, 0x400

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    return-void
.end method

.method private getByte()B
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_28

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->step()I

    move-result v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

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
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    aget-byte v0, v0, v3

    add-int/2addr v3, v2

    and-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    return v0
.end method

.method private init()V
    .registers 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x20

    if-eq v1, v3, :cond_15

    array-length v0, v0

    if-ne v0, v2, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be 128/256 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v0, v0

    if-lt v0, v2, :cond_d6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v1, v0

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2e

    new-array v1, v3, [B

    array-length v5, v0

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v5, v0

    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    :cond_2e
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v1, v0

    if-ge v1, v3, :cond_44

    new-array v1, v3, [B

    array-length v5, v0

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v5, v0

    array-length v6, v1

    array-length v7, v0

    sub-int/2addr v6, v7

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    :cond_44
    iput v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    iput v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    const/16 v0, 0xa00

    new-array v1, v0, [I

    move v5, v4

    :goto_4d
    if-ge v5, v3, :cond_64

    shr-int/lit8 v6, v5, 0x2

    aget v7, v1, v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    aget-byte v8, v8, v5

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v5, 0x3

    mul-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_64
    move v5, v4

    :goto_65
    if-ge v5, v3, :cond_7e

    shr-int/lit8 v6, v5, 0x2

    add-int/lit8 v6, v6, 0x8

    aget v7, v1, v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    aget-byte v8, v8, v5

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v5, 0x3

    mul-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    :cond_7e
    :goto_7e
    if-ge v2, v0, :cond_b8

    add-int/lit8 v3, v2, -0x2

    aget v3, v1, v3

    add-int/lit8 v5, v2, -0xf

    aget v5, v1, v5

    const/16 v6, 0x11

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v6

    const/16 v7, 0x13

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v7

    xor-int/2addr v6, v7

    ushr-int/lit8 v3, v3, 0xa

    xor-int/2addr v3, v6

    add-int/lit8 v6, v2, -0x7

    aget v6, v1, v6

    add-int/2addr v3, v6

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v6

    const/16 v7, 0x12

    invoke-static {v5, v7}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v7

    xor-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x10

    aget v5, v1, v5

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_b8
    const/16 v0, 0x200

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    const/16 v3, 0x400

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x600

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v4

    :goto_c9
    const/16 v1, 0x1000

    if-ge v0, v1, :cond_d3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->step()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    :cond_d3
    iput v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    return-void

    :cond_d6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The IV must be at least 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    and-int/lit16 v1, v0, 0x3ff

    const/16 v2, 0x17

    const/16 v3, 0xa

    const/16 v4, 0x400

    if-ge v0, v4, :cond_62

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit8 v4, v1, -0x3

    and-int/lit16 v4, v4, 0x3ff

    aget v4, v0, v4

    add-int/lit16 v5, v1, -0x3ff

    and-int/lit16 v5, v5, 0x3ff

    aget v5, v0, v5

    aget v6, v0, v1

    add-int/lit8 v7, v1, -0xa

    and-int/lit16 v7, v7, 0x3ff

    aget v7, v0, v7

    invoke-static {v4, v3}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v3

    invoke-static {v5, v2}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v7, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    xor-int v3, v4, v5

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v2, v3

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    aput v6, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit8 v3, v1, -0xc

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v0, v3

    and-int/lit16 v4, v3, 0xff

    aget v4, v2, v4

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x200

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x300

    aget v2, v2, v3

    add-int/2addr v4, v2

    aget v0, v0, v1

    goto :goto_b7

    :cond_62
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit8 v4, v1, -0x3

    and-int/lit16 v4, v4, 0x3ff

    aget v4, v0, v4

    add-int/lit16 v5, v1, -0x3ff

    and-int/lit16 v5, v5, 0x3ff

    aget v5, v0, v5

    aget v6, v0, v1

    add-int/lit8 v7, v1, -0xa

    and-int/lit16 v7, v7, 0x3ff

    aget v7, v0, v7

    invoke-static {v4, v3}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v3

    invoke-static {v5, v2}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v7, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    xor-int v3, v4, v5

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v2, v3

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    aput v6, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit8 v3, v1, -0xc

    and-int/lit16 v3, v3, 0x3ff

    aget v3, v0, v3

    and-int/lit16 v4, v3, 0xff

    aget v4, v2, v4

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x200

    aget v5, v2, v5

    add-int/2addr v4, v5

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x300

    aget v2, v2, v3

    add-int/2addr v4, v2

    aget v0, v0, v1

    :goto_b7
    xor-int/2addr v0, v4

    iget v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x7ff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "HC-256"

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

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_18

    :cond_12
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    move-object p1, p2

    :goto_18
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2b

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->init()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->initialised:Z

    return-void

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter passed to HC256 init - "

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

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->initialised:Z

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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->getByte()B

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

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->getAlgorithmName()Ljava/lang/String;

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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->init()V

    return-void
.end method

.method public returnByte(B)B
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->getByte()B

    move-result v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method
