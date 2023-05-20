.class public Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeMenuLayout.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/Controller;


# static fields
.field public static final DEFAULT_SCROLLER_DURATION:I = 0xc8


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContentViewId:I

.field private mDownX:I

.field private mDownY:I

.field private mDragging:Z

.field private mLastX:I

.field private mLastY:I

.field private mLeftViewId:I

.field private mOpenPercent:F

.field private mRightViewId:I

.field private mScaledMaximumFlingVelocity:I

.field private mScaledMinimumFlingVelocity:I

.field private mScaledTouchSlop:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mScrollerDuration:I

.field private mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

.field private mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

.field private mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private shouldResetSwipe:Z

.field private swipeEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 41
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLeftViewId:I

    .line 42
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentViewId:I

    .line 43
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mRightViewId:I

    const/high16 p3, 0x3f000000    # 0.5f

    .line 45
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mOpenPercent:F

    const/16 p3, 0xc8

    .line 46
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScrollerDuration:I

    const/4 p3, 0x1

    .line 59
    iput-boolean p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->swipeEnable:Z

    .line 76
    invoke-virtual {p0, p3}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->setClickable(Z)V

    .line 78
    sget-object p3, Lcom/yanzhenjie/recyclerview/x/R$styleable;->SwipeMenuLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 79
    sget p2, Lcom/yanzhenjie/recyclerview/x/R$styleable;->SwipeMenuLayout_leftViewId:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLeftViewId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLeftViewId:I

    .line 80
    sget p2, Lcom/yanzhenjie/recyclerview/x/R$styleable;->SwipeMenuLayout_contentViewId:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentViewId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentViewId:I

    .line 81
    sget p2, Lcom/yanzhenjie/recyclerview/x/R$styleable;->SwipeMenuLayout_rightViewId:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mRightViewId:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mRightViewId:I

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledTouchSlop:I

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledMinimumFlingVelocity:I

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledMaximumFlingVelocity:I

    .line 89
    new-instance p1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method private getSwipeDuration(Landroid/view/MotionEvent;I)I
    .registers 7

    .line 306
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v0

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 308
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/Horizontal;->getMenuWidth()I

    move-result v0

    .line 309
    div-int/lit8 v1, v0, 0x2

    .line 310
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 311
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    if-lez p2, :cond_3a

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 314
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_45

    .line 316
    :cond_3a
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v3

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 319
    :goto_45
    iget p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScrollerDuration:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private judgeOpenClose(II)V
    .registers 6

    .line 330
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    if-eqz v0, :cond_4f

    .line 331
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    .line 332
    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/Horizontal;->getMenuView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mOpenPercent:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4c

    .line 333
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledTouchSlop:I

    if-gt p1, v0, :cond_3e

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledTouchSlop:I

    if-le p1, p2, :cond_30

    goto :goto_3e

    .line 340
    :cond_30
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 341
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_4f

    .line 343
    :cond_3a
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenMenu()V

    goto :goto_4f

    .line 334
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpenNotEqual()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 335
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_4f

    .line 337
    :cond_48
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenMenu()V

    goto :goto_4f

    .line 347
    :cond_4c
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method private smoothOpenMenu(I)V
    .registers 5

    .line 463
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    if-eqz v0, :cond_10

    .line 464
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/yanzhenjie/recyclerview/Horizontal;->autoOpenMenu(Landroid/widget/OverScroller;II)V

    .line 465
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->invalidate()V

    :cond_10
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    if-eqz v0, :cond_33

    .line 368
    instance-of v0, v0, Lcom/yanzhenjie/recyclerview/RightHorizontal;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 369
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->scrollTo(II)V

    .line 370
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->invalidate()V

    goto :goto_33

    .line 372
    :cond_22
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->scrollTo(II)V

    .line 373
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->invalidate()V

    :cond_33
    :goto_33
    return-void
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 6

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 326
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getOpenPercent()F
    .registers 2

    .line 149
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mOpenPercent:F

    return v0
.end method

