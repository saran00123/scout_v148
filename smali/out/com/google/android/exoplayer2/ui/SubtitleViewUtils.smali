.class final Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;
.super Ljava/lang/Object;
.source "SubtitleViewUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveTextSize(IFII)F
    .registers 6

    const v0, -0x800001

    cmpl-float v1, p1, v0

    if-nez v1, :cond_8

    return v0

    :cond_8
    if-eqz p0, :cond_15

    const/4 p3, 0x1

    if-eq p0, p3, :cond_12

    const/4 p2, 0x2

    if-eq p0, p2, :cond_11

    return v0

    :cond_11
    return p1

    :cond_12
    int-to-float p0, p2

    :goto_13
    mul-float/2addr p1, p0

    return p1

    :cond_15
    int-to-float p0, p3

    goto :goto_13
.end method
