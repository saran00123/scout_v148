.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field indicatorAnimator:Landroid/animation/ValueAnimator;

.field private layoutDirection:I

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .registers 3

    .line 2968
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    .line 2969
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2961
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2966
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    const/4 p1, 0x0

    .line 2970
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Landroid/view/View;Landroid/view/View;F)V
    .registers 4

    .line 2959
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->tweenIndicatorPosition(Landroid/view/View;Landroid/view/View;F)V

    return-void
.end method

.method private jumpIndicatorToSelectedPosition()V
    .registers 5

    .line 3107
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3108
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout;->access$1200(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->setIndicatorBoundsForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private tweenIndicatorPosition(Landroid/view/View;Landroid/view/View;F)V
    .registers 11

    if-eqz p1, :cond_a

    .line 3128
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_1e

    .line 3130
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->access$1200(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->setIndicatorBoundsForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V

    goto :goto_3a

    .line 3134
    :cond_1e
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object p2, p2, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 3135
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object p3, p3, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    const/4 v0, -0x1

    .line 3134
    invoke-virtual {p1, v0, p2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3138
    :goto_3a
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private updateOrRecreateIndicatorAnimation(ZII)V
    .registers 7

    .line 3168
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3169
    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_10

    .line 3172
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToSelectedPosition()V

    return-void

    .line 3178
    :cond_10
    new-instance v2, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;-><init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_3f

    .line 3188
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 3189
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, p3

    .line 3190
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    .line 3191
    new-array p3, p3, [F

    fill-array-data p3, :array_4a

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3192
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3193
    new-instance p3, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;

    invoke-direct {p3, p0, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$2;-><init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3205
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_49

    .line 3208
    :cond_3f
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3209
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_49
    return-void

    :array_4a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .registers 4

    .line 3151
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3152
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    const/4 v0, 0x1

    .line 3155
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    return-void
.end method

.method childrenNeedLayout()Z
    .registers 5

    .line 2980
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_17

    .line 2981
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2982
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3215
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gez v0, :cond_16

    .line 3217
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3223
    :cond_16
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v3, :cond_2d

    if-eq v1, v4, :cond_46

    const/4 v0, 0x3

    if-eq v1, v0, :cond_28

    move v0, v2

    goto :goto_46

    .line 3238
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v0

    goto :goto_46

    .line 3229
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v2, v1, 0x2

    .line 3230
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    div-int/lit8 v0, v1, 0x2

    goto :goto_46

    .line 3225
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    .line 3226
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v0

    .line 3245
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_95

    .line 3248
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3249
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3251
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 3255
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout;->access$1400(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v1

    if-eqz v1, :cond_92

    .line 3256
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3257
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_89

    .line 3258
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout;->access$1400(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_92

    .line 3260
    :cond_89
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v1}, Lcom/google/android/material/tabs/TabLayout;->access$1400(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 3264
    :cond_92
    :goto_92
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3268
    :cond_95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getIndicatorPosition()F
    .registers 3

    .line 3011
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 3090
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 3092
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    .line 3097
    iget p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    goto :goto_18

    .line 3101
    :cond_15
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->jumpIndicatorToSelectedPosition()V

    :goto_18
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 3030
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 3032
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_c

    return-void

    .line 3041
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-ne v0, v1, :cond_7d

    .line 3042
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_21
    if-ge v4, v0, :cond_38

    .line 3047
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3048
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_35

    .line 3049
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_38
    if-gtz v5, :cond_3b

    return-void

    .line 3058
    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    mul-int v6, v5, v0

    .line 3061
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v4, v1

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_70

    move v1, v3

    :goto_51
    if-ge v3, v0, :cond_78

    .line 3065
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 3066
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v5, :cond_68

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6d

    .line 3067
    :cond_68
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3068
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v1, v2

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 3076
    :cond_70
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iput v3, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 3077
    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    move v1, v2

    :cond_78
    if-eqz v1, :cond_7d

    .line 3083
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7d
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4

    .line 3016
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 3020
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_12

    .line 3021
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    if-eq v0, p1, :cond_12

    .line 3022
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 3023
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    :cond_12
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .registers 4

    .line 2997
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2998
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3001
    :cond_f
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 3002
    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 3004
    iget p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3005
    iget p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 3007
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->tweenIndicatorPosition(Landroid/view/View;Landroid/view/View;F)V

    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .registers 6

    .line 2974
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2975
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2976
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->requestLayout()V

    return-void
.end method
