.class public Lcom/google/android/material/internal/ForegroundLinearLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ForegroundLinearLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private foreground:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field foregroundBoundsChanged:Z

.field private foregroundGravity:I

.field protected mForegroundInPadding:Z

.field private final overlayBounds:Landroid/graphics/Rect;

.field private final selfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->selfBounds:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->overlayBounds:Landroid/graphics/Rect;

    const/16 v0, 0x77

    .line 47
    iput v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 65
    sget-object v4, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout:[I

    new-array v7, v1, [I

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 66
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    sget p2, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout_android_foregroundGravity:I

    iget p3, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 70
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 72
    sget p2, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout_android_foreground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3c

    .line 74
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/ForegroundLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_3c
    sget p2, Lcom/google/android/material/R$styleable;->ForegroundLinearLayout_foregroundInsidePadding:I

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 205
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->draw(Landroid/graphics/Canvas;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_54

    .line 210
    iget-boolean v1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    if-eqz v1, :cond_51

    const/4 v1, 0x0

    .line 211
    iput-boolean v1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    .line 212
    iget-object v2, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->selfBounds:Landroid/graphics/Rect;

    .line 213
    iget-object v3, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->overlayBounds:Landroid/graphics/Rect;

    .line 215
    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 216
    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    .line 218
    iget-boolean v6, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    if-eqz v6, :cond_2c

    .line 219
    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_41

    .line 222
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    .line 221
    invoke-virtual {v2, v1, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 225
    :goto_41
    iget v1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 227
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 228
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 225
    invoke-static {v1, v4, v5, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 231
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 234
    :cond_51
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_54
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 242
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawableHotspotChanged(FF)V

    .line 243
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 244
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_a
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 138
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawableStateChanged()V

    .line 139
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 140
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_16
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .line 130
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->jumpDrawablesToCurrentState()V

    .line 131
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 132
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 193
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 194
    iget-boolean p2, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_40

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_f
    iput-object p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_36

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->setWillNotDraw(Z)V

    .line 163
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 167
    :cond_27
    iget v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_3a

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 169
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_3a

    :cond_36
    const/4 p1, 0x1

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ForegroundLinearLayout;->setWillNotDraw(Z)V

    .line 174
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->requestLayout()V

    .line 175
    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->invalidate()V

    :cond_40
    return-void
.end method

.method public setForegroundGravity(I)V
    .registers 3

    .line 102
    iget v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    if-eq v0, p1, :cond_2d

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x30

    .line 111
    :cond_14
    iput p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    .line 113
    iget p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/16 v0, 0x77

    if-ne p1, v0, :cond_2a

    iget-object p1, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2a

    .line 114
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 118
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->requestLayout()V

    :cond_2d
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/material/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
