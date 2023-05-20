.class public Lq/rorbin/badgeview/QBadgeView;
.super Landroid/view/View;
.source "QBadgeView.java"

# interfaces
.implements Lq/rorbin/badgeview/Badge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/rorbin/badgeview/QBadgeView$BadgeContainer;
    }
.end annotation


# instance fields
.field protected mActivityRoot:Landroid/view/ViewGroup;

.field protected mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

.field protected mBackgroundBorderWidth:F

.field protected mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

.field protected mBadgeBackgroundPaint:Landroid/graphics/Paint;

.field protected mBadgeBackgroundRect:Landroid/graphics/RectF;

.field protected mBadgeCenter:Landroid/graphics/PointF;

.field protected mBadgeGravity:I

.field protected mBadgeNumber:I

.field protected mBadgePadding:F

.field protected mBadgeText:Ljava/lang/String;

.field protected mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field protected mBadgeTextPaint:Landroid/text/TextPaint;

.field protected mBadgeTextRect:Landroid/graphics/RectF;

.field protected mBadgeTextSize:F

.field protected mBitmapClip:Landroid/graphics/Bitmap;

.field protected mColorBackground:I

.field protected mColorBackgroundBorder:I

.field protected mColorBadgeText:I

.field protected mControlPoint:Landroid/graphics/PointF;

.field protected mDefalutRadius:F

.field protected mDragCenter:Landroid/graphics/PointF;

.field protected mDragOutOfRange:Z

.field protected mDragPath:Landroid/graphics/Path;

.field protected mDragQuadrant:I

.field protected mDragStateChangedListener:Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;

.field protected mDraggable:Z

.field protected mDragging:Z

.field protected mDrawableBackground:Landroid/graphics/drawable/Drawable;

.field protected mDrawableBackgroundClip:Z

.field protected mExact:Z

.field protected mFinalDragDistance:F

.field protected mGravityOffsetX:F

.field protected mGravityOffsetY:F

.field protected mHeight:I

.field protected mInnertangentPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field protected mRowBadgeCenter:Landroid/graphics/PointF;

.field protected mShowShadow:Z

.field protected mTargetView:Landroid/view/View;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->init()V

    return-void
.end method

.method private createClipLayer()V
    .registers 12

    .line 465
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 468
    :cond_5
    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackgroundClip:Z

    if-nez v0, :cond_a

    return-void

    .line 471
    :cond_a
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 472
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 474
    :cond_19
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->getBadgeCircleRadius()F

    move-result v0

    .line 475
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_9d

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_31

    goto :goto_9d

    .line 482
    :cond_31
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    .line 483
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 482
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    .line 484
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 485
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 486
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v8, v0, v2

    .line 487
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v2

    iget-object v10, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    .line 486
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_c6

    .line 489
    :cond_7b
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 490
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    .line 489
    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_c6

    :cond_9d
    :goto_9d
    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 476
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    .line 478
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 479
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 480
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    .line 479
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_c6
    return-void
.end method

