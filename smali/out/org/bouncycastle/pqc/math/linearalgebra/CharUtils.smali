.class public final Lorg/bouncycastle/pqc/math/linearalgebra/CharUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([C)[C
    .registers 4

    array-length v0, p0

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static equals([C[C)Z
    .registers 8

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v3, v1

    :goto_a
    if-ltz v0, :cond_19

    aget-char v4, p0, v0

    aget-char v5, p1, v0

    if-ne v4, v5, :cond_14

    move v4, v1

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    and-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_19
    return v3
.end method

.method public static toByteArray([C)[B
    .registers 4

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_10

    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_10
    return-object v0
.end method

.method public static toByteArrayForPBE([C)[B
    .registers 7

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_10

    aget-char v3, p0, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    array-length p0, v0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 v2, p0, 0x2

    new-array v2, v2, [B

    move v3, v1

    :goto_18
    array-length v4, v0

    if-ge v3, v4, :cond_28

    mul-int/lit8 v4, v3, 0x2

    aput-byte v1, v2, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, v0, v3

    aput-byte v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_28
    aput-byte v1, v2, p0

    add-int/lit8 p0, p0, 0x1

    aput-byte v1, v2, p0

    return-object v2
.end method
