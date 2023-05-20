.class public abstract Lorg/bouncycastle/math/ec/rfc7748/X25519;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc7748/X25519$F;,
        Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;
    }
.end annotation


# static fields
.field private static final C_A:I = 0x76d06

.field private static final C_A24:I = 0x1db42

.field public static final POINT_SIZE:I = 0x20

.field public static final SCALAR_SIZE:I = 0x20


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateAgreement([BI[BI[BI)Z
    .registers 6

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->scalarMult([BI[BI[BI)V

    const/16 p0, 0x20

    invoke-static {p4, p5, p0}, Lorg/bouncycastle/util/Arrays;->areAllZeroes([BII)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

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

.method private static decodeScalar([BI[I)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_12

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->decode32([BI)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    aget p0, p2, v0

    and-int/lit8 p0, p0, -0x8

    aput p0, p2, v0

    const/4 p0, 0x7

    aget p1, p2, p0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    aput p1, p2, p0

    aget p1, p2, p0

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    aput p1, p2, p0

    return-void
.end method

.method public static generatePrivateKey(Ljava/security/SecureRandom;[B)V
    .registers 3

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x0

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xf8

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    const/16 p0, 0x1f

    aget-byte v0, p1, p0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    aget-byte v0, p1, p0

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    return-void
.end method

.method public static generatePublicKey([BI[BI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->scalarMultBase([BI[BI)V

    return-void
.end method

.method private static pointDouble([I[I)V
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->apm([I[I[I[I)V

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sub([I[I[I)V

    const p0, 0x1db42

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([II[I)V

    invoke-static {p1, v1, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->add([I[I[I)V

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    return-void
.end method

.method public static precompute()V
    .registers 0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompute()V

    return-void
.end method

.method public static scalarMult([BI[BI[BI)V
    .registers 16

    const/16 v0, 0x8

    new-array v0, v0, [I

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->decodeScalar([BI[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object p0

    invoke-static {p2, p3, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->decode([BI[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->copy([II[II)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object p3

    const/4 v1, 0x1

    aput v1, p3, p2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v2

    aput v1, v2, p2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v5

    const/16 v6, 0xfe

    move v7, v1

    :goto_32
    invoke-static {v2, v3, v4, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->apm([I[I[I[I)V

    invoke-static {p1, p3, v3, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->apm([I[I[I[I)V

    invoke-static {v4, p1, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    invoke-static {v2, v3, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    invoke-static {p1, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    invoke-static {v3, p1, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sub([I[I[I)V

    const v8, 0x1db42

    invoke-static {v5, v8, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([II[I)V

    invoke-static {p3, p1, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->add([I[I[I)V

    invoke-static {p3, v5, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    invoke-static {p1, v3, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    invoke-static {v4, v2, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->apm([I[I[I[I)V

    invoke-static {v2, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    invoke-static {v3, p0, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    add-int/lit8 v6, v6, -0x1

    ushr-int/lit8 v8, v6, 0x5

    and-int/lit8 v9, v6, 0x1f

    aget v8, v0, v8

    ushr-int/2addr v8, v9

    and-int/2addr v8, v1

    xor-int/2addr v7, v8

    invoke-static {v7, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->cswap(I[I[I)V

    invoke-static {v7, p3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->cswap(I[I[I)V

    const/4 v7, 0x3

    if-ge v6, v7, :cond_8b

    :goto_76
    if-ge p2, v7, :cond_7e

    invoke-static {p1, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->pointDouble([I[I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_76

    :cond_7e
    invoke-static {p3, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->inv([I[I)V

    invoke-static {p1, p3, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->normalize([I)V

    invoke-static {p1, p4, p5}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->encode([I[BI)V

    return-void

    :cond_8b
    move v7, v8

    goto :goto_32
.end method

.method public static scalarMultBase([BI[BI)V
    .registers 7

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;->access$000()Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;

    move-result-object v2

    invoke-static {v2, p0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseYZ(Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;[BI[I[I)V

    invoke-static {v1, v0, v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->apm([I[I[I[I)V

    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->inv([I[I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->normalize([I)V

    invoke-static {v0, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->encode([I[BI)V

    return-void
.end method