.method public hasLeftMenu()Z
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/LeftHorizontal;->canSwipe()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasRightMenu()Z
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->canSwipe()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isCompleteOpen()Z
    .registers 2

    .line 403
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isLeftCompleteOpen()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isRightMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isLeftCompleteOpen()Z
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/LeftHorizontal;->isCompleteClose(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isLeftMenuOpen()Z
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/LeftHorizontal;->isMenuOpen(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isLeftMenuOpenNotEqual()Z
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/LeftHorizontal;->isMenuOpenNotEqual(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isMenuOpen()Z
    .registers 2

    .line 388
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isLeftMenuOpen()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isRightMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isMenuOpenNotEqual()Z
    .registers 2

    .line 418
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isLeftMenuOpenNotEqual()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isRightMenuOpenNotEqual()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isRightCompleteOpen()Z
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->isCompleteClose(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isRightMenuOpen()Z
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->isMenuOpen(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isRightMenuOpenNotEqual()Z
    .registers 3

    .line 428
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->isMenuOpenNotEqual(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isSwipeEnable()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->swipeEnable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 94
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 95
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLeftViewId:I

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    if-nez v1, :cond_16

    .line 96
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    invoke-direct {v1, v0}, Lcom/yanzhenjie/recyclerview/LeftHorizontal;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    .line 99
    :cond_16
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mRightViewId:I

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    if-nez v1, :cond_29

    .line 100
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/yanzhenjie/recyclerview/RightHorizontal;

    invoke-direct {v1, v0}, Lcom/yanzhenjie/recyclerview/RightHorizontal;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    .line 103
    :cond_29
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentViewId:I

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    if-nez v1, :cond_38

    .line 104
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    goto :goto_5b

    .line 106
    :cond_38
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    const/16 v1, 0x11

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "You may not have set the ContentView."

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->addView(Landroid/view/View;)V

    :goto_5b
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 163
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 164
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isSwipeEnable()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 168
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_72

    const/4 v3, 0x1

    if-eq v1, v3, :cond_50

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2a

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1c

    return v0

    .line 190
    :cond_1c
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_29
    return v2

    .line 176
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDownX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDownY:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 178
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledTouchSlop:I

    if-le v1, v4, :cond_4f

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le v0, p1, :cond_4f

    move v2, v3

    :cond_4f
    return v2

    .line 181
    :cond_50
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    if-eqz v0, :cond_64

    .line 182
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/yanzhenjie/recyclerview/Horizontal;->isClickOnContentView(IF)Z

    move-result p1

    if-eqz p1, :cond_64

    move p1, v3

    goto :goto_65

    :cond_64
    move p1, v2

    .line 183
    :goto_65
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_71

    if-eqz p1, :cond_71

    .line 184
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    return v3

    :cond_71
    return v2

    .line 171
    :cond_72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLastX:I

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDownX:I

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDownY:I

    return v2
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 501
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_28

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p1

    .line 503
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p2

    .line 504
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 505
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getPaddingLeft()I

    move-result p4

    .line 506
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getPaddingTop()I

    move-result p5

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, p3

    .line 507
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mContentView:Landroid/view/View;

    add-int/2addr p1, p4

    add-int/2addr p2, p5

    invoke-virtual {p3, p4, p5, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 510
    :cond_28
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    if-eqz p1, :cond_4b

    .line 511
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/LeftHorizontal;->getMenuView()Landroid/view/View;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p3

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 515
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getPaddingTop()I

    move-result p5

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, p4

    neg-int p2, p2

    const/4 p4, 0x0

    add-int/2addr p3, p5

    .line 516
    invoke-virtual {p1, p2, p5, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 519
    :cond_4b
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    if-eqz p1, :cond_71

    .line 520
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->getMenuView()Landroid/view/View;

    move-result-object p1

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p3

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 524
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getPaddingTop()I

    move-result p5

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, p4

    .line 526
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getMeasuredWidthAndState()I

    move-result p4

    add-int/2addr p2, p4

    add-int/2addr p3, p5

    .line 527
    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    :cond_71
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 199
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isSwipeEnable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 203
    :cond_b
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_15

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 204
    :cond_15
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_153

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_54

    if-eq v0, v1, :cond_2c

    goto/16 :goto_161

    .line 283
    :cond_2c
    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDragging:Z

    .line 284
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 285
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/16 :goto_161

    .line 287
    :cond_3d
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDownX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 288
    iget v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDownY:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->judgeOpenClose(II)V

    goto/16 :goto_161

    .line 215
    :cond_54
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLastX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 216
    iget v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLastY:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    .line 217
    iget-boolean v4, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDragging:Z

    if-nez v4, :cond_7e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledTouchSlop:I

    if-le v4, v5, :cond_7e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v4, v1, :cond_7e

    .line 218
    iput-boolean v2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDragging:Z

    .line 220
    :cond_7e
    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDragging:Z

    if-eqz v1, :cond_161

    .line 221
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    if-eqz v1, :cond_8a

    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->shouldResetSwipe:Z

    if-eqz v1, :cond_a3

    :cond_8a
    if-gez v0, :cond_98

    .line 223
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    if-eqz v1, :cond_93

    .line 224
    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    goto :goto_a3

    .line 226
    :cond_93
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    goto :goto_a3

    .line 229
    :cond_98
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    if-eqz v1, :cond_9f

    .line 230
    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    goto :goto_a3

    .line 232
    :cond_9f
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    .line 236
    :cond_a3
    :goto_a3
    invoke-virtual {p0, v0, v3}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->scrollBy(II)V

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLastX:I

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLastY:I

    .line 239
    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->shouldResetSwipe:Z

    goto/16 :goto_161

    .line 244
    :cond_b8
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDownX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 245
    iget v4, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDownY:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 246
    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDragging:Z

    .line 247
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 248
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v3, v3

    .line 249
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 250
    iget v6, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledMinimumFlingVelocity:I

    if-le v5, v6, :cond_10a

    .line 251
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    if-eqz v0, :cond_10d

    .line 252
    invoke-direct {p0, p1, v5}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getSwipeDuration(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 253
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    instance-of v4, v4, Lcom/yanzhenjie/recyclerview/RightHorizontal;

    if-eqz v4, :cond_fd

    if-gez v3, :cond_f9

    .line 255
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenMenu(I)V

    goto :goto_106

    .line 257
    :cond_f9
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu(I)V

    goto :goto_106

    :cond_fd
    if-lez v3, :cond_103

    .line 261
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenMenu(I)V

    goto :goto_106

    .line 263
    :cond_103
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu(I)V

    .line 266
    :goto_106
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_10d

    .line 269
    :cond_10a
    invoke-direct {p0, v0, v4}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->judgeOpenClose(II)V

    .line 271
    :cond_10d
    :goto_10d
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 272
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 274
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDownX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_14c

    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mDownY:I

    int-to-float v0, v0

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_14c

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isLeftMenuOpen()Z

    move-result v0

    if-nez v0, :cond_14c

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isRightMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 276
    :cond_14c
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 277
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 210
    :cond_153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLastX:I

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mLastY:I

    .line 294
    :cond_161
    :goto_161
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scrollTo(II)V
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    if-nez v0, :cond_8

    .line 355
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_1f

    .line 357
    :cond_8
    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/Horizontal;->checkXY(II)Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    move-result-object p1

    .line 358
    iget-boolean p2, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->shouldResetSwipe:Z

    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->shouldResetSwipe:Z

    .line 359
    iget p2, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->x:I

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v0

    if-eq p2, v0, :cond_1f

    .line 360
    iget p2, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->x:I

    iget p1, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->y:I

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public setOpenPercent(F)V
    .registers 2

    .line 140
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mOpenPercent:F

    return-void
.end method

.method public setScrollerDuration(I)V
    .registers 2

    .line 158
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScrollerDuration:I

    return-void
.end method

.method public setSwipeEnable(Z)V
    .registers 2

    .line 122
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->swipeEnable:Z

    return-void
.end method

.method public smoothCloseLeftMenu()V
    .registers 2

    .line 476
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    if-eqz v0, :cond_9

    .line 477
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    .line 478
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_9
    return-void
.end method

.method public smoothCloseMenu()V
    .registers 2

    .line 471
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu(I)V

    return-void
.end method

.method public smoothCloseMenu(I)V
    .registers 5

    .line 492
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    if-eqz v0, :cond_10

    .line 493
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/yanzhenjie/recyclerview/Horizontal;->autoCloseMenu(Landroid/widget/OverScroller;II)V

    .line 494
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->invalidate()V

    :cond_10
    return-void
.end method

.method public smoothCloseRightMenu()V
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    if-eqz v0, :cond_9

    .line 485
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    .line 486
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_9
    return-void
.end method

.method public smoothOpenLeftMenu()V
    .registers 2

    .line 438
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenLeftMenu(I)V

    return-void
.end method

.method public smoothOpenLeftMenu(I)V
    .registers 3

    .line 448
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeLeftHorizontal:Lcom/yanzhenjie/recyclerview/LeftHorizontal;

    if-eqz v0, :cond_9

    .line 449
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    .line 450
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenMenu(I)V

    :cond_9
    return-void
.end method

.method public smoothOpenMenu()V
    .registers 2

    .line 433
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScrollerDuration:I

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenMenu(I)V

    return-void
.end method

.method public smoothOpenRightMenu()V
    .registers 2

    .line 443
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mScrollerDuration:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenRightMenu(I)V

    return-void
.end method

.method public smoothOpenRightMenu(I)V
    .registers 3

    .line 456
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeRightHorizontal:Lcom/yanzhenjie/recyclerview/RightHorizontal;

    if-eqz v0, :cond_9

    .line 457
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->mSwipeCurrentHorizontal:Lcom/yanzhenjie/recyclerview/Horizontal;

    .line 458
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenMenu(I)V

    :cond_9
    return-void
.end method
