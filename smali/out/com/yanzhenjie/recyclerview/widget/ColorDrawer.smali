.class Lcom/yanzhenjie/recyclerview/widget/ColorDrawer;
.super Lcom/yanzhenjie/recyclerview/widget/Drawer;
.source "ColorDrawer.java"


# direct methods
.method public constructor <init>(III)V
    .registers 5

    .line 29
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lcom/yanzhenjie/recyclerview/widget/ColorDrawer;->opaqueColor(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/yanzhenjie/recyclerview/widget/Drawer;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method public static opaqueColor(I)I
    .registers 4
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 41
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_7

    return p0

    .line 43
    :cond_7
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 44
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 45
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/16 v2, 0xff

    .line 46
    invoke-static {v2, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method
