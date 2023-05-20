.class public final Lcom/google/android/exoplayer2/util/RepeatModeUtil;
.super Ljava/lang/Object;
.source "RepeatModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/RepeatModeUtil$RepeatToggleModes;
    }
.end annotation


# static fields
.field public static final REPEAT_TOGGLE_MODE_ALL:I = 0x2

.field public static final REPEAT_TOGGLE_MODE_NONE:I = 0x0

.field public static final REPEAT_TOGGLE_MODE_ONE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNextRepeatMode(II)I
    .registers 5

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x2

    if-gt v0, v1, :cond_12

    add-int v1, p0, v0

    .line 67
    rem-int/lit8 v1, v1, 0x3

    .line 68
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/RepeatModeUtil;->isRepeatModeEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_f

    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return p0
.end method

.method public static isRepeatModeEnabled(II)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p0, :cond_17

    const/4 v1, 0x0

    if-eq p0, v0, :cond_11

    const/4 v2, 0x2

    if-eq p0, v2, :cond_a

    return v1

    :cond_a
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    return v0

    :cond_11
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :cond_17
    :goto_17
    return v0
.end method
