.class public Lorg/bouncycastle/crypto/prng/FixedSecureRandom;
.super Ljava/security/SecureRandom;


# instance fields
.field private _data:[B

.field private _index:I

.field private _intPad:I


# direct methods
.method public constructor <init>(Z[B)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method public constructor <init>(Z[[B)V
    .registers 6

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_9
    array-length v2, p2

    if-eq v1, v2, :cond_1c

    :try_start_c
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t save value array."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    array-length p1, p1

    rem-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    :cond_2b
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method public constructor <init>([[B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    return-void
.end method

.method private nextValue()I
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .registers 2

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method public isExhausted()Z
    .registers 3

    iget v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public nextBytes([B)V
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_index:I

    return-void
.end method

.method public nextInt()I
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/lit8 v0, v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_19

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    goto :goto_20

    :cond_19
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    :goto_20
    iget v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    if-ne v1, v2, :cond_28

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    goto :goto_2d

    :cond_28
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    or-int/2addr v0, v1

    :goto_2d
    return v0
.end method

.method public nextLong()J
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method
