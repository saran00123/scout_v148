.class public Lorg/bouncycastle/crypto/digests/XofUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static leftEncode(J)[B
    .registers 9

    const/4 v0, 0x1

    move-wide v1, p0

    move v3, v0

    :goto_3
    const/16 v4, 0x8

    shr-long/2addr v1, v4

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_10

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_3

    :cond_10
    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v3, v1, v2

    :goto_17
    if-gt v0, v3, :cond_25

    sub-int v2, v3, v0

    mul-int/2addr v2, v4

    shr-long v5, p0, v2

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_25
    return-object v1
.end method

.method public static rightEncode(J)[B
    .registers 9

    const/4 v0, 0x1

    move-wide v1, p0

    move v3, v0

    :goto_3
    const/16 v4, 0x8

    shr-long/2addr v1, v4

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_10

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_3

    :cond_10
    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [B

    aput-byte v3, v1, v3

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v3, :cond_26

    sub-int v5, v3, v2

    sub-int/2addr v5, v0

    mul-int/2addr v5, v4

    shr-long v5, p0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_26
    return-object v1
.end method
