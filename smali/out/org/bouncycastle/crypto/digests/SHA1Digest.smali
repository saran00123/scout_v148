.class public Lorg/bouncycastle/crypto/digests/SHA1Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;

# interfaces
.implements Lorg/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x14

.field private static final Y1:I = 0x5a827999

.field private static final Y2:I = 0x6ed9eba1

.field private static final Y3:I = -0x70e44324

.field private static final Y4:I = -0x359d3e2a


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA1Digest;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SHA1Digest;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/16 v0, 0x24

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/4 v0, 0x0

    :goto_3a
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-eq v0, v1, :cond_4d

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x28

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_4d
    return-void
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/SHA1Digest;)V
    .registers 6

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    return-void
.end method

.method private f(III)I
    .registers 4

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private g(III)I
    .registers 5

    and-int v0, p1, p2

    and-int/2addr p1, p3

    or-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private h(III)I
    .registers 4

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA1Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    const/16 p1, 0x14

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-1"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public getEncodedState()[B
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x28

    new-array v0, v0, [B

    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v2, 0x24

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/4 v1, 0x0

    :goto_36
    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-eq v1, v2, :cond_48

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x28

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_48
    return-object v0
.end method

.method protected processBlock()V
    .registers 15

    const/16 v0, 0x10

    move v1, v0

    :goto_3
    const/16 v2, 0x50

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v3, v1, -0x3

    aget v3, v2, v3

    add-int/lit8 v4, v1, -0x8

    aget v4, v2, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v1, -0xe

    aget v4, v2, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x10

    aget v4, v2, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_26
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iget v5, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/4 v6, 0x0

    move v7, v4

    move v8, v6

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v8

    :goto_37
    const/4 v9, 0x4

    if-ge v1, v9, :cond_ba

    shl-int/lit8 v9, v2, 0x5

    ushr-int/lit8 v10, v2, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v3, v4, v7}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v8, 0x1

    aget v8, v10, v8

    add-int/2addr v9, v8

    const v8, 0x5a827999

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    shl-int/lit8 v9, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    shl-int/lit8 v9, v5, 0x5

    ushr-int/lit8 v10, v5, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v7, v9

    shl-int/lit8 v9, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v9

    shl-int/lit8 v9, v7, 0x5

    ushr-int/lit8 v10, v7, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v4, v9

    shl-int/lit8 v9, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v9

    shl-int/lit8 v9, v4, 0x5

    ushr-int/lit8 v10, v4, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v7, v5, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v3, v9

    shl-int/lit8 v9, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v9

    shl-int/lit8 v9, v3, 0x5

    ushr-int/lit8 v10, v3, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v4, v7, v5}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v11

    goto/16 :goto_37

    :cond_ba
    move v1, v6

    :goto_bb
    if-ge v1, v9, :cond_13d

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v7}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x1

    aget v8, v11, v8

    add-int/2addr v10, v8

    const v8, 0x6ed9eba1

    add-int/2addr v10, v8

    add-int/2addr v5, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v7, v10

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v10

    shl-int/lit8 v10, v7, 0x5

    ushr-int/lit8 v11, v7, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v4, v10

    shl-int/lit8 v10, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v10

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v7, v5, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v3, v10

    shl-int/lit8 v10, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v10

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v7, v5}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v2, v10

    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v12

    goto/16 :goto_bb

    :cond_13d
    move v1, v6

    :goto_13e
    if-ge v1, v9, :cond_1c0

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v7}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x1

    aget v8, v11, v8

    add-int/2addr v10, v8

    const v8, -0x70e44324

    add-int/2addr v10, v8

    add-int/2addr v5, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v7, v10

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v10

    shl-int/lit8 v10, v7, 0x5

    ushr-int/lit8 v11, v7, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v4, v10

    shl-int/lit8 v10, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v10

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v7, v5, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v3, v10

    shl-int/lit8 v10, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v10

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v7, v5}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v2, v10

    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v12

    goto/16 :goto_13e

    :cond_1c0
    move v1, v6

    :goto_1c1
    const/4 v9, 0x3

    if-gt v1, v9, :cond_244

    shl-int/lit8 v9, v2, 0x5

    ushr-int/lit8 v10, v2, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v3, v4, v7}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v8, 0x1

    aget v8, v10, v8

    add-int/2addr v9, v8

    const v8, -0x359d3e2a    # -3715189.5f

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    shl-int/lit8 v9, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    shl-int/lit8 v9, v5, 0x5

    ushr-int/lit8 v10, v5, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v7, v9

    shl-int/lit8 v9, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v9

    shl-int/lit8 v9, v7, 0x5

    ushr-int/lit8 v10, v7, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v4, v9

    shl-int/lit8 v9, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v9

    shl-int/lit8 v9, v4, 0x5

    ushr-int/lit8 v10, v4, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v7, v5, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v3, v9

    shl-int/lit8 v9, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v9

    shl-int/lit8 v9, v3, 0x5

    ushr-int/lit8 v10, v3, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v4, v7, v5}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v11

    goto/16 :goto_1c1

    :cond_244
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/2addr v1, v7

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v6, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    move v1, v6

    :goto_260
    if-ge v1, v0, :cond_269

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_260

    :cond_269
    return-void
.end method

.method protected processLength(J)V
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    long-to-int p1, p1

    aput p1, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .registers 6

    aget-byte v0, p1, p2

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

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-ne v0, v2, :cond_2d

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    :cond_2d
    return-void
.end method

.method public reset()V
    .registers 5

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    move v1, v0

    :goto_20
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_2a

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2a
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 2

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SHA1Digest;)V

    return-void
.end method
