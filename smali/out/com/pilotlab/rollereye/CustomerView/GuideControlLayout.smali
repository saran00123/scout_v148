.class public Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;
.super Landroid/widget/RelativeLayout;
.source "GuideControlLayout.java"


# instance fields
.field private guide_control_finger_1:Landroid/widget/ImageView;

.field private guide_control_finger_2:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private remove_dp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x3c

    .line 25
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    .line 29
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private closeAnimator()V
    .registers 1

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f0d013e

    .line 35
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a03c2

    .line 36
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_1:Landroid/widget/ImageView;

    const p1, 0x7f0a03c3

    .line 37
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_2:Landroid/widget/ImageView;

    .line 39
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->startAnimator1()V

    .line 40
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->startAnimator2()V

    return-void
.end method

.method private startAnimator1()V
    .registers 16

    .line 45
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_1:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aput v5, v2, v6

    const-string v5, "translationX"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_1:Landroid/widget/ImageView;

    new-array v7, v1, [F

    iget-object v8, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v4

    aput v3, v7, v6

    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 47
    iget-object v7, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_1:Landroid/widget/ImageView;

    new-array v8, v1, [F

    aput v3, v8, v4

    iget-object v9, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v6

    invoke-static {v7, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 48
    iget-object v8, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_1:Landroid/widget/ImageView;

    new-array v9, v1, [F

    iget-object v10, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v9, v4

    aput v3, v9, v6

    invoke-static {v8, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 50
    iget-object v8, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_1:Landroid/widget/ImageView;

    new-array v9, v1, [F

    aput v3, v9, v4

    iget-object v10, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v9, v6

    const-string v10, "translationY"

    invoke-static {v8, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 51
    iget-object v9, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_1:Landroid/widget/ImageView;

    new-array v11, v1, [F

    iget-object v12, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v13, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v13, v13

    invoke-static {v12, v13}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    aput v12, v11, v4

    aput v3, v11, v6

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 52
    iget-object v11, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_1:Landroid/widget/ImageView;

    new-array v12, v1, [F

    aput v3, v12, v4

    iget-object v13, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v14, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v14, v14

    invoke-static {v13, v14}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v6

    invoke-static {v11, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 53
    iget-object v12, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_1:Landroid/widget/ImageView;

    new-array v1, v1, [F

    iget-object v13, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v14, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v14, v14

    invoke-static {v13, v14}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v13

    int-to-float v13, v13

    aput v13, v1, v4

    aput v3, v1, v6

    invoke-static {v12, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 57
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 58
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 59
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 60
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 62
    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 63
    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 64
    invoke-virtual {v3, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 65
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0x3e8

    .line 67
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startAnimator2()V
    .registers 12

    .line 71
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_2:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aput v5, v2, v6

    const-string v5, "translationX"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_2:Landroid/widget/ImageView;

    new-array v7, v1, [F

    iget-object v8, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v4

    aput v3, v7, v6

    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 73
    iget-object v7, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_2:Landroid/widget/ImageView;

    new-array v8, v1, [F

    aput v3, v8, v4

    iget-object v9, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v6

    invoke-static {v7, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 74
    iget-object v8, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->guide_control_finger_2:Landroid/widget/ImageView;

    new-array v1, v1, [F

    iget-object v9, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlLayout;->remove_dp:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v1, v4

    aput v3, v1, v6

    invoke-static {v8, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 75
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 76
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 77
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 78
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0x3e8

    .line 79
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
