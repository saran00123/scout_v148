.class public abstract Lorg/bouncycastle/math/ec/rfc8032/Ed448;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$Algorithm;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;
    }
.end annotation


# static fields
.field private static final B_x:[I

.field private static final B_y:[I

.field private static final C_d:I = -0x98a9

.field private static final DOM4_PREFIX:[B

.field private static final L:[I

.field private static final L4_0:I = 0x29eec34

.field private static final L4_1:I = 0x1cf5b55

.field private static final L4_2:I = 0x9c2ab72

.field private static final L4_3:I = 0xf635c8e

.field private static final L4_4:I = 0x5bf7a4c

.field private static final L4_5:I = 0xd944a72

.field private static final L4_6:I = 0x8eec492

.field private static final L4_7:I = 0x20cd7705

.field private static final L_0:I = 0x4a7bb0d

.field private static final L_1:I = 0x873d6d5

.field private static final L_2:I = 0xa70aadc

.field private static final L_3:I = 0x3d8d723

.field private static final L_4:I = 0x96fde93

.field private static final L_5:I = 0xb65129c

.field private static final L_6:I = 0x63bb124

.field private static final L_7:I = 0x8335dc1

.field private static final M26L:J = 0x3ffffffL

.field private static final M28L:J = 0xfffffffL

.field private static final M32L:J = 0xffffffffL

.field private static final P:[I

.field private static final POINT_BYTES:I = 0x39

.field private static final PRECOMP_BLOCKS:I = 0x5

.field private static final PRECOMP_MASK:I = 0xf

.field private static final PRECOMP_POINTS:I = 0x10

.field private static final PRECOMP_SPACING:I = 0x12

.field private static final PRECOMP_TEETH:I = 0x5

.field public static final PREHASH_SIZE:I = 0x40

.field public static final PUBLIC_KEY_SIZE:I = 0x39

.field private static final SCALAR_BYTES:I = 0x39

.field private static final SCALAR_INTS:I = 0xe

.field public static final SECRET_KEY_SIZE:I = 0x39

.field public static final SIGNATURE_SIZE:I = 0x72

.field private static final WNAF_WIDTH_BASE:I = 0x7

.field private static precompBase:[I

.field private static precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

.field private static final precompLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_36

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->DOM4_PREFIX:[B

    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_3e

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->L:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_7e

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_x:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_y:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    return-void

    :array_36
    .array-data 1
        0x53t
        0x69t
        0x67t
        0x45t
        0x64t
        0x34t
        0x34t
        0x38t
    .end array-data

    :array_3e
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_5e
    .array-data 4
        -0x54a7bb0d
        0x2378c292
        -0x723a70ab
        0x216cc272
        -0x5129c970
        -0x3bb124b7
        0x7cca23e9
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data

    :array_7e
    .array-data 4
        0x70cc05e
        0x26a82bc
        0x938e26
        0x80e18b0
        0x511433b
        0xf72ab66
        0x412ae1a
        0xa3d3a46
        0xa6de324
        0xf1767e
        0x4657047
        0x36da9e1
        0x5a622bf
        0xed221d1
        0x66bed0d
        0x4f1970c
    .end array-data

    :array_a2
    .array-data 4
        0x230fa14
        0x8795bf
        0x7c8ad98
        0x132c4ed
        0x9c4fdbd
        0x1ce67c3
        0x73ad3ff
        0x5a0c2d
        0x7789c1e
        0xa398408
        0xa73736c
        0xc7624be
        0x3756c9
        0x2488762
        0x16eb6bc
        0x693f467
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateS([B[B[B)[B
    .registers 6

    const/16 v0, 0x1c

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    const/16 p0, 0xe

    new-array v2, p0, [I

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    new-array p1, p0, [I

    invoke-static {p2, v1, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    invoke-static {p0, v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->mulAddTo(I[I[I[I)I

    const/16 p0, 0x72

    new-array p0, p0, [B

    :goto_1b
    array-length p1, v0

    if-ge v1, p1, :cond_28

    aget p1, v0, v1

    mul-int/lit8 p2, v1, 0x4

    invoke-static {p1, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode32(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_28
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->reduceScalar([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static checkContextVar([B)Z
    .registers 2

    if-eqz p0, :cond_9

    array-length p0, p0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static checkPoint([I[I)I
    .registers 5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->subOne([I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result p0

    return p0
.end method

.method private static checkPoint([I[I[I)I
    .registers 7

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {p2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result p0

    return p0
.end method

.method private static checkPointVar([B)Z
    .registers 4

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0xe

    new-array v2, v0, [I

    invoke-static {p0, v1, v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI[III)V

    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static checkScalarVar([B)Z
    .registers 4

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0xe

    new-array v2, v0, [I

    invoke-static {p0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->L:[I

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static createPrehash()Lorg/bouncycastle/crypto/Xof;
    .registers 1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    return-object v0
.end method

.method private static createXof()Lorg/bouncycastle/crypto/Xof;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    return-object v0
.end method

.method private static decode16([BI)I
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static decode24([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method private static decode32([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static decode32([BI[III)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_11

    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method private static decodePointVar([BIZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Z
    .registers 7

    add-int/lit8 v0, p1, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    return v0

    :cond_e
    const/16 p1, 0x38

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0x80

    ushr-int/lit8 v1, v1, 0x7

    aget-byte v2, p0, p1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->decode([BI[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object p0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object p1

    iget-object v2, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    const v2, 0x98a9

    invoke-static {p0, v2, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {p0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->addOne([I)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->addOne([I)V

    iget-object v2, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p0, p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqrtRatioVar([I[I[I)Z

    move-result p0

    if-nez p0, :cond_47

    return v0

    :cond_47
    iget-object p0, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    const/4 p0, 0x1

    if-ne v1, p0, :cond_58

    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZeroVar([I)Z

    move-result p1

    if-eqz p1, :cond_58

    return v0

    :cond_58
    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    aget p1, p1, v0

    and-int/2addr p1, p0

    if-eq v1, p1, :cond_60

    move v0, p0

    :cond_60
    xor-int p1, p2, v0

    if-eqz p1, :cond_6b

    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object p2, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    :cond_6b
    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    return p0
.end method

.method private static decodeScalar([BI[I)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-static {p0, p1, p2, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI[III)V

    return-void
.end method

.method private static dom4(Lorg/bouncycastle/crypto/Xof;B[B)V
    .registers 8

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->DOM4_PREFIX:[B

    array-length v1, v0

    add-int/lit8 v2, v1, 0x2

    array-length v3, p2

    add-int/2addr v3, v2

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p1, v3, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, p2

    int-to-byte p1, p1

    aput-byte p1, v3, v1

    array-length p1, p2

    invoke-static {p2, v4, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v3

    invoke-interface {p0, v3, v4, p1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    return-void
.end method

.method private static encode24(I[BI)V
    .registers 4

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static encode32(I[BI)V
    .registers 4

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static encode56(J[BI)V
    .registers 5

    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode32(I[BI)V

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p3, p3, 0x4

    invoke-static {p0, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode24(I[BI)V

    return-void
.end method

.method private static encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;[BI)I
    .registers 6

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->inv([I[I)V

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPoint([I[I)I

    move-result p0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->encode([I[BI)V

    add-int/lit8 p2, p2, 0x39

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x0

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    return p0
.end method

.method public static generatePrivateKey(Ljava/security/SecureRandom;[B)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public static generatePublicKey([BI[BI)V
    .registers 7

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    const/16 v1, 0x72

    new-array v1, v1, [B

    const/16 v2, 0x39

    invoke-interface {v0, p0, p1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length p0, v1

    const/4 p1, 0x0

    invoke-interface {v0, v1, p1, p0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array p0, v2, [B

    invoke-static {v1, p1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    invoke-static {p0, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    return-void
.end method

.method private static getWindow4([II)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    aget p0, p0, v0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static getWnafVar([II)[B
    .registers 12

    const/16 v0, 0x1c

    new-array v0, v0, [I

    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0xe

    move v4, v2

    :goto_9
    add-int/lit8 v3, v3, -0x1

    const/16 v5, 0x10

    if-ltz v3, :cond_1f

    aget v6, p0, v3

    add-int/lit8 v1, v1, -0x1

    ushr-int/lit8 v7, v6, 0x10

    shl-int/2addr v4, v5

    or-int/2addr v4, v7

    aput v4, v0, v1

    add-int/lit8 v1, v1, -0x1

    aput v6, v0, v1

    move v4, v6

    goto :goto_9

    :cond_1f
    const/16 p0, 0x1bf

    new-array p0, p0, [B

    const/4 v1, 0x1

    shl-int v3, v1, p1

    add-int/lit8 v4, v3, -0x1

    ushr-int/lit8 v1, v3, 0x1

    move v3, v2

    move v6, v3

    :goto_2c
    array-length v7, v0

    if-ge v2, v7, :cond_53

    aget v7, v0, v2

    :goto_31
    if-ge v3, v5, :cond_4e

    ushr-int v8, v7, v3

    and-int/lit8 v9, v8, 0x1

    if-ne v9, v6, :cond_3c

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_3c
    and-int/2addr v8, v4

    add-int/2addr v8, v6

    and-int v6, v8, v1

    shl-int/lit8 v9, v6, 0x1

    sub-int/2addr v8, v9

    add-int/lit8 v9, p1, -0x1

    ushr-int/2addr v6, v9

    shl-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v3

    int-to-byte v8, v8

    aput-byte v8, p0, v9

    add-int/2addr v3, p1

    goto :goto_31

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x10

    goto :goto_2c

    :cond_53
    return-object p0
.end method

.method private static implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V
    .registers 16

    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    const/16 v0, 0x39

    invoke-interface {p0, p1, v0, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->reduceScalar([B)[B

    move-result-object v1

    new-array v3, v0, [B

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    invoke-interface {p0, v3, v2, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {p0, p3, p4, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length p3, p1

    invoke-interface {p0, p1, v2, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->reduceScalar([B)[B

    move-result-object p0

    invoke-static {v1, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->calculateS([B[B[B)[B

    move-result-object p0

    invoke-static {v3, v2, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p11, v0

    invoke-static {p0, v2, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static implSign([BI[BB[BII[BI)V
    .registers 22

    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v1

    const/16 v0, 0x72

    new-array v2, v0, [B

    const/16 v0, 0x39

    move-object v3, p0

    move v4, p1

    invoke-interface {v1, p0, p1, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array v3, v0, [B

    invoke-static {v2, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    new-array v0, v0, [B

    invoke-static {v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    const/4 v5, 0x0

    move-object v4, v0

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implSign([BI[BI[BB[BII[BI)V
    .registers 24

    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v1

    const/16 v0, 0x72

    new-array v2, v0, [B

    const/16 v0, 0x39

    move-object v3, p0

    move v4, p1

    invoke-interface {v1, p0, p1, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array v3, v0, [B

    invoke-static {v2, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implVerify([BI[BI[BB[BII)Z
    .registers 15

    invoke-static {p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v0

    if-eqz v0, :cond_70

    add-int/lit8 v0, p1, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/16 v2, 0x72

    add-int/2addr p1, v2

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    return v0

    :cond_1b
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkScalarVar([B)Z

    move-result p1

    if-nez p1, :cond_22

    return v0

    :cond_22
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/4 v4, 0x1

    invoke-static {p2, p3, v4, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BIZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Z

    move-result v5

    if-nez v5, :cond_30

    return v0

    :cond_30
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v5

    new-array v2, v2, [B

    invoke-static {v5, p5, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    const/16 p4, 0x39

    invoke-interface {v5, v1, v0, p4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v5, p2, p3, p4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v5, p6, p7, p8}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length p2, v2

    invoke-interface {v5, v2, v0, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->reduceScalar([B)[B

    move-result-object p2

    const/16 p3, 0xe

    new-array p5, p3, [I

    invoke-static {p0, v0, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    new-array p0, p3, [I

    invoke-static {p2, v0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    new-instance p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    invoke-direct {p2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p5, p0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultStrausVar([I[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    new-array p0, p4, [B

    invoke-static {p2, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;[BI)I

    move-result p1

    if-eqz p1, :cond_6f

    invoke-static {p0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_6f

    move v0, v4

    :cond_6f
    return v0

    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 12

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v6

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v8, v9, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v8, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v8, v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    const v8, 0x98a9

    invoke-static {v4, v8, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v4, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v8, p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, v8, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v4, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v3, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {v7, v1, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v7, v0, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v4, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v5, v7, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v4, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v5, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAddPrecomp(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 11

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v6

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v7, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->x:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v7, v8, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v7, v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    const v7, 0x98a9

    invoke-static {v3, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0, v3, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->x:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->y:[I

    invoke-static {v7, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0, v3, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {v6, v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v6, p0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v3, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v4, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v3, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v4, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 16

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v6

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v7

    if-eqz p0, :cond_2e

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p0, v8, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    move-object v10, v1

    move-object v9, v4

    move-object v8, v5

    move-object p0, v6

    goto :goto_39

    :cond_2e
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p0, v8, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    move-object v9, v1

    move-object v10, v4

    move-object p0, v5

    move-object v8, v6

    :goto_39
    iget-object v11, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    iget-object v12, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v11, v12, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v11, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v12, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v11, v12, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v11, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p1, v11, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    const p1, 0x98a9

    invoke-static {v4, p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v1, v4, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v4, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object p1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v7, v4, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v3, v2, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v3, v2, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {v7, v1, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v7, v0, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v4, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v5, v7, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v4, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v5, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;
    .registers 3

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    return-object v0
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p0, v2, p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    return-void
.end method

.method private static pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 9

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v6, v7, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v6, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v6, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v6, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v4, v4, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v0, v5, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v3, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v3, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    return-void
.end method

.method private static pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;)V
    .registers 9

    const/16 v0, 0x10

    mul-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x2

    mul-int/2addr p0, v0

    const/4 v1, 0x0

    move v2, p0

    move p0, v1

    :goto_9
    if-ge p0, v0, :cond_24

    xor-int v3, p0, p1

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->x:[I

    invoke-static {v3, v4, v2, v5, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/2addr v2, v0

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->y:[I

    invoke-static {v3, v4, v2, v5, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/2addr v2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_24
    return-void
.end method

.method private static pointLookup([II[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 9

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->getWindow4([II)I

    move-result p0

    ushr-int/lit8 p1, p0, 0x3

    xor-int/lit8 p1, p1, 0x1

    neg-int v0, p1

    xor-int/2addr p0, v0

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_f
    const/16 v3, 0x8

    if-ge v1, v3, :cond_31

    xor-int v3, v1, p0

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v3, p2, v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v2, v2, 0x10

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v3, p2, v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v2, v2, 0x10

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v3, p2, v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_31
    iget-object p0, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cnegate(I[I)V

    return-void
.end method

.method private static pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[I
    .registers 8

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    mul-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_14
    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v5, v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x10

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v5, v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x10

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v5, v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p1, :cond_2e

    return-object v1

    :cond_2e
    invoke-static {v0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    goto :goto_14
.end method

.method private static pointPrecomputeVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;
    .registers 6

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    new-array v1, p1, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    :goto_11
    if-ge p0, p1, :cond_25

    add-int/lit8 v3, p0, -0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v3

    aput-object v3, v1, p0

    aget-object v3, v1, p0

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    :cond_25
    return-object v1
.end method

.method private static pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->zero([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    return-void
.end method

.method public static precompute()V
    .registers 16

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_x:[I

    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_y:[I

    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v3, v5, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    const/16 v3, 0x20

    invoke-static {v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecomputeVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/16 v3, 0xa0

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    move v3, v5

    move v4, v3

    :goto_33
    const/4 v6, 0x5

    if-ge v3, v6, :cond_110

    new-array v7, v6, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    new-instance v8, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    invoke-direct {v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    move v9, v5

    :goto_41
    const/4 v10, 0x1

    if-ge v9, v6, :cond_63

    invoke-static {v10, v1, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v11

    aput-object v11, v7, v9

    add-int v11, v3, v9

    const/16 v12, 0x8

    if-eq v11, v12, :cond_60

    :goto_56
    const/16 v11, 0x12

    if-ge v10, v11, :cond_60

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_56

    :cond_60
    add-int/lit8 v9, v9, 0x1

    goto :goto_41

    :cond_63
    const/16 v6, 0x10

    new-array v9, v6, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    aput-object v8, v9, v5

    move v8, v5

    move v11, v10

    :goto_6b
    const/4 v12, 0x4

    if-ge v8, v12, :cond_8e

    shl-int v12, v10, v8

    move v13, v11

    move v11, v5

    :goto_72
    if-ge v11, v12, :cond_8a

    sub-int v14, v13, v12

    aget-object v14, v9, v14

    invoke-static {v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v14

    aput-object v14, v9, v13

    aget-object v14, v7, v8

    aget-object v15, v9, v13

    invoke-static {v5, v14, v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_72

    :cond_8a
    add-int/lit8 v8, v8, 0x1

    move v11, v13

    goto :goto_6b

    :cond_8e
    invoke-static {v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v7

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v8

    aget-object v11, v9, v5

    iget-object v11, v11, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v11, v5, v8, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    invoke-static {v8, v5, v7, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    move v11, v5

    :goto_a1
    add-int/2addr v11, v10

    if-ge v11, v6, :cond_b1

    aget-object v12, v9, v11

    iget-object v12, v12, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v8, v12, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    mul-int/lit8 v12, v11, 0x10

    invoke-static {v8, v5, v7, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    goto :goto_a1

    :cond_b1
    invoke-static {v8, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->invVar([I[I)V

    add-int/lit8 v11, v11, -0x1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v10

    :goto_ba
    if-lez v11, :cond_d4

    add-int/lit8 v12, v11, -0x1

    mul-int/lit8 v13, v12, 0x10

    invoke-static {v7, v13, v10, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    invoke-static {v10, v8, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    mul-int/lit8 v13, v11, 0x10

    invoke-static {v10, v5, v7, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    aget-object v11, v9, v11

    iget-object v11, v11, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v8, v11, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    move v11, v12

    goto :goto_ba

    :cond_d4
    invoke-static {v8, v5, v7, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    move v8, v4

    move v4, v5

    :goto_d9
    if-ge v4, v6, :cond_10b

    aget-object v10, v9, v4

    mul-int/lit8 v11, v4, 0x10

    iget-object v12, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v7, v11, v12, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object v11, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v12, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    iget-object v13, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v11, v12, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v11, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v12, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    iget-object v13, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v11, v12, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v11, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    sget-object v12, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    invoke-static {v11, v5, v12, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v8, v8, 0x10

    iget-object v10, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    sget-object v11, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    invoke-static {v10, v5, v11, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v8, v8, 0x10

    add-int/lit8 v4, v4, 0x1

    goto :goto_d9

    :cond_10b
    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto/16 :goto_33

    :cond_110
    monitor-exit v0

    return-void

    :catchall_112
    move-exception v1

    monitor-exit v0
    :try_end_114
    .catchall {:try_start_3 .. :try_end_114} :catchall_112

    throw v1
.end method

.method private static pruneScalar([BI[B)V
    .registers 5

    const/16 v0, 0x38

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, p2, v1

    and-int/lit16 p0, p0, 0xfc

    int-to-byte p0, p0

    aput-byte p0, p2, v1

    const/16 p0, 0x37

    aget-byte p1, p2, p0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    aput-byte v1, p2, v0

    return-void
.end method

.method private static reduceScalar([B)[B
    .registers 89

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long/2addr v14, v4

    const/16 v9, 0x12

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v9

    shl-int/2addr v9, v6

    move-wide/from16 v16, v2

    int-to-long v1, v9

    and-long/2addr v1, v4

    const/16 v3, 0x15

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v18, v7

    int-to-long v6, v3

    and-long/2addr v6, v4

    const/16 v3, 0x19

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    const/4 v8, 0x4

    shl-int/2addr v3, v8

    int-to-long v8, v3

    and-long/2addr v8, v4

    const/16 v3, 0x1c

    move-wide/from16 v21, v10

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v3, 0x20

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    const/16 v20, 0x4

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v24, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x23

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v26, v14

    int-to-long v14, v3

    and-long/2addr v14, v4

    const/16 v3, 0x27

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v28, v1

    int-to-long v1, v3

    and-long/2addr v1, v4

    const/16 v3, 0x2a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v30, v6

    int-to-long v6, v3

    and-long/2addr v6, v4

    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v32, v8

    int-to-long v8, v3

    and-long/2addr v8, v4

    const/16 v3, 0x31

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v34, v10

    int-to-long v10, v3

    and-long/2addr v10, v4

    const/16 v3, 0x35

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v36, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x38

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v38, v14

    int-to-long v14, v3

    and-long/2addr v14, v4

    const/16 v3, 0x3c

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v40, v1

    int-to-long v1, v3

    and-long/2addr v1, v4

    const/16 v3, 0x3f

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v42, v6

    int-to-long v6, v3

    and-long/2addr v6, v4

    const/16 v3, 0x43

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v44, v8

    int-to-long v8, v3

    and-long/2addr v8, v4

    const/16 v3, 0x46

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v46, v10

    int-to-long v10, v3

    and-long/2addr v10, v4

    const/16 v3, 0x4a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v48, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x4d

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v50, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x51

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v52, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x54

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v54, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x58

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v56, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x5b

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v58, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x5f

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v60, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x62

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v62, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x66

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v64, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x69

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v3

    move-wide/from16 v66, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x6d

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v68, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    const/16 v3, 0x70

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode16([BI)I

    move-result v0

    move-wide/from16 v70, v12

    int-to-long v12, v0

    and-long v3, v12, v4

    const-wide/32 v12, 0x29eec34

    mul-long v72, v3, v12

    add-long v14, v14, v72

    const-wide/32 v72, 0x1cf5b55

    mul-long v74, v3, v72

    add-long v1, v1, v74

    const-wide/32 v74, 0x9c2ab72

    mul-long v76, v3, v74

    add-long v6, v6, v76

    const-wide/32 v76, 0xf635c8e

    mul-long v78, v3, v76

    add-long v8, v8, v78

    const-wide/32 v78, 0x5bf7a4c

    mul-long v80, v3, v78

    add-long v10, v10, v80

    const-wide/32 v80, 0xd944a72

    mul-long v82, v3, v80

    add-long v50, v50, v82

    const-wide/32 v82, 0x8eec492

    mul-long v84, v3, v82

    add-long v52, v52, v84

    const-wide/32 v84, 0x20cd7705

    mul-long v3, v3, v84

    add-long v3, v54, v3

    const/16 v0, 0x1c

    ushr-long v54, v68, v0

    add-long v54, v70, v54

    const-wide/32 v70, 0xfffffff

    and-long v68, v68, v70

    mul-long v86, v54, v12

    add-long v48, v48, v86

    mul-long v86, v54, v72

    add-long v14, v14, v86

    mul-long v86, v54, v74

    add-long v1, v1, v86

    mul-long v86, v54, v76

    add-long v6, v6, v86

    mul-long v86, v54, v78

    add-long v8, v8, v86

    mul-long v86, v54, v80

    add-long v10, v10, v86

    mul-long v86, v54, v82

    add-long v50, v50, v86

    mul-long v54, v54, v84

    add-long v52, v52, v54

    mul-long v54, v68, v12

    add-long v46, v46, v54

    mul-long v54, v68, v72

    add-long v48, v48, v54

    mul-long v54, v68, v74

    add-long v14, v14, v54

    mul-long v54, v68, v76

    add-long v1, v1, v54

    mul-long v54, v68, v78

    add-long v6, v6, v54

    mul-long v54, v68, v80

    add-long v8, v8, v54

    mul-long v54, v68, v82

    add-long v10, v10, v54

    mul-long v68, v68, v84

    add-long v50, v50, v68

    const/16 v0, 0x1c

    ushr-long v54, v64, v0

    add-long v54, v66, v54

    and-long v64, v64, v70

    mul-long v66, v54, v12

    add-long v44, v44, v66

    mul-long v66, v54, v72

    add-long v46, v46, v66

    mul-long v66, v54, v74

    add-long v48, v48, v66

    mul-long v66, v54, v76

    add-long v14, v14, v66

    mul-long v66, v54, v78

    add-long v1, v1, v66

    mul-long v66, v54, v80

    add-long v6, v6, v66

    mul-long v66, v54, v82

    add-long v8, v8, v66

    mul-long v54, v54, v84

    add-long v10, v10, v54

    mul-long v54, v64, v12

    add-long v42, v42, v54

    mul-long v54, v64, v72

    add-long v44, v44, v54

    mul-long v54, v64, v74

    add-long v46, v46, v54

    mul-long v54, v64, v76

    add-long v48, v48, v54

    mul-long v54, v64, v78

    add-long v14, v14, v54

    mul-long v54, v64, v80

    add-long v1, v1, v54

    mul-long v54, v64, v82

    add-long v6, v6, v54

    mul-long v64, v64, v84

    add-long v8, v8, v64

    const/16 v0, 0x1c

    ushr-long v54, v60, v0

    add-long v54, v62, v54

    and-long v60, v60, v70

    mul-long v62, v54, v12

    add-long v40, v40, v62

    mul-long v62, v54, v72

    add-long v42, v42, v62

    mul-long v62, v54, v74

    add-long v44, v44, v62

    mul-long v62, v54, v76

    add-long v46, v46, v62

    mul-long v62, v54, v78

    add-long v48, v48, v62

    mul-long v62, v54, v80

    add-long v14, v14, v62

    mul-long v62, v54, v82

    add-long v1, v1, v62

    mul-long v54, v54, v84

    add-long v6, v6, v54

    mul-long v54, v60, v12

    add-long v38, v38, v54

    mul-long v54, v60, v72

    add-long v40, v40, v54

    mul-long v54, v60, v74

    add-long v42, v42, v54

    mul-long v54, v60, v76

    add-long v44, v44, v54

    mul-long v54, v60, v78

    add-long v46, v46, v54

    mul-long v54, v60, v80

    add-long v48, v48, v54

    mul-long v54, v60, v82

    add-long v14, v14, v54

    mul-long v60, v60, v84

    add-long v1, v1, v60

    const/16 v0, 0x1c

    ushr-long v54, v56, v0

    add-long v54, v58, v54

    and-long v56, v56, v70

    mul-long v58, v54, v12

    add-long v36, v36, v58

    mul-long v58, v54, v72

    add-long v38, v38, v58

    mul-long v58, v54, v74

    add-long v40, v40, v58

    mul-long v58, v54, v76

    add-long v42, v42, v58

    mul-long v58, v54, v78

    add-long v44, v44, v58

    mul-long v58, v54, v80

    add-long v46, v46, v58

    mul-long v58, v54, v82

    add-long v48, v48, v58

    mul-long v54, v54, v84

    add-long v14, v14, v54

    const/16 v0, 0x1c

    ushr-long v54, v10, v0

    add-long v50, v50, v54

    and-long v10, v10, v70

    ushr-long v54, v50, v0

    add-long v52, v52, v54

    and-long v50, v50, v70

    ushr-long v54, v52, v0

    add-long v3, v3, v54

    and-long v52, v52, v70

    ushr-long v54, v3, v0

    add-long v56, v56, v54

    and-long v3, v3, v70

    mul-long v54, v56, v12

    add-long v34, v34, v54

    mul-long v54, v56, v72

    add-long v36, v36, v54

    mul-long v54, v56, v74

    add-long v38, v38, v54

    mul-long v54, v56, v76

    add-long v40, v40, v54

    mul-long v54, v56, v78

    add-long v42, v42, v54

    mul-long v54, v56, v80

    add-long v44, v44, v54

    mul-long v54, v56, v82

    add-long v46, v46, v54

    mul-long v56, v56, v84

    add-long v48, v48, v56

    mul-long v54, v3, v12

    add-long v32, v32, v54

    mul-long v54, v3, v72

    add-long v34, v34, v54

    mul-long v54, v3, v74

    add-long v36, v36, v54

    mul-long v54, v3, v76

    add-long v38, v38, v54

    mul-long v54, v3, v78

    add-long v40, v40, v54

    mul-long v54, v3, v80

    add-long v42, v42, v54

    mul-long v54, v3, v82

    add-long v44, v44, v54

    mul-long v3, v3, v84

    add-long v46, v46, v3

    mul-long v3, v52, v12

    add-long v3, v30, v3

    mul-long v30, v52, v72

    add-long v32, v32, v30

    mul-long v30, v52, v74

    add-long v34, v34, v30

    mul-long v30, v52, v76

    add-long v36, v36, v30

    mul-long v30, v52, v78

    add-long v38, v38, v30

    mul-long v30, v52, v80

    add-long v40, v40, v30

    mul-long v30, v52, v82

    add-long v42, v42, v30

    mul-long v52, v52, v84

    add-long v44, v44, v52

    const/16 v0, 0x1c

    ushr-long v30, v1, v0

    add-long v6, v6, v30

    and-long v1, v1, v70

    ushr-long v30, v6, v0

    add-long v8, v8, v30

    and-long v5, v6, v70

    ushr-long v30, v8, v0

    add-long v10, v10, v30

    and-long v7, v8, v70

    ushr-long v30, v10, v0

    add-long v50, v50, v30

    and-long v9, v10, v70

    mul-long v30, v50, v12

    add-long v28, v28, v30

    mul-long v30, v50, v72

    add-long v3, v3, v30

    mul-long v30, v50, v74

    add-long v32, v32, v30

    mul-long v30, v50, v76

    add-long v34, v34, v30

    mul-long v30, v50, v78

    add-long v36, v36, v30

    mul-long v30, v50, v80

    add-long v38, v38, v30

    mul-long v30, v50, v82

    add-long v40, v40, v30

    mul-long v50, v50, v84

    add-long v42, v42, v50

    mul-long v30, v9, v12

    add-long v26, v26, v30

    mul-long v30, v9, v72

    add-long v28, v28, v30

    mul-long v30, v9, v74

    add-long v3, v3, v30

    mul-long v30, v9, v76

    add-long v32, v32, v30

    mul-long v30, v9, v78

    add-long v34, v34, v30

    mul-long v30, v9, v80

    add-long v36, v36, v30

    mul-long v30, v9, v82

    add-long v38, v38, v30

    mul-long v9, v9, v84

    add-long v40, v40, v9

    mul-long v9, v7, v12

    add-long v9, v24, v9

    mul-long v24, v7, v72

    add-long v26, v26, v24

    mul-long v24, v7, v74

    add-long v28, v28, v24

    mul-long v24, v7, v76

    add-long v3, v3, v24

    mul-long v24, v7, v78

    add-long v32, v32, v24

    mul-long v24, v7, v80

    add-long v34, v34, v24

    mul-long v24, v7, v82

    add-long v36, v36, v24

    mul-long v7, v7, v84

    add-long v38, v38, v7

    const/16 v0, 0x1c

    ushr-long v7, v46, v0

    add-long v48, v48, v7

    and-long v7, v46, v70

    ushr-long v23, v48, v0

    add-long v14, v14, v23

    and-long v24, v48, v70

    ushr-long v30, v14, v0

    add-long v1, v1, v30

    and-long v14, v14, v70

    ushr-long v30, v1, v0

    add-long v5, v5, v30

    and-long v0, v1, v70

    mul-long v30, v5, v12

    add-long v20, v21, v30

    mul-long v30, v5, v72

    add-long v9, v9, v30

    mul-long v30, v5, v74

    add-long v26, v26, v30

    mul-long v30, v5, v76

    add-long v28, v28, v30

    mul-long v30, v5, v78

    add-long v3, v3, v30

    mul-long v30, v5, v80

    add-long v32, v32, v30

    mul-long v30, v5, v82

    add-long v34, v34, v30

    mul-long v5, v5, v84

    add-long v36, v36, v5

    mul-long/2addr v12, v0

    add-long v5, v18, v12

    mul-long v72, v72, v0

    add-long v20, v20, v72

    mul-long v74, v74, v0

    add-long v9, v9, v74

    mul-long v76, v76, v0

    add-long v26, v26, v76

    mul-long v78, v78, v0

    add-long v28, v28, v78

    mul-long v80, v80, v0

    add-long v3, v3, v80

    mul-long v82, v82, v0

    add-long v32, v32, v82

    mul-long v0, v0, v84

    add-long v34, v34, v0

    const-wide/16 v0, 0x4

    mul-long/2addr v14, v0

    const/16 v0, 0x1a

    ushr-long v0, v24, v0

    add-long/2addr v14, v0

    const-wide/32 v0, 0x3ffffff

    and-long v0, v24, v0

    const-wide/16 v11, 0x1

    add-long/2addr v14, v11

    const-wide/32 v11, 0x4a7bb0d

    mul-long/2addr v11, v14

    add-long v11, v16, v11

    const-wide/32 v16, 0x873d6d5

    mul-long v16, v16, v14

    add-long v5, v5, v16

    const-wide/32 v16, 0xa70aadc

    mul-long v16, v16, v14

    add-long v20, v20, v16

    const-wide/32 v16, 0x3d8d723

    mul-long v16, v16, v14

    add-long v9, v9, v16

    const-wide/32 v16, 0x96fde93

    mul-long v16, v16, v14

    add-long v26, v26, v16

    const-wide/32 v16, 0xb65129c

    mul-long v16, v16, v14

    add-long v28, v28, v16

    const-wide/32 v16, 0x63bb124

    mul-long v16, v16, v14

    add-long v3, v3, v16

    const-wide/32 v16, 0x8335dc1

    mul-long v14, v14, v16

    add-long v32, v32, v14

    const/16 v2, 0x1c

    ushr-long v13, v11, v2

    add-long/2addr v5, v13

    and-long v11, v11, v70

    ushr-long v13, v5, v2

    add-long v20, v20, v13

    and-long v5, v5, v70

    ushr-long v13, v20, v2

    add-long/2addr v9, v13

    and-long v13, v20, v70

    ushr-long v16, v9, v2

    add-long v26, v26, v16

    and-long v9, v9, v70

    ushr-long v16, v26, v2

    add-long v28, v28, v16

    and-long v16, v26, v70

    ushr-long v18, v28, v2

    add-long v3, v3, v18

    and-long v18, v28, v70

    ushr-long v20, v3, v2

    add-long v32, v32, v20

    and-long v3, v3, v70

    ushr-long v20, v32, v2

    add-long v34, v34, v20

    and-long v20, v32, v70

    ushr-long v22, v34, v2

    add-long v36, v36, v22

    and-long v24, v34, v70

    ushr-long v22, v36, v2

    add-long v38, v38, v22

    and-long v26, v36, v70

    ushr-long v22, v38, v2

    add-long v40, v40, v22

    and-long v28, v38, v70

    ushr-long v22, v40, v2

    add-long v42, v42, v22

    and-long v30, v40, v70

    ushr-long v22, v42, v2

    add-long v44, v44, v22

    and-long v32, v42, v70

    ushr-long v22, v44, v2

    add-long v7, v7, v22

    and-long v34, v44, v70

    ushr-long v36, v7, v2

    add-long v0, v0, v36

    and-long v7, v7, v70

    const/16 v2, 0x1a

    ushr-long v36, v0, v2

    const-wide/32 v38, 0x3ffffff

    and-long v0, v0, v38

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    const-wide/32 v38, 0x4a7bb0d

    and-long v38, v36, v38

    sub-long v11, v11, v38

    const-wide/32 v38, 0x873d6d5

    and-long v38, v36, v38

    sub-long v5, v5, v38

    const-wide/32 v38, 0xa70aadc

    and-long v38, v36, v38

    sub-long v13, v13, v38

    const-wide/32 v38, 0x3d8d723

    and-long v38, v36, v38

    sub-long v9, v9, v38

    const-wide/32 v38, 0x96fde93

    and-long v38, v36, v38

    sub-long v16, v16, v38

    const-wide/32 v38, 0xb65129c

    and-long v38, v36, v38

    sub-long v18, v18, v38

    const-wide/32 v38, 0x63bb124

    and-long v38, v36, v38

    sub-long v3, v3, v38

    const-wide/32 v38, 0x8335dc1

    and-long v36, v36, v38

    sub-long v20, v20, v36

    const/16 v2, 0x1c

    shr-long v22, v11, v2

    add-long v5, v5, v22

    and-long v11, v11, v70

    shr-long v22, v5, v2

    add-long v13, v13, v22

    and-long v5, v5, v70

    shr-long v22, v13, v2

    add-long v9, v9, v22

    and-long v13, v13, v70

    shr-long v22, v9, v2

    add-long v16, v16, v22

    and-long v9, v9, v70

    shr-long v22, v16, v2

    add-long v18, v18, v22

    and-long v16, v16, v70

    shr-long v22, v18, v2

    add-long v3, v3, v22

    and-long v18, v18, v70

    shr-long v22, v3, v2

    add-long v20, v20, v22

    and-long v3, v3, v70

    shr-long v22, v20, v2

    add-long v24, v24, v22

    and-long v20, v20, v70

    shr-long v22, v24, v2

    add-long v26, v26, v22

    and-long v22, v24, v70

    shr-long v24, v26, v2

    add-long v28, v28, v24

    and-long v24, v26, v70

    shr-long v26, v28, v2

    add-long v30, v30, v26

    and-long v26, v28, v70

    shr-long v28, v30, v2

    add-long v32, v32, v28

    and-long v28, v30, v70

    shr-long v30, v32, v2

    add-long v34, v34, v30

    and-long v30, v32, v70

    shr-long v32, v34, v2

    add-long v7, v7, v32

    and-long v32, v34, v70

    shr-long v34, v7, v2

    add-long v0, v0, v34

    and-long v7, v7, v70

    const/16 v15, 0x39

    new-array v15, v15, [B

    shl-long/2addr v5, v2

    or-long/2addr v5, v11

    const/4 v11, 0x0

    invoke-static {v5, v6, v15, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v5, v9, v2

    or-long/2addr v5, v13

    const/4 v9, 0x7

    invoke-static {v5, v6, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v5, v18, v2

    or-long v5, v16, v5

    const/16 v9, 0xe

    invoke-static {v5, v6, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v5, v20, v2

    or-long/2addr v3, v5

    const/16 v5, 0x15

    invoke-static {v3, v4, v15, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v3, v24, v2

    or-long v3, v22, v3

    invoke-static {v3, v4, v15, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v3, v28, v2

    or-long v3, v26, v3

    const/16 v5, 0x23

    invoke-static {v3, v4, v15, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v3, v32, v2

    or-long v3, v30, v3

    const/16 v5, 0x2a

    invoke-static {v3, v4, v15, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long/2addr v0, v2

    or-long/2addr v0, v7

    const/16 v2, 0x31

    invoke-static {v0, v1, v15, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    return-object v15
.end method

.method private static scalarMult([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 9

    const/16 v0, 0xe

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    const/4 p0, 0x2

    invoke-static {v0, v1, p0, v2}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBits(I[III)I

    aget v3, v1, v2

    not-int v3, v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->L:[I

    invoke-static {v0, v3, v1, v5, v1}, Lorg/bouncycastle/math/raw/Nat;->cadd(II[I[I[I)I

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[I

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/16 v3, 0x6f

    invoke-static {v1, v3, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup([II[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    const/16 v3, 0x6e

    :goto_2c
    if-ltz v3, :cond_41

    move v4, v2

    :goto_2f
    const/4 v5, 0x4

    if-ge v4, v5, :cond_38

    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_38
    invoke-static {v1, v3, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup([II[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2c

    :cond_41
    :goto_41
    if-ge v2, p0, :cond_49

    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_49
    return-void
.end method

.method private static scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 14

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompute()V

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    aget p0, v1, v2

    not-int p0, p0

    const/4 v3, 0x1

    and-int/2addr p0, v3

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->L:[I

    const/16 v5, 0xe

    invoke-static {v5, p0, v1, v4, v1}, Lorg/bouncycastle/math/raw/Nat;->cadd(II[I[I[I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    aput p0, v1, v5

    array-length p0, v1

    invoke-static {p0, v1, v2}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    const/16 v4, 0x11

    :goto_2b
    move v5, v2

    move v6, v4

    :goto_2d
    const/4 v7, 0x5

    if-ge v5, v7, :cond_5c

    move v8, v2

    move v9, v6

    move v6, v8

    :goto_33
    if-ge v6, v7, :cond_47

    ushr-int/lit8 v10, v9, 0x5

    aget v10, v1, v10

    and-int/lit8 v11, v9, 0x1f

    ushr-int/2addr v10, v11

    shl-int v11, v3, v6

    not-int v11, v11

    and-int/2addr v8, v11

    shl-int/2addr v10, v6

    xor-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x12

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_47
    ushr-int/lit8 v6, v8, 0x4

    and-int/2addr v6, v3

    neg-int v7, v6

    xor-int/2addr v7, v8

    and-int/2addr v7, v0

    invoke-static {v5, v7, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->x:[I

    invoke-static {v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cnegate(I[I)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddPrecomp(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_2d

    :cond_5c
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_61

    return-void

    :cond_61
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    goto :goto_2b
.end method

.method private static scalarMultBaseEncoded([B[BI)V
    .registers 5

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;[BI)I

    move-result p0

    if-eqz p0, :cond_10

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static scalarMultBaseXY(Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;[BI[I[I)V
    .registers 6

    if-eqz p0, :cond_30

    const/16 p0, 0x39

    new-array p0, p0, [B

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object p2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPoint([I[I[I)I

    move-result p0

    if-eqz p0, :cond_2a

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, p2, p4, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    return-void

    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_30
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by X448"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static scalarMultStrausVar([I[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .registers 10

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompute()V

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->getWnafVar([II)[B

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->getWnafVar([II)[B

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecomputeVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object p2

    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    const/16 v0, 0x1be

    :goto_18
    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    shr-int/lit8 v4, v1, 0x1f

    xor-int/2addr v1, v4

    ushr-int/2addr v1, v3

    if-eqz v4, :cond_26

    move v4, v3

    goto :goto_27

    :cond_26
    move v4, v2

    :goto_27
    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    aget-object v1, v5, v1

    invoke-static {v4, v1, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    :cond_2e
    aget-byte v1, p1, v0

    if-eqz v1, :cond_3e

    shr-int/lit8 v4, v1, 0x1f

    xor-int/2addr v1, v4

    ushr-int/2addr v1, v3

    if-eqz v4, :cond_39

    move v2, v3

    :cond_39
    aget-object v1, p2, v1

    invoke-static {v2, v1, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_43

    return-void

    :cond_43
    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    goto :goto_18
.end method

.method public static sign([BI[BI[B[BII[BI)V
    .registers 21

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static sign([BI[B[BII[BI)V
    .registers 17

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static signPrehash([BI[BI[BLorg/bouncycastle/crypto/Xof;[BI)V
    .registers 20

    const/16 v0, 0x40

    new-array v7, v0, [B

    const/4 v1, 0x0

    move-object/from16 v2, p5

    invoke-interface {v2, v7, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v1

    if-ne v0, v1, :cond_1e

    const/4 v6, 0x1

    const/4 v8, 0x0

    array-length v9, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    return-void

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ph"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static signPrehash([BI[BI[B[BI[BI)V
    .registers 20

    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static signPrehash([BI[BLorg/bouncycastle/crypto/Xof;[BI)V
    .registers 16

    const/16 v0, 0x40

    new-array v5, v0, [B

    const/4 v1, 0x0

    invoke-interface {p3, v5, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result p3

    if-ne v0, p3, :cond_17

    const/4 v4, 0x1

    const/4 v6, 0x0

    array-length v7, v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v8, p4

    move v9, p5

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    return-void

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signPrehash([BI[B[BI[BI)V
    .registers 16

    const/4 v3, 0x1

    const/16 v6, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static verify([BI[BI[B[BII)Z
    .registers 17

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result v0

    return v0
.end method

.method public static verifyPrehash([BI[BI[BLorg/bouncycastle/crypto/Xof;)Z
    .registers 16

    const/16 v0, 0x40

    new-array v7, v0, [B

    const/4 v1, 0x0

    invoke-interface {p5, v7, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result p5

    if-ne v0, p5, :cond_18

    const/4 v6, 0x1

    const/4 v8, 0x0

    array-length v9, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyPrehash([BI[BI[B[BI)Z
    .registers 16

    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method
