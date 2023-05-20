.class public Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7:I = 0x7fffffff

.field private static final PExt:[I

.field private static final PInv:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_28
    .array-data 4
        0x169
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p2, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_e
    return-void
.end method

.method public static addExt([I[I[I)V
    .registers 4

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    invoke-static {v0, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPExtFrom([I)I

    :cond_10
    return-void
.end method

.method public static addOne([I[I)V
    .registers 3

    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_10
    return-void
.end method

.method private static addPExtTo([I)I
    .registers 15

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    sget-object v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v5, v5, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const/4 v8, 0x1

    const/16 v9, 0x8

    if-eqz v7, :cond_25

    invoke-static {v9, p0, v8}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    int-to-long v1, v1

    :cond_25
    aget v7, p0, v9

    int-to-long v10, v7

    and-long/2addr v10, v3

    const-wide/16 v12, 0x13

    sub-long/2addr v10, v12

    add-long/2addr v1, v10

    long-to-int v7, v1

    aput v7, p0, v9

    shr-long/2addr v1, v0

    cmp-long v5, v1, v5

    const/16 v6, 0xf

    if-eqz v5, :cond_3e

    const/16 v1, 0x9

    invoke-static {v6, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v1

    int-to-long v1, v1

    :cond_3e
    aget v5, p0, v6

    int-to-long v9, v5

    and-long/2addr v9, v3

    sget-object v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v5, v5, v6

    add-int/2addr v5, v8

    int-to-long v7, v5

    and-long/2addr v3, v7

    add-long/2addr v9, v3

    add-long/2addr v1, v9

    long-to-int v3, v1

    aput v3, p0, v6

    shr-long v0, v1, v0

    long-to-int p0, v0

    return p0
.end method

.method private static addPTo([I)I
    .registers 10

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x13

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    const/4 v6, 0x7

    if-eqz v5, :cond_20

    const/4 v1, 0x1

    invoke-static {v6, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v1

    int-to-long v1, v1

    :cond_20
    aget v5, p0, v6

    int-to-long v7, v5

    and-long/2addr v3, v7

    const-wide v7, 0x80000000L

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p0, v6

    shr-long v0, v1, v0

    long-to-int p0, v0

    return p0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 2

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p0

    :goto_4
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    goto :goto_4

    :cond_12
    return-object p0
.end method

.method public static half([I[I)V
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_d

    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_15

    :cond_d
    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    :goto_15
    return-void
.end method

.method public static inv([I[I)V
    .registers 3

    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    return-void
.end method

.method public static isZero([I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_c

    aget v2, p0, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static multiply([I[I[I)V
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    const/16 p1, 0x10

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPExtFrom([I)I

    :cond_10
    return-void
.end method

.method public static negate([I[I)V
    .registers 3

    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_c

    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_11

    :cond_c
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :goto_11
    return-void
.end method

.method public static random(Ljava/security/SecureRandom;[I)V
    .registers 7

    const/16 v0, 0x20

    new-array v0, v0, [B

    :cond_4
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    const/4 v2, 0x7

    aget v3, p1, v2

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    aput v3, p1, v2

    sget-object v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_4

    return-void
.end method

.method public static randomMult(Ljava/security/SecureRandom;[I)V
    .registers 3

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->random(Ljava/security/SecureRandom;[I)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static reduce([I[I)V
    .registers 10

    const/4 v0, 0x7

    aget v7, p0, v0

    const/16 v1, 0x8

    const/16 v3, 0x8

    const/4 v6, 0x0

    move-object v2, p0

    move v4, v7

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[III[II)I

    const/16 v1, 0x13

    invoke-static {v1, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->mulByWordAddTo(I[I[I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    aget v2, p1, v0

    ushr-int/lit8 v3, v2, 0x1f

    ushr-int/lit8 v4, v7, 0x1f

    sub-int/2addr v3, v4

    add-int/2addr p0, v3

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    mul-int/2addr p0, v1

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result p0

    add-int/2addr v2, p0

    aput v2, p1, v0

    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_35
    return-void
.end method

.method public static reduce27(I[I)V
    .registers 5

    const/4 v0, 0x7

    aget v1, p1, v0

    shl-int/lit8 p0, p0, 0x1

    ushr-int/lit8 v2, v1, 0x1f

    or-int/2addr p0, v2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    mul-int/lit8 p0, p0, 0x13

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result p0

    add-int/2addr v1, p0

    aput v1, p1, v0

    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_20
    return-void
.end method

.method public static square([I[I)V
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    :goto_7
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_12

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    goto :goto_7

    :cond_12
    return-void
.end method

.method private static subPExtFrom([I)I
    .registers 15

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    sget-object v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v5, v5, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const/4 v8, 0x1

    const/16 v9, 0x8

    if-eqz v7, :cond_25

    invoke-static {v9, p0, v8}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v1

    int-to-long v1, v1

    :cond_25
    aget v7, p0, v9

    int-to-long v10, v7

    and-long/2addr v10, v3

    const-wide/16 v12, 0x13

    add-long/2addr v10, v12

    add-long/2addr v1, v10

    long-to-int v7, v1

    aput v7, p0, v9

    shr-long/2addr v1, v0

    cmp-long v5, v1, v5

    const/16 v6, 0xf

    if-eqz v5, :cond_3e

    const/16 v1, 0x9

    invoke-static {v6, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    int-to-long v1, v1

    :cond_3e
    aget v5, p0, v6

    int-to-long v9, v5

    and-long/2addr v9, v3

    sget-object v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v5, v5, v6

    add-int/2addr v5, v8

    int-to-long v7, v5

    and-long/2addr v3, v7

    sub-long/2addr v9, v3

    add-long/2addr v1, v9

    long-to-int v3, v1

    aput v3, p0, v6

    shr-long v0, v1, v0

    long-to-int p0, v0

    return p0
.end method

.method private static subPFrom([I)I
    .registers 10

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x13

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    const/4 v6, 0x7

    if-eqz v5, :cond_20

    const/4 v1, 0x1

    invoke-static {v6, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    int-to-long v1, v1

    :cond_20
    aget v5, p0, v6

    int-to-long v7, v5

    and-long/2addr v3, v7

    const-wide v7, 0x80000000L

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p0, v6

    shr-long v0, v1, v0

    long-to-int p0, v0

    return p0
.end method

.method public static subtract([I[I[I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->addPTo([I)I

    :cond_9
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .registers 4

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->addPExtTo([I)I

    :cond_b
    return-void
.end method

.method public static twice([I[I)V
    .registers 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    sget-object p0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_11
    return-void
.end method
