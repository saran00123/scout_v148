.class public Lorg/bouncycastle/crypto/params/DESedeParameters;
.super Lorg/bouncycastle/crypto/params/DESParameters;


# static fields
.field public static final DES_EDE_KEY_LENGTH:I = 0x18


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/DESParameters;-><init>([B)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attempt to create weak DESede key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isReal2Key([BI)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_3
    add-int/lit8 v2, p1, 0x8

    if-eq v0, v2, :cond_13

    aget-byte v2, p0, v0

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p0, v3

    if-eq v2, v3, :cond_10

    const/4 v1, 0x1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    return v1
.end method

.method public static isReal3Key([BI)Z
    .registers 12

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_5
    add-int/lit8 v5, p1, 0x8

    const/4 v6, 0x1

    if-eq v1, v5, :cond_2e

    aget-byte v5, p0, v1

    add-int/lit8 v7, v1, 0x8

    aget-byte v8, p0, v7

    if-eq v5, v8, :cond_14

    move v5, v6

    goto :goto_15

    :cond_14
    move v5, v0

    :goto_15
    or-int/2addr v2, v5

    aget-byte v5, p0, v1

    add-int/lit8 v8, v1, 0x10

    aget-byte v9, p0, v8

    if-eq v5, v9, :cond_20

    move v5, v6

    goto :goto_21

    :cond_20
    move v5, v0

    :goto_21
    or-int/2addr v3, v5

    aget-byte v5, p0, v7

    aget-byte v7, p0, v8

    if-eq v5, v7, :cond_29

    goto :goto_2a

    :cond_29
    move v6, v0

    :goto_2a
    or-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2e
    if-eqz v2, :cond_35

    if-eqz v3, :cond_35

    if-eqz v4, :cond_35

    move v0, v6

    :cond_35
    return v0
.end method

.method public static isRealEDEKey([BI)Z
    .registers 4

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isReal2Key([BI)Z

    move-result p0

    goto :goto_e

    :cond_a
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isReal3Key([BI)Z

    move-result p0

    :goto_e
    return p0
.end method

.method public static isWeakKey([BI)Z
    .registers 3

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result p0

    return p0
.end method

.method public static isWeakKey([BII)Z
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_d

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method
