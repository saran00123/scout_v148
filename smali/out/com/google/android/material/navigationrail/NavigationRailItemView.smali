.class final Lcom/google/android/material/navigationrail/NavigationRailItemView;
.super Lcom/google/android/material/navigation/NavigationBarItemView;
.source "NavigationRailItemView.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getItemDefaultMarginResId()I
    .registers 2
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation

    .line 64
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_navigation_rail_icon_margin:I

    return v0
.end method

.method protected getItemLayoutResId()I
    .registers 2
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .line 58
    sget v0, Lcom/google/android/material/R$layout;->mtrl_navigation_rail_item:I

    return v0
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 41
    invoke-super {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->onMeasure(II)V

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-nez p1, :cond_21

    .line 44
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailItemView;->getMeasuredHeight()I

    move-result v0

    .line 46
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailItemView;->getMeasuredWidthAndState()I

    move-result v0

    const/4 v1, 0x0

    .line 51
    invoke-static {p1, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailItemView;->setMeasuredDimension(II)V

    :cond_21
    return-void
.end method
