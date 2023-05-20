.class public Lorg/bouncycastle/crypto/digests/SM3Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final DIGEST_LENGTH:I = 0x20

.field private static final T:[I


# instance fields
.field private V:[I

.field private W:[I

.field private inwords:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x40

    new-array v1, v0, [I

    sput-object v1, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    const/4 v1, 0x0

    :goto_7
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1b

    const v2, 0x79cc4519

    sget-object v3, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    shl-int v4, v2, v1

    rsub-int/lit8 v5, v1, 0x20

    ushr-int/2addr v2, v5

    or-int/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    :goto_1b
    if-ge v2, v0, :cond_30

    rem-int/lit8 v1, v2, 0x20

    const v3, 0x7a879d8a

    sget-object v4, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    shl-int v5, v3, v1

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, v3, v1

    or-int/2addr v1, v5

    aput v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_30
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SM3Digest;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SM3Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    return-void
.end method

.method private FF0(III)I
    .registers 4

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private FF1(III)I
    .registers 5

    and-int v0, p1, p2

    and-int/2addr p1, p3

    or-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private GG0(III)I
    .registers 4

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private GG1(III)I
    .registers 4

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private P0(I)I
    .registers 5

    shl-int/lit8 v0, p1, 0x9

    ushr-int/lit8 v1, p1, 0x17

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x11

    ushr-int/lit8 v2, p1, 0xf

    or-int/2addr v1, v2

    xor-int/2addr p1, v0

    xor-int/2addr p1, v1

    return p1
.end method

.method private P1(I)I
    .registers 5

    shl-int/lit8 v0, p1, 0xf

    ushr-int/lit8 v1, p1, 0x11

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x17

    ushr-int/lit8 v2, p1, 0x9

    or-int/2addr v1, v2

    xor-int/2addr p1, v0

    xor-int/2addr p1, v1

    return p1
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V
    .registers 6

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->finish()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->reset()V

    const/16 p1, 0x20

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "SM3"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .registers 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/16 v3, 0x10

    if-ge v2, v3, :cond_13

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_13
    move v2, v3

    :goto_14
    const/16 v4, 0x44

    if-ge v2, v4, :cond_47

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v5, v2, -0x3

    aget v5, v4, v5

    shl-int/lit8 v6, v5, 0xf

    ushr-int/lit8 v5, v5, 0x11

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, -0xd

    aget v6, v4, v6

    shl-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v6, v6, 0x19

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, -0x10

    aget v7, v4, v7

    add-int/lit8 v8, v2, -0x9

    aget v8, v4, v8

    xor-int/2addr v7, v8

    xor-int/2addr v5, v7

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P1(I)I

    move-result v5

    xor-int/2addr v5, v6

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v7, v2, -0x6

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_47
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v4, v2, v1

    const/4 v5, 0x1

    aget v6, v2, v5

    const/4 v7, 0x2

    aget v8, v2, v7

    const/4 v9, 0x3

    aget v10, v2, v9

    const/4 v11, 0x4

    aget v12, v2, v11

    const/4 v13, 0x5

    aget v14, v2, v13

    const/4 v15, 0x6

    aget v16, v2, v15

    const/16 v17, 0x7

    aget v2, v2, v17

    move/from16 v18, v2

    move/from16 v15, v16

    move v2, v1

    move/from16 v24, v6

    move v6, v4

    move/from16 v4, v24

    move/from16 v25, v10

    move v10, v8

    move/from16 v8, v25

    move/from16 v26, v14

    move v14, v12

    move/from16 v12, v26

    :goto_75
    if-ge v2, v3, :cond_c9

    shl-int/lit8 v19, v6, 0xc

    ushr-int/lit8 v20, v6, 0x14

    or-int v19, v19, v20

    add-int v20, v19, v14

    sget-object v21, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    aget v21, v21, v2

    add-int v20, v20, v21

    shl-int/lit8 v21, v20, 0x7

    ushr-int/lit8 v20, v20, 0x19

    or-int v20, v21, v20

    xor-int v19, v20, v19

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    aget v22, v3, v2

    add-int/lit8 v23, v2, 0x4

    aget v3, v3, v23

    xor-int v3, v22, v3

    invoke-direct {v0, v6, v4, v10}, Lorg/bouncycastle/crypto/digests/SM3Digest;->FF0(III)I

    move-result v23

    add-int v23, v23, v8

    add-int v23, v23, v19

    add-int v3, v23, v3

    invoke-direct {v0, v14, v12, v15}, Lorg/bouncycastle/crypto/digests/SM3Digest;->GG0(III)I

    move-result v8

    add-int v8, v8, v18

    add-int v8, v8, v20

    add-int v8, v8, v22

    shl-int/lit8 v18, v4, 0x9

    ushr-int/lit8 v4, v4, 0x17

    or-int v4, v18, v4

    shl-int/lit8 v18, v12, 0x13

    ushr-int/lit8 v12, v12, 0xd

    or-int v12, v18, v12

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v8

    add-int/lit8 v2, v2, 0x1

    move/from16 v18, v15

    move v15, v12

    move v12, v14

    move v14, v8

    move v8, v10

    move v10, v4

    move v4, v6

    move v6, v3

    const/16 v3, 0x10

    goto :goto_75

    :cond_c9
    move v3, v4

    move v4, v6

    move v6, v8

    move v8, v10

    move v10, v12

    move v12, v14

    const/16 v2, 0x10

    :goto_d1
    const/16 v14, 0x40

    if-ge v2, v14, :cond_127

    shl-int/lit8 v14, v4, 0xc

    ushr-int/lit8 v19, v4, 0x14

    or-int v14, v14, v19

    add-int v19, v14, v12

    sget-object v20, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    aget v20, v20, v2

    add-int v19, v19, v20

    shl-int/lit8 v20, v19, 0x7

    ushr-int/lit8 v19, v19, 0x19

    or-int v19, v20, v19

    xor-int v14, v19, v14

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    aget v21, v13, v2

    add-int/lit8 v22, v2, 0x4

    aget v13, v13, v22

    xor-int v13, v21, v13

    invoke-direct {v0, v4, v3, v8}, Lorg/bouncycastle/crypto/digests/SM3Digest;->FF1(III)I

    move-result v22

    add-int v22, v22, v6

    add-int v22, v22, v14

    add-int v6, v22, v13

    invoke-direct {v0, v12, v10, v15}, Lorg/bouncycastle/crypto/digests/SM3Digest;->GG1(III)I

    move-result v13

    add-int v13, v13, v18

    add-int v13, v13, v19

    add-int v13, v13, v21

    shl-int/lit8 v14, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v14

    shl-int/lit8 v14, v10, 0x13

    ushr-int/lit8 v10, v10, 0xd

    or-int/2addr v10, v14

    invoke-direct {v0, v13}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v13

    add-int/lit8 v2, v2, 0x1

    move/from16 v18, v15

    move v15, v10

    move v10, v12

    move v12, v13

    const/4 v13, 0x5

    move/from16 v24, v8

    move v8, v3

    move v3, v4

    move v4, v6

    move/from16 v6, v24

    goto :goto_d1

    :cond_127
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v13, v2, v1

    xor-int/2addr v4, v13

    aput v4, v2, v1

    aget v4, v2, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    aget v3, v2, v7

    xor-int/2addr v3, v8

    aput v3, v2, v7

    aget v3, v2, v9

    xor-int/2addr v3, v6

    aput v3, v2, v9

    aget v3, v2, v11

    xor-int/2addr v3, v12

    aput v3, v2, v11

    const/4 v3, 0x5

    aget v4, v2, v3

    xor-int/2addr v4, v10

    aput v4, v2, v3

    const/4 v3, 0x6

    aget v4, v2, v3

    xor-int/2addr v4, v15

    aput v4, v2, v3

    aget v3, v2, v17

    xor-int v3, v3, v18

    aput v3, v2, v17

    iput v1, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method

.method protected processLength(J)V
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-le v0, v2, :cond_12

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->processBlock()V

    :cond_12
    :goto_12
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    if-ge v0, v2, :cond_1f

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    goto :goto_12

    :cond_1f
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    long-to-int p1, p1

    aput p1, v1, v0

    return-void
.end method

.method protected processWord([BI)V
    .registers 6

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    iget p1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    if-lt p1, v2, :cond_31

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->processBlock()V

    :cond_31
    return-void
.end method

.method public reset()V
    .registers 5

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x0

    const v2, 0x7380166f

    aput v2, v0, v1

    const/4 v2, 0x1

    const v3, 0x4914b2b9

    aput v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x172442d7

    aput v3, v0, v2

    const/4 v2, 0x3

    const v3, -0x2575fa00

    aput v3, v0, v2

    const/4 v2, 0x4

    const v3, -0x5690cf44

    aput v3, v0, v2

    const/4 v2, 0x5

    const v3, 0x163138aa

    aput v3, v0, v2

    const/4 v2, 0x6

    const v3, -0x1c7211b3

    aput v3, v0, v2

    const/4 v2, 0x7

    const v3, -0x4f04f1b2

    aput v3, v0, v2

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 2

    check-cast p1, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SM3Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    return-void
.end method