.method private drawBadge(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V
    .registers 10

    .line 394
    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    iget v0, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    return-void

    .line 397
    :cond_f
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_94

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_24

    goto :goto_94

    .line 411
    :cond_24
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 412
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 413
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->right:F

    .line 414
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 415
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v2

    .line 416
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7b

    .line 417
    invoke-direct {p0, p1}, Lq/rorbin/badgeview/QBadgeView;->drawBadgeBackground(Landroid/graphics/Canvas;)V

    goto :goto_d6

    .line 419
    :cond_7b
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p3, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 420
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBackgroundBorder:I

    if-eqz v0, :cond_d6

    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBackgroundBorderWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d6

    .line 421
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_d6

    .line 398
    :cond_94
    :goto_94
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/PointF;->x:F

    float-to-int v4, p3

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 399
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 400
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 401
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 402
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_ba

    .line 403
    invoke-direct {p0, p1}, Lq/rorbin/badgeview/QBadgeView;->drawBadgeBackground(Landroid/graphics/Canvas;)V

    goto :goto_d6

    .line 405
    :cond_ba
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, p3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 406
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBackgroundBorder:I

    if-eqz v0, :cond_d6

    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBackgroundBorderWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d6

    .line 407
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p3, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 425
    :cond_d6
    :goto_d6
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_fb

    .line 426
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, p2, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_fb
    return-void
.end method

.method private drawBadgeBackground(Landroid/graphics/Canvas;)V
    .registers 13

    .line 434
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 435
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    .line 436
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    .line 437
    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    .line 438
    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    .line 439
    iget-boolean v4, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackgroundClip:Z

    if-eqz v4, :cond_38

    .line 440
    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 441
    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    const/4 v9, 0x0

    const/16 v10, 0x1f

    move-object v4, p1

    .line 442
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 444
    :cond_38
    iget-object v4, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 445
    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 446
    iget-boolean v2, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackgroundClip:Z

    if-eqz v2, :cond_a5

    .line 447
    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 448
    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBitmapClip:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 450
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 451
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_8c

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_78

    goto :goto_8c

    .line 455
    :cond_78
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    .line 456
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    .line 455
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_ac

    .line 452
    :cond_8c
    :goto_8c
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    .line 453
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    .line 452
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_ac

    .line 460
    :cond_a5
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_ac
    return-void
.end method

.method private drawDragging(Landroid/graphics/Canvas;FF)V
    .registers 13

    .line 338
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    .line 339
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 340
    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_38

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    div-double/2addr v3, v0

    .line 344
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v5, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-static {v0, p3, v1, v5}, Lq/rorbin/badgeview/MathUtil;->getInnertangentPoints(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    .line 345
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-static {p3, p2, v0, v1}, Lq/rorbin/badgeview/MathUtil;->getInnertangentPoints(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    goto :goto_50

    .line 347
    :cond_38
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v5, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-static {v0, p3, v1, v5}, Lq/rorbin/badgeview/MathUtil;->getInnertangentPoints(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    .line 348
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-static {p3, p2, v0, v1}, Lq/rorbin/badgeview/MathUtil;->getInnertangentPoints(Landroid/graphics/PointF;FLjava/lang/Double;Ljava/util/List;)V

    .line 350
    :goto_50
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 351
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_6b

    if-ne v3, v5, :cond_68

    goto :goto_6b

    :cond_68
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_6d

    :cond_6b
    :goto_6b
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    :goto_6d
    invoke-virtual {p3, v0, v1, p2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 353
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/PointF;->x:F

    .line 354
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    div-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/PointF;->y:F

    .line 355
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 356
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1, v3, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 357
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 358
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1, v3, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 359
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 360
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 361
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 364
    iget p3, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBackgroundBorder:I

    if-eqz p3, :cond_258

    iget p3, p0, Lq/rorbin/badgeview/QBadgeView;->mBackgroundBorderWidth:F

    cmpl-float p3, p3, v2

    if-lez p3, :cond_258

    .line 365
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 366
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 367
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 368
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 369
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 372
    iget p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    if-eq p3, v4, :cond_1d1

    if-ne p3, v5, :cond_1b3

    goto :goto_1d1

    .line 376
    :cond_1b3
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v0

    .line 377
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    goto :goto_1ee

    .line 373
    :cond_1d1
    :goto_1d1
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v0

    .line 374
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    :goto_1ee
    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, p3

    float-to-double v2, v0

    .line 379
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    iget p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    add-int/lit8 v0, p3, -0x1

    if-nez v0, :cond_1ff

    const/4 p3, 0x4

    goto :goto_200

    :cond_1ff
    sub-int/2addr p3, v4

    :goto_200
    invoke-static {v2, v3, p3}, Lq/rorbin/badgeview/MathUtil;->getTanRadian(DI)D

    move-result-wide v2

    invoke-static {v2, v3}, Lq/rorbin/badgeview/MathUtil;->radianToAngle(D)D

    move-result-wide v2

    double-to-float p3, v2

    sub-float v7, v1, p3

    .line 381
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p3, v0, :cond_231

    .line 382
    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float v3, p3, p2

    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float v4, p3, p2

    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    add-float v5, p3, p2

    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    add-float v6, p3, p2

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->addArc(FFFFFF)V

    goto :goto_251

    .line 386
    :cond_231
    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p2

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p2

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v7, p2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 389
    :goto_251
    iget-object p2, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    iget-object p3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_258
    return-void
.end method

.method private findActivityRoot(Landroid/view/View;)V
    .registers 3

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_18

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lq/rorbin/badgeview/QBadgeView;->findActivityRoot(Landroid/view/View;)V

    goto :goto_20

    .line 192
    :cond_18
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 193
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mActivityRoot:Landroid/view/ViewGroup;

    :cond_20
    :goto_20
    return-void
.end method

.method private findBadgeCenter()V
    .registers 7

    .line 508
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    .line 509
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 510
    :goto_1d
    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeGravity:I

    const/high16 v2, 0x40000000    # 2.0f

    sparse-switch v1, :sswitch_data_10c

    goto/16 :goto_107

    .line 524
    :sswitch_26
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    iget v5, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v4, v5

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 525
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v0, v0

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    add-float/2addr v3, v5

    iget-object v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_107

    .line 516
    :sswitch_48
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v3, v4

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 517
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v0, v0

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_107

    .line 520
    :sswitch_66
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    iget v5, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v4, v5

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 521
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    add-float/2addr v0, v5

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_107

    .line 512
    :sswitch_84
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v3, v4

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 513
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    add-float/2addr v0, v4

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_107

    .line 544
    :sswitch_9d
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    iget v5, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v4, v5

    div-float/2addr v0, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 545
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_107

    .line 540
    :sswitch_b3
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v3, v4

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 541
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_107

    .line 536
    :sswitch_c5
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 537
    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v1, v1

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_107

    .line 532
    :sswitch_e1
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 533
    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    iget v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_107

    .line 528
    :sswitch_f9
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 529
    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 548
    :goto_107
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->initRowBadgeCenter()V

    return-void

    nop

    :sswitch_data_10c
    .sparse-switch
        0x11 -> :sswitch_f9
        0x31 -> :sswitch_e1
        0x51 -> :sswitch_c5
        0x800013 -> :sswitch_b3
        0x800015 -> :sswitch_9d
        0x800033 -> :sswitch_84
        0x800035 -> :sswitch_66
        0x800053 -> :sswitch_48
        0x800055 -> :sswitch_26
    .end sparse-switch
.end method

.method private findViewRoot(Landroid/view/View;)V
    .registers 3

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mActivityRoot:Landroid/view/ViewGroup;

    .line 184
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mActivityRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_f

    .line 185
    invoke-direct {p0, p1}, Lq/rorbin/badgeview/QBadgeView;->findActivityRoot(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method private getBadgeCircleRadius()F
    .registers 4

    .line 496
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 497
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    return v0

    .line 498
    :cond_b
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_3e

    .line 499
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    if-lez v0, :cond_32

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    .line 500
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    iget v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    goto :goto_3b

    :cond_32
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    .line 501
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    :goto_3b
    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0

    .line 503
    :cond_3e
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    return v0
.end method

.method private init()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1}, Lq/rorbin/badgeview/QBadgeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 104
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    .line 105
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    .line 106
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mDragPath:Landroid/graphics/Path;

    .line 107
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    .line 108
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    .line 109
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    .line 110
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mControlPoint:Landroid/graphics/PointF;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mInnertangentPoints:Ljava/util/List;

    .line 112
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    .line 113
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 114
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 115
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 116
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    .line 121
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, -0x17b1c0

    .line 123
    iput v1, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBackground:I

    const/4 v1, -0x1

    .line 124
    iput v1, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBadgeText:I

    .line 125
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v1, v2}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextSize:F

    .line 126
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    const/4 v1, 0x0

    .line 127
    iput v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    const v2, 0x800035

    .line 128
    iput v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeGravity:I

    .line 129
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    .line 130
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    .line 131
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v2, v3}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lq/rorbin/badgeview/QBadgeView;->mFinalDragDistance:F

    .line 132
    iput-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mShowShadow:Z

    .line 133
    iput-boolean v1, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackgroundClip:Z

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e3

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 135
    invoke-virtual {p0, v0}, Lq/rorbin/badgeview/QBadgeView;->setTranslationZ(F)V

    :cond_e3
    return-void
.end method

.method private initPaints()V
    .registers 3

    .line 329
    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mShowShadow:Z

    invoke-direct {p0, v0}, Lq/rorbin/badgeview/QBadgeView;->showShadowImpl(Z)V

    .line 330
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBackgroundBorder:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBackgroundBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 333
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBadgeText:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 334
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private initRowBadgeCenter()V
    .registers 5

    const/4 v0, 0x2

    .line 567
    new-array v0, v0, [I

    .line 568
    invoke-virtual {p0, v0}, Lq/rorbin/badgeview/QBadgeView;->getLocationOnScreen([I)V

    .line 569
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 570
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private measureText()V
    .registers 4

    .line 552
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 553
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 554
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 555
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 556
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_3e

    .line 558
    :cond_16
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 559
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 560
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 561
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 563
    :goto_3e
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->createClipLayer()V

    return-void
.end method

.method private onPointerUp()V
    .registers 2

    .line 238
    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragOutOfRange:Z

    if-eqz v0, :cond_e

    .line 239
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lq/rorbin/badgeview/QBadgeView;->animateHide(Landroid/graphics/PointF;)V

    const/4 v0, 0x5

    .line 240
    invoke-direct {p0, v0}, Lq/rorbin/badgeview/QBadgeView;->updataListener(I)V

    goto :goto_15

    .line 242
    :cond_e
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->reset()V

    const/4 v0, 0x4

    .line 243
    invoke-direct {p0, v0}, Lq/rorbin/badgeview/QBadgeView;->updataListener(I)V

    :goto_15
    return-void
.end method

.method private showShadowImpl(Z)V
    .registers 10

    .line 268
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 269
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v2, v3}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 270
    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    const/4 v5, 0x1

    const/high16 v6, -0x40400000    # -1.5f

    if-eq v4, v5, :cond_5a

    const/4 v5, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    if-eq v4, v5, :cond_49

    const/4 v5, 0x3

    if-eq v4, v5, :cond_38

    const/4 v5, 0x4

    if-eq v4, v5, :cond_27

    goto :goto_6a

    .line 284
    :cond_27
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 285
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    goto :goto_6a

    .line 280
    :cond_38
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 281
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    goto :goto_6a

    .line 276
    :cond_49
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 277
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    goto :goto_6a

    .line 272
    :cond_5a
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 273
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 288
    :goto_6a
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_7a

    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_7b

    :cond_7a
    const/4 p1, 0x0

    :goto_7b
    int-to-float v0, v0

    int-to-float v2, v2

    const/high16 v3, 0x33000000

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private updataListener(I)V
    .registers 4

    .line 814
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragStateChangedListener:Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;

    if-eqz v0, :cond_9

    .line 815
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mTargetView:Landroid/view/View;

    invoke-interface {v0, p1, p0, v1}, Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;->onDragStateChanged(ILq/rorbin/badgeview/Badge;Landroid/view/View;)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected animateHide(Landroid/graphics/PointF;)V
    .registers 4

    .line 574
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 577
    :cond_5
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lq/rorbin/badgeview/BadgeAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_f
    const/4 v0, 0x1

    .line 578
    invoke-virtual {p0, v0}, Lq/rorbin/badgeview/QBadgeView;->screenFromWindow(Z)V

    .line 579
    new-instance v0, Lq/rorbin/badgeview/BadgeAnimator;

    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->createBadgeBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lq/rorbin/badgeview/BadgeAnimator;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lq/rorbin/badgeview/QBadgeView;)V

    iput-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    .line 580
    iget-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-virtual {p1}, Lq/rorbin/badgeview/BadgeAnimator;->start()V

    const/4 p1, 0x0

    .line 581
    invoke-virtual {p0, p1}, Lq/rorbin/badgeview/QBadgeView;->setBadgeNumber(I)Lq/rorbin/badgeview/Badge;

    :cond_27
    return-void
.end method

.method public bindTarget(Landroid/view/View;)Lq/rorbin/badgeview/Badge;
    .registers 7

    if-eqz p1, :cond_5a

    .line 144
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 145
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 147
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 148
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_52

    .line 149
    iput-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mTargetView:Landroid/view/View;

    .line 150
    instance-of v1, v0, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;

    if-eqz v1, :cond_27

    .line 151
    check-cast v0, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;

    invoke-virtual {v0, p0}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->addView(Landroid/view/View;)V

    goto :goto_51

    .line 153
    :cond_27
    check-cast v0, Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 156
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 157
    new-instance v3, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;

    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;-><init>(Lq/rorbin/badgeview/QBadgeView;Landroid/content/Context;)V

    .line 158
    instance-of v4, v0, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_48

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->setId(I)V

    .line 161
    :cond_48
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {v3, p1}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v3, p0}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->addView(Landroid/view/View;)V

    :goto_51
    return-object p0

    .line 166
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "targetView must have a parent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "targetView can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createBadgeBitmap()Landroid/graphics/Bitmap;
    .registers 7

    .line 248
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    .line 249
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 248
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 251
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->getBadgeCircleRadius()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lq/rorbin/badgeview/QBadgeView;->drawBadge(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    return-object v0
.end method

.method public getBadgeBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 710
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBadgeBackgroundColor()I
    .registers 2

    .line 691
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBackground:I

    return v0
.end method

.method public getBadgeGravity()I
    .registers 2

    .line 786
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeGravity:I

    return v0
.end method

.method public getBadgeNumber()I
    .registers 2

    .line 626
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    return v0
.end method

.method public getBadgePadding(Z)F
    .registers 3

    if-eqz p1, :cond_e

    .line 748
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    invoke-static {p1, v0}, Lq/rorbin/badgeview/DisplayUtil;->px2dp(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_10

    :cond_e
    iget p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    :goto_10
    return p1
.end method

.method public getBadgeText()Ljava/lang/String;
    .registers 2

    .line 640
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeTextColor()I
    .registers 2

    .line 722
    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBadgeText:I

    return v0
.end method

.method public getBadgeTextSize(Z)F
    .registers 3

    if-eqz p1, :cond_e

    .line 735
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextSize:F

    invoke-static {p1, v0}, Lq/rorbin/badgeview/DisplayUtil;->px2dp(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_10

    :cond_e
    iget p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextSize:F

    :goto_10
    return p1
.end method

.method public getDragCenter()Landroid/graphics/PointF;
    .registers 2

    .line 827
    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDraggable:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGravityOffsetX(Z)F
    .registers 3

    if-eqz p1, :cond_e

    .line 804
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    invoke-static {p1, v0}, Lq/rorbin/badgeview/DisplayUtil;->px2dp(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_10

    :cond_e
    iget p1, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    :goto_10
    return p1
.end method

.method public getGravityOffsetY(Z)F
    .registers 3

    if-eqz p1, :cond_e

    .line 809
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    invoke-static {p1, v0}, Lq/rorbin/badgeview/DisplayUtil;->px2dp(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_10

    :cond_e
    iget p1, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    :goto_10
    return p1
.end method

.method public getTargetView()Landroid/view/View;
    .registers 2

    .line 173
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method public hide(Z)V
    .registers 2

    if-eqz p1, :cond_f

    .line 596
    iget-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mActivityRoot:Landroid/view/ViewGroup;

    if-eqz p1, :cond_f

    .line 597
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->initRowBadgeCenter()V

    .line 598
    iget-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Lq/rorbin/badgeview/QBadgeView;->animateHide(Landroid/graphics/PointF;)V

    goto :goto_13

    :cond_f
    const/4 p1, 0x0

    .line 600
    invoke-virtual {p0, p1}, Lq/rorbin/badgeview/QBadgeView;->setBadgeNumber(I)Lq/rorbin/badgeview/Badge;

    :goto_13
    return-void
.end method

.method public isDraggable()Z
    .registers 2

    .line 753
    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDraggable:Z

    return v0
.end method

.method public isExactMode()Z
    .registers 2

    .line 654
    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mExact:Z

    return v0
.end method

.method public isShowShadow()Z
    .registers 2

    .line 666
    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mShowShadow:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 178
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 179
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mActivityRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mTargetView:Landroid/view/View;

    invoke-direct {p0, v0}, Lq/rorbin/badgeview/QBadgeView;->findViewRoot(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 301
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lq/rorbin/badgeview/BadgeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 302
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mAnimator:Lq/rorbin/badgeview/BadgeAnimator;

    invoke-virtual {v0, p1}, Lq/rorbin/badgeview/BadgeAnimator;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 305
    :cond_10
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    if-eqz v0, :cond_78

    .line 306
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->initPaints()V

    .line 307
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->getBadgeCircleRadius()F

    move-result v0

    .line 308
    iget v1, p0, Lq/rorbin/badgeview/QBadgeView;->mDefalutRadius:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    iget-object v4, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    .line 309
    invoke-static {v3, v4}, Lq/rorbin/badgeview/MathUtil;->getPointDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    iget v4, p0, Lq/rorbin/badgeview/QBadgeView;->mFinalDragDistance:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 310
    iget-boolean v2, p0, Lq/rorbin/badgeview/QBadgeView;->mDraggable:Z

    if-eqz v2, :cond_70

    iget-boolean v2, p0, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    if-eqz v2, :cond_70

    .line 311
    iget-object v2, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget-object v3, p0, Lq/rorbin/badgeview/QBadgeView;->mRowBadgeCenter:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lq/rorbin/badgeview/MathUtil;->getQuadrant(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result v2

    iput v2, p0, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    .line 312
    iget-boolean v2, p0, Lq/rorbin/badgeview/QBadgeView;->mShowShadow:Z

    invoke-direct {p0, v2}, Lq/rorbin/badgeview/QBadgeView;->showShadowImpl(Z)V

    .line 313
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v2, v3}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_54

    const/4 v2, 0x1

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :goto_55
    iput-boolean v2, p0, Lq/rorbin/badgeview/QBadgeView;->mDragOutOfRange:Z

    if-eqz v2, :cond_63

    const/4 v1, 0x3

    .line 314
    invoke-direct {p0, v1}, Lq/rorbin/badgeview/QBadgeView;->updataListener(I)V

    .line 315
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, v0}, Lq/rorbin/badgeview/QBadgeView;->drawBadge(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    goto :goto_78

    :cond_63
    const/4 v2, 0x2

    .line 317
    invoke-direct {p0, v2}, Lq/rorbin/badgeview/QBadgeView;->updataListener(I)V

    .line 318
    invoke-direct {p0, p1, v1, v0}, Lq/rorbin/badgeview/QBadgeView;->drawDragging(Landroid/graphics/Canvas;FF)V

    .line 319
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, v0}, Lq/rorbin/badgeview/QBadgeView;->drawBadge(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    goto :goto_78

    .line 322
    :cond_70
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->findBadgeCenter()V

    .line 323
    iget-object v1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeCenter:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, v0}, Lq/rorbin/badgeview/QBadgeView;->drawBadge(Landroid/graphics/Canvas;Landroid/graphics/PointF;F)V

    :cond_78
    :goto_78
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 294
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 295
    iput p1, p0, Lq/rorbin/badgeview/QBadgeView;->mWidth:I

    .line 296
    iput p2, p0, Lq/rorbin/badgeview/QBadgeView;->mHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_45

    if-eq v0, v2, :cond_31

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    const/4 v3, 0x3

    if-eq v0, v3, :cond_31

    const/4 v3, 0x5

    if-eq v0, v3, :cond_45

    const/4 v3, 0x6

    if-eq v0, v3, :cond_31

    goto/16 :goto_ae

    .line 219
    :cond_18
    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    if-eqz v0, :cond_ae

    .line 220
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 221
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 222
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    goto/16 :goto_ae

    .line 228
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-nez v0, :cond_ae

    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    if-eqz v0, :cond_ae

    .line 229
    iput-boolean v1, p0, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    .line 230
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->onPointerUp()V

    goto :goto_ae

    .line 202
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 204
    iget-boolean v4, p0, Lq/rorbin/badgeview/QBadgeView;->mDraggable:Z

    if-eqz v4, :cond_ae

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-nez v4, :cond_ae

    iget-object v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_ae

    iget-object v4, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_ae

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_ae

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_ae

    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    if-eqz v0, :cond_ae

    .line 208
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->initRowBadgeCenter()V

    .line 209
    iput-boolean v2, p0, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    .line 210
    invoke-direct {p0, v2}, Lq/rorbin/badgeview/QBadgeView;->updataListener(I)V

    .line 211
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v0, v3}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDefalutRadius:F

    .line 212
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 213
    invoke-virtual {p0, v2}, Lq/rorbin/badgeview/QBadgeView;->screenFromWindow(Z)V

    .line 214
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 215
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 234
    :cond_ae
    :goto_ae
    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragging:Z

    if-nez v0, :cond_b8

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_b9

    :cond_b8
    move v1, v2

    :cond_b9
    return v1
.end method

.method public reset()V
    .registers 3

    .line 586
    iget-object v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragCenter:Landroid/graphics/PointF;

    const/high16 v1, -0x3b860000    # -1000.0f

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 587
    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x4

    .line 588
    iput v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDragQuadrant:I

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0, v0}, Lq/rorbin/badgeview/QBadgeView;->screenFromWindow(Z)V

    .line 590
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 591
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-void
.end method

.method protected screenFromWindow(Z)V
    .registers 4

    .line 256
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 257
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    if-eqz p1, :cond_1d

    .line 260
    iget-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mActivityRoot:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    .line 263
    :cond_1d
    iget-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lq/rorbin/badgeview/QBadgeView;->bindTarget(Landroid/view/View;)Lq/rorbin/badgeview/Badge;

    :goto_22
    return-void
.end method

.method public setBadgeBackground(Landroid/graphics/drawable/Drawable;)Lq/rorbin/badgeview/Badge;
    .registers 3

    const/4 v0, 0x0

    .line 696
    invoke-virtual {p0, p1, v0}, Lq/rorbin/badgeview/QBadgeView;->setBadgeBackground(Landroid/graphics/drawable/Drawable;Z)Lq/rorbin/badgeview/Badge;

    move-result-object p1

    return-object p1
.end method

.method public setBadgeBackground(Landroid/graphics/drawable/Drawable;Z)Lq/rorbin/badgeview/Badge;
    .registers 3

    .line 701
    iput-boolean p2, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackgroundClip:Z

    .line 702
    iput-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    .line 703
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->createClipLayer()V

    .line 704
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public setBadgeBackgroundColor(I)Lq/rorbin/badgeview/Badge;
    .registers 4

    .line 671
    iput p1, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBackground:I

    .line 672
    iget p1, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBackground:I

    if-nez p1, :cond_d

    .line 673
    iget-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_19

    .line 675
    :cond_d
    iget-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 677
    :goto_19
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public setBadgeGravity(I)Lq/rorbin/badgeview/Badge;
    .registers 3

    const v0, 0x800033

    if-eq p1, v0, :cond_33

    const v0, 0x800035

    if-eq p1, v0, :cond_33

    const v0, 0x800053

    if-eq p1, v0, :cond_33

    const v0, 0x800055

    if-eq p1, v0, :cond_33

    const/16 v0, 0x11

    if-eq p1, v0, :cond_33

    const/16 v0, 0x31

    if-eq p1, v0, :cond_33

    const/16 v0, 0x51

    if-eq p1, v0, :cond_33

    const v0, 0x800013

    if-eq p1, v0, :cond_33

    const v0, 0x800015

    if-ne p1, v0, :cond_2b

    goto :goto_33

    .line 776
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "only support Gravity.START | Gravity.TOP , Gravity.END | Gravity.TOP , Gravity.START | Gravity.BOTTOM , Gravity.END | Gravity.BOTTOM , Gravity.CENTER , Gravity.CENTER | Gravity.TOP , Gravity.CENTER | Gravity.BOTTOM ,Gravity.CENTER | Gravity.START , Gravity.CENTER | Gravity.END"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 773
    :cond_33
    :goto_33
    iput p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeGravity:I

    .line 774
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public setBadgeNumber(I)Lq/rorbin/badgeview/Badge;
    .registers 3

    .line 609
    iput p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    .line 610
    iget p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    if-gez p1, :cond_b

    const-string p1, ""

    .line 611
    iput-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    goto :goto_2f

    :cond_b
    const/16 v0, 0x63

    if-le p1, v0, :cond_1d

    .line 613
    iget-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mExact:Z

    if-eqz v0, :cond_18

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_18
    const-string p1, "99+"

    :goto_1a
    iput-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    goto :goto_2f

    :cond_1d
    if-lez p1, :cond_28

    if-gt p1, v0, :cond_28

    .line 615
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    goto :goto_2f

    .line 616
    :cond_28
    iget p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    if-nez p1, :cond_2f

    const/4 p1, 0x0

    .line 617
    iput-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    .line 619
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->measureText()V

    .line 620
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public setBadgePadding(FZ)Lq/rorbin/badgeview/Badge;
    .registers 3

    if-eqz p2, :cond_b

    .line 740
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    :cond_b
    iput p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgePadding:F

    .line 741
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->createClipLayer()V

    .line 742
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public setBadgeText(Ljava/lang/String;)Lq/rorbin/badgeview/Badge;
    .registers 2

    .line 631
    iput-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 632
    iput p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    .line 633
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->measureText()V

    .line 634
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public setBadgeTextColor(I)Lq/rorbin/badgeview/Badge;
    .registers 2

    .line 715
    iput p1, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBadgeText:I

    .line 716
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public setBadgeTextSize(FZ)Lq/rorbin/badgeview/Badge;
    .registers 3

    if-eqz p2, :cond_b

    .line 727
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    :cond_b
    iput p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeTextSize:F

    .line 728
    invoke-direct {p0}, Lq/rorbin/badgeview/QBadgeView;->measureText()V

    .line 729
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public setExactMode(Z)Lq/rorbin/badgeview/Badge;
    .registers 3

    .line 645
    iput-boolean p1, p0, Lq/rorbin/badgeview/QBadgeView;->mExact:Z

    .line 646
    iget p1, p0, Lq/rorbin/badgeview/QBadgeView;->mBadgeNumber:I

    const/16 v0, 0x63

    if-le p1, v0, :cond_b

    .line 647
    invoke-virtual {p0, p1}, Lq/rorbin/badgeview/QBadgeView;->setBadgeNumber(I)Lq/rorbin/badgeview/Badge;

    :cond_b
    return-object p0
.end method

.method public setGravityOffset(FFZ)Lq/rorbin/badgeview/Badge;
    .registers 5

    if-eqz p3, :cond_b

    .line 796
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    :cond_b
    iput p1, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetX:F

    if-eqz p3, :cond_18

    .line 797
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p2, p1

    :cond_18
    iput p2, p0, Lq/rorbin/badgeview/QBadgeView;->mGravityOffsetY:F

    .line 798
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public setGravityOffset(FZ)Lq/rorbin/badgeview/Badge;
    .registers 3

    .line 791
    invoke-virtual {p0, p1, p1, p2}, Lq/rorbin/badgeview/QBadgeView;->setGravityOffset(FFZ)Lq/rorbin/badgeview/Badge;

    move-result-object p1

    return-object p1
.end method

.method public setOnDragStateChangedListener(Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;)Lq/rorbin/badgeview/Badge;
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 820
    :goto_5
    iput-boolean v0, p0, Lq/rorbin/badgeview/QBadgeView;->mDraggable:Z

    .line 821
    iput-object p1, p0, Lq/rorbin/badgeview/QBadgeView;->mDragStateChangedListener:Lq/rorbin/badgeview/Badge$OnDragStateChangedListener;

    return-object p0
.end method

.method public setShowShadow(Z)Lq/rorbin/badgeview/Badge;
    .registers 2

    .line 659
    iput-boolean p1, p0, Lq/rorbin/badgeview/QBadgeView;->mShowShadow:Z

    .line 660
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method

.method public stroke(IFZ)Lq/rorbin/badgeview/Badge;
    .registers 4

    .line 683
    iput p1, p0, Lq/rorbin/badgeview/QBadgeView;->mColorBackgroundBorder:I

    if-eqz p3, :cond_d

    .line 684
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lq/rorbin/badgeview/DisplayUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p2, p1

    :cond_d
    iput p2, p0, Lq/rorbin/badgeview/QBadgeView;->mBackgroundBorderWidth:F

    .line 685
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView;->invalidate()V

    return-object p0
.end method
