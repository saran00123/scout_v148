.class public final Lcom/google/android/gms/internal/base/zae;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mAlpha:I

.field private mFrom:I

.field private zamz:Z

.field private zanh:I

.field private zani:J

.field private zanj:I

.field private zank:I

.field private zanl:I

.field private zanm:Z

.field private zann:Lcom/google/android/gms/internal/base/zai;

.field private zano:Landroid/graphics/drawable/Drawable;

.field private zanp:Landroid/graphics/drawable/Drawable;

.field private zanq:Z

.field private zanr:Z

.field private zans:Z

.field private zant:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zae;-><init>(Lcom/google/android/gms/internal/base/zai;)V

    if-nez p1, :cond_a

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/base/zag;->zacg()Lcom/google/android/gms/internal/base/zag;

    move-result-object p1

    .line 4
    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/base/zae;->zano:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zann:Lcom/google/android/gms/internal/base/zai;

    iget v1, v0, Lcom/google/android/gms/internal/base/zai;->zanw:I

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, v0, Lcom/google/android/gms/internal/base/zai;->zanw:I

    if-nez p2, :cond_20

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/base/zag;->zacg()Lcom/google/android/gms/internal/base/zag;

    move-result-object p2

    .line 10
    :cond_20
    iput-object p2, p0, Lcom/google/android/gms/internal/base/zae;->zanp:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/base/zae;->zann:Lcom/google/android/gms/internal/base/zai;

    iget v0, p1, Lcom/google/android/gms/internal/base/zai;->zanw:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p2

    or-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/gms/internal/base/zai;->zanw:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/base/zai;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->zanh:I

    const/16 v1, 0xff

    .line 16
    iput v1, p0, Lcom/google/android/gms/internal/base/zae;->zank:I

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zamz:Z

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/base/zai;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/base/zai;-><init>(Lcom/google/android/gms/internal/base/zai;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zann:Lcom/google/android/gms/internal/base/zai;

    return-void
.end method

.method private final canConstantState()Z
    .registers 3

    .line 55
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanq:Z

    if-nez v0, :cond_1c

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zano:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zanp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanr:Z

    .line 58
    iput-boolean v1, p0, Lcom/google/android/gms/internal/base/zae;->zanq:Z

    .line 59
    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanr:Z

    return v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 76
    iget v0, p0, Lcom/google/android/gms/internal/base/zae;->zanh:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_38

    if-eq v0, v1, :cond_a

    goto :goto_41

    .line 81
    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/base/zae;->zani:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_41

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/base/zae;->zani:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/base/zae;->zanl:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v1

    if-ltz v4, :cond_25

    goto :goto_26

    :cond_25
    move v3, v2

    :goto_26
    if-eqz v3, :cond_2a

    .line 85
    iput v2, p0, Lcom/google/android/gms/internal/base/zae;->zanh:I

    .line 86
    :cond_2a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    .line 87
    iget v2, p0, Lcom/google/android/gms/internal/base/zae;->zanj:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    float-to-int v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    goto :goto_41

    .line 77
    :cond_38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/base/zae;->zani:J

    .line 79
    iput v1, p0, Lcom/google/android/gms/internal/base/zae;->zanh:I

    move v3, v2

    .line 88
    :cond_41
    :goto_41
    iget v0, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    .line 89
    iget-boolean v1, p0, Lcom/google/android/gms/internal/base/zae;->zamz:Z

    .line 90
    iget-object v2, p0, Lcom/google/android/gms/internal/base/zae;->zano:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v4, p0, Lcom/google/android/gms/internal/base/zae;->zanp:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5d

    if-eqz v1, :cond_4f

    if-nez v0, :cond_52

    .line 94
    :cond_4f
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    :cond_52
    iget v1, p0, Lcom/google/android/gms/internal/base/zae;->zank:I

    if-ne v0, v1, :cond_5c

    .line 96
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 97
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5c
    return-void

    :cond_5d
    if-eqz v1, :cond_65

    .line 100
    iget v3, p0, Lcom/google/android/gms/internal/base/zae;->zank:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 101
    :cond_65
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_6f

    .line 103
    iget v1, p0, Lcom/google/android/gms/internal/base/zae;->zank:I

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6f
    if-lez v0, :cond_7c

    .line 105
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 106
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    iget p1, p0, Lcom/google/android/gms/internal/base/zae;->zank:I

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 108
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->invalidateSelf()V

    return-void
.end method

.method public final getChangingConfigurations()I
    .registers 3

    .line 33
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zae;->zann:Lcom/google/android/gms/internal/base/zai;

    iget v1, v1, Lcom/google/android/gms/internal/base/zai;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zae;->zann:Lcom/google/android/gms/internal/base/zai;

    iget v1, v1, Lcom/google/android/gms/internal/base/zai;->zanw:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/base/zae;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zann:Lcom/google/android/gms/internal/base/zai;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/base/zai;->mChangingConfigurations:I

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zann:Lcom/google/android/gms/internal/base/zai;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zano:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zae;->zanp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zano:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zae;->zanp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .registers 3

    .line 51
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zans:Z

    if-nez v0, :cond_19

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zano:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zae;->zanp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->zant:I

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zans:Z

    .line 54
    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/base/zae;->zant:I

    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 23
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 60
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanm:Z

    if-nez v0, :cond_26

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_26

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/base/zae;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zano:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zanp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanm:Z

    goto :goto_26

    .line 62
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zano:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zanp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 27
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method public final setAlpha(I)V
    .registers 4

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    iget v1, p0, Lcom/google/android/gms/internal/base/zae;->zank:I

    if-ne v0, v1, :cond_8

    .line 35
    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    .line 36
    :cond_8
    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->zank:I

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zano:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zanp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final startTransition(I)V
    .registers 3

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->mFrom:I

    .line 69
    iget v0, p0, Lcom/google/android/gms/internal/base/zae;->zank:I

    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->zanj:I

    .line 70
    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    const/16 p1, 0xfa

    .line 71
    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->zanl:I

    const/4 p1, 0x1

    .line 72
    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->zanh:I

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->invalidateSelf()V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 31
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method public final zacf()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zanp:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
