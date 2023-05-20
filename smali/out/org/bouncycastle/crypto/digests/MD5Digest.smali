.class public Lorg/bouncycastle/crypto/digests/MD5Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;

# interfaces
.implements Lorg/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S11:I = 0x7

.field private static final S12:I = 0xc

.field private static final S13:I = 0x11

.field private static final S14:I = 0x16

.field private static final S21:I = 0x5

.field private static final S22:I = 0x9

.field private static final S23:I = 0xe

.field private static final S24:I = 0x14

.field private static final S31:I = 0x4

.field private static final S32:I = 0xb

.field private static final S33:I = 0x10

.field private static final S34:I = 0x17

.field private static final S41:I = 0x6

.field private static final S42:I = 0xa

.field private static final S43:I = 0xf

.field private static final S44:I = 0x15


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/MD5Digest;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD5Digest;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/4 v0, 0x0

    :goto_30
    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-eq v0, v1, :cond_43

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x24

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_43
    return-void
.end method

.method private F(III)I
    .registers 4

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private G(III)I
    .registers 4

    and-int/2addr p1, p3

    not-int p3, p3

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private H(III)I
    .registers 4

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private K(III)I
    .registers 4

    not-int p3, p3

    or-int/2addr p1, p3

    xor-int/2addr p1, p2

    return p1
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/MD5Digest;)V
    .registers 6

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    return-void
.end method

