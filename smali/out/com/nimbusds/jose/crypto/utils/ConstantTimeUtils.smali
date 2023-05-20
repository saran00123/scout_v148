.class public Lcom/nimbusds/jose/crypto/utils/ConstantTimeUtils;
.super Ljava/lang/Object;
.source "ConstantTimeUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual([B[B)Z
    .registers 7

    .line 44
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    move v0, v2

    move v1, v0

    .line 49
    :goto_8
    array-length v3, p0

    if-ge v0, v3, :cond_14

    .line 50
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    if-nez v1, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method
