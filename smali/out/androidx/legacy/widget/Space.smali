.class public Landroidx/legacy/widget/Space;
.super Landroid/view/View;
.source "Space.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p0}, Landroidx/legacy/widget/Space;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x4

    .line 44
    invoke-virtual {p0, p1}, Landroidx/legacy/widget/Space;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method private static getDefaultSize2(II)I
    .registers 4

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_15

    if-eqz v0, :cond_19

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_13

    goto :goto_19

    :cond_13
    move p0, p1

    goto :goto_19

    .line 92
    :cond_15
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_19
    :goto_19
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-virtual {p0}, Landroidx/legacy/widget/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroidx/legacy/widget/Space;->getDefaultSize2(II)I

    move-result p1

    .line 109
    invoke-virtual {p0}, Landroidx/legacy/widget/Space;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroidx/legacy/widget/Space;->getDefaultSize2(II)I

    move-result p2

    .line 107
    invoke-virtual {p0, p1, p2}, Landroidx/legacy/widget/Space;->setMeasuredDimension(II)V

    return-void
.end method