.method private rotateLeft(II)I
    .registers 4

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private unpackWord(I[BI)V
    .registers 6

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD5Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->reset()V

    const/16 p1, 0x10

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "MD5"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public getEncodedState()[B
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x24

    new-array v0, v0, [B

    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/4 v1, 0x0

    :goto_2f
    iget v2, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-eq v1, v2, :cond_41

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x24

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_41
    return-object v0
.end method

.method protected processBlock()V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iget v3, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iget v4, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v1, v5

    const v5, -0x28955b88

    add-int/2addr v1, v5

    const/4 v5, 0x7

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v4, v7

    const v7, -0x173848aa

    add-int/2addr v4, v7

    const/16 v7, 0xc

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v3, v9

    const v9, 0x242070db

    add-int/2addr v3, v9

    const/16 v9, 0x11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    add-int/2addr v2, v11

    const v11, -0x3e423112

    add-int/2addr v2, v11

    const/16 v11, 0x16

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v13, 0x4

    aget v11, v11, v13

    add-int/2addr v1, v11

    const v11, -0xa83f051

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v14, 0x5

    aget v11, v11, v14

    add-int/2addr v4, v11

    const v11, 0x4787c62a

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v15, 0x6

    aget v11, v11, v15

    add-int/2addr v3, v11

    const v11, -0x57cfb9ed

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v5

    add-int/2addr v2, v11

    const v11, -0x2b96aff

    add-int/2addr v2, v11

    const/16 v11, 0x16

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v16, 0x8

    aget v11, v11, v16

    add-int/2addr v1, v11

    const v11, 0x698098d8

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v10, 0x9

    aget v11, v11, v10

    add-int/2addr v4, v11

    const v11, -0x74bb0851

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v12, 0xa

    aget v11, v11, v12

    add-int/2addr v3, v11

    const v11, -0xa44f

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v13, 0xb

    aget v11, v11, v13

    add-int/2addr v2, v11

    const v11, -0x76a32842

    add-int/2addr v2, v11

    const/16 v11, 0x16

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v7

    add-int/2addr v1, v11

    const v11, 0x6b901122

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v19, 0xd

    aget v11, v11, v19

    add-int/2addr v4, v11

    const v11, -0x2678e6d

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xe

    aget v11, v11, v7

    add-int/2addr v3, v11

    const v11, -0x5986bc72

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v11, 0xf

    aget v9, v9, v11

    add-int/2addr v2, v9

    const v9, 0x49b40821

    add-int/2addr v2, v9

    const/16 v9, 0x16

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v8

    add-int/2addr v1, v9

    const v9, -0x9e1da9e

    add-int/2addr v1, v9

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v15

    add-int/2addr v4, v9

    const v9, -0x3fbf4cc0

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v13

    add-int/2addr v3, v9

    const v9, 0x265e5a51

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v6

    add-int/2addr v2, v9

    const v9, -0x16493856

    add-int/2addr v2, v9

    const/16 v9, 0x14

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v14

    add-int/2addr v1, v9

    const v9, -0x29d0efa3

    add-int/2addr v1, v9

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v12

    add-int/2addr v4, v9

    const v9, 0x2441453

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v11

    add-int/2addr v3, v9

    const v9, -0x275e197f

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v18, 0x4

    aget v9, v9, v18

    add-int/2addr v2, v9

    const v9, -0x182c0438

    add-int/2addr v2, v9

    const/16 v9, 0x14

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v10

    add-int/2addr v1, v9

    const v9, 0x21e1cde6

    add-int/2addr v1, v9

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v7

    add-int/2addr v4, v9

    const v9, -0x3cc8f82a

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v17, 0x3

    aget v9, v9, v17

    add-int/2addr v3, v9

    const v9, -0xb2af279

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v20, 0x8

    aget v9, v9, v20

    add-int/2addr v2, v9

    const v9, 0x455a14ed

    add-int/2addr v2, v9

    const/16 v9, 0x14

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v20, 0xd

    aget v9, v9, v20

    add-int/2addr v1, v9

    const v9, -0x561c16fb

    add-int/2addr v1, v9

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v16, 0x2

    aget v9, v9, v16

    add-int/2addr v4, v9

    const v9, -0x3105c08

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v5

    add-int/2addr v3, v9

    const v9, 0x676f02d9

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v19, 0xc

    aget v9, v9, v19

    add-int/2addr v2, v9

    const v9, -0x72d5b376

    add-int/2addr v2, v9

    const/16 v9, 0x14

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v14

    add-int/2addr v1, v9

    const v9, -0x5c6be

    add-int/2addr v1, v9

    const/4 v9, 0x4

    invoke-direct {v0, v1, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v20, 0x8

    aget v9, v9, v20

    add-int/2addr v4, v9

    const v9, -0x788e097f

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v13

    add-int/2addr v3, v9

    const v9, 0x6d9d6122

    add-int/2addr v3, v9

    const/16 v9, 0x10

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v7

    add-int/2addr v2, v9

    const v9, -0x21ac7f4

    add-int/2addr v2, v9

    const/16 v9, 0x17

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v8

    add-int/2addr v1, v9

    const v9, -0x5b4115bc

    add-int/2addr v1, v9

    const/4 v9, 0x4

    invoke-direct {v0, v1, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v18

    add-int v4, v4, v18

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v9

    add-int/2addr v4, v8

    const v8, 0x4bdecfa9    # 2.9204306E7f

    add-int/2addr v4, v8

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v5

    add-int/2addr v3, v8

    const v8, -0x944b4a0

    add-int/2addr v3, v8

    const/16 v8, 0x10

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v8

    add-int/2addr v2, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v12

    add-int/2addr v2, v8

    const v8, -0x41404390

    add-int/2addr v2, v8

    const/16 v8, 0x17

    invoke-direct {v0, v2, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v9, 0xd

    aget v8, v8, v9

    add-int/2addr v1, v8

    const v8, 0x289b7ec6

    add-int/2addr v1, v8

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v6

    add-int/2addr v4, v8

    const v8, -0x155ed806

    add-int/2addr v4, v8

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    add-int/2addr v3, v8

    const v8, -0x2b10cf7b

    add-int/2addr v3, v8

    const/16 v8, 0x10

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v8

    add-int/2addr v2, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v15

    add-int/2addr v2, v8

    const v8, 0x4881d05    # 3.2000097E-36f

    add-int/2addr v2, v8

    const/16 v8, 0x17

    invoke-direct {v0, v2, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v10

    add-int/2addr v1, v8

    const v8, -0x262b2fc7

    add-int/2addr v1, v8

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v9, 0xc

    aget v8, v8, v9

    add-int/2addr v4, v8

    const v8, -0x1924661b

    add-int/2addr v4, v8

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v11

    add-int/2addr v3, v8

    const v8, 0x1fa27cf8

    add-int/2addr v3, v8

    const/16 v8, 0x10

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v8

    add-int/2addr v2, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    add-int/2addr v2, v8

    const v8, -0x3b53a99b

    add-int/2addr v2, v8

    const/16 v8, 0x17

    invoke-direct {v0, v2, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v6

    add-int/2addr v1, v8

    const v8, -0xbd6ddbc

    add-int/2addr v1, v8

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v8, v5

    add-int/2addr v4, v5

    const v5, 0x432aff97

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v7

    add-int/2addr v3, v5

    const v5, -0x546bdc59

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v14

    add-int/2addr v2, v5

    const v5, -0x36c5fc7

    add-int/2addr v2, v5

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xc

    aget v5, v5, v7

    add-int/2addr v1, v5

    const v5, 0x655b59c3

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x3

    aget v5, v5, v7

    add-int/2addr v4, v5

    const v5, -0x70f3336e

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v12

    add-int/2addr v3, v5

    const v5, -0x100b83

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    add-int/2addr v2, v5

    const v5, -0x7a7ba22f

    add-int/2addr v2, v5

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0x8

    aget v5, v5, v7

    add-int/2addr v1, v5

    const v5, 0x6fa87e4f

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v11

    add-int/2addr v4, v5

    const v5, -0x1d31920

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v15

    add-int/2addr v3, v5

    const v5, -0x5cfebcec

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v7, 0xd

    aget v5, v5, v7

    add-int/2addr v2, v5

    const v5, 0x4e0811a1    # 5.7071418E8f

    add-int/2addr v2, v5

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x4

    aget v5, v5, v7

    add-int/2addr v1, v5

    const v5, -0x8ac817e

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v13

    add-int/2addr v4, v5

    const v5, -0x42c50dcb

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x2

    aget v5, v5, v7

    add-int/2addr v3, v5

    const v5, 0x2ad7d2bb

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v10

    add-int/2addr v2, v5

    const v5, -0x14792c6f

    add-int/2addr v2, v5

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    iget v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    add-int/2addr v5, v1

    iput v5, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/2addr v1, v4

    iput v1, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    iput v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    move v1, v6

    :goto_546
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_550

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_546

    :cond_550
    return-void
.end method

.method protected processLength(J)V
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long/2addr p1, v2

    long-to-int p1, p1

    aput p1, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v2

    aput p1, v0, v1

    iget p1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-ne p1, v4, :cond_31

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    :cond_31
    return-void
.end method

.method public reset()V
    .registers 5

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    move v1, v0

    :goto_1b
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_25

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_25
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 2

    check-cast p1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD5Digest;)V

    return-void
.end method
