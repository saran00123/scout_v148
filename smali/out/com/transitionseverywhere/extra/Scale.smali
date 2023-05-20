.class public Lcom/transitionseverywhere/extra/Scale;
.super Landroidx/transition/Visibility;
.source "Scale.java"


# static fields
.field static final PROPNAME_SCALE_X:Ljava/lang/String; = "scale:scaleX"

.field static final PROPNAME_SCALE_Y:Ljava/lang/String; = "scale:scaleY"


# instance fields
.field private mDisappearedScale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/transitionseverywhere/extra/Scale;->mDisappearedScale:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    .line 61
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/transitionseverywhere/extra/Scale;->mDisappearedScale:F

    .line 62
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/extra/Scale;->setDisappearedScale(F)Lcom/transitionseverywhere/extra/Scale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/transitionseverywhere/extra/Scale;->mDisappearedScale:F

    .line 89
    sget-object v0, Lcom/transitionseverywhere/R$styleable;->Scale:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 90
    sget p2, Lcom/transitionseverywhere/R$styleable;->Scale_disappearedScale:I

    iget v0, p0, Lcom/transitionseverywhere/extra/Scale;->mDisappearedScale:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transitionseverywhere/extra/Scale;->setDisappearedScale(F)Lcom/transitionseverywhere/extra/Scale;

    .line 91
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private createAnimation(Landroid/view/View;FFLandroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float v2, v0, p2

    mul-float v3, v0, p3

    mul-float/2addr p2, v1

    mul-float/2addr p3, v1

    if-eqz p4, :cond_40

    .line 104
    iget-object v4, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "scale:scaleX"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 105
    iget-object p4, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "scale:scaleY"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    if-eqz v4, :cond_32

    .line 110
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_32

    .line 111
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_32
    if-eqz p4, :cond_40

    .line 113
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_40

    .line 114
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 118
    :cond_40
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 121
    sget-object p4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v2, 0x1

    aput v3, v5, v2

    .line 122
    invoke-static {p1, p4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput p2, v4, v6

    aput p3, v4, v2

    .line 123
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 121
    invoke-static {p4, p2}, Lcom/transitionseverywhere/utils/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object p2

    .line 124
    new-instance p3, Lcom/transitionseverywhere/extra/Scale$1;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/transitionseverywhere/extra/Scale$1;-><init>(Lcom/transitionseverywhere/extra/Scale;Landroid/view/View;FF)V

    invoke-virtual {p0, p3}, Lcom/transitionseverywhere/extra/Scale;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-object p2
.end method


# virtual methods
.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 5
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 68
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "scale:scaleX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "scale:scaleY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 139
    iget p1, p0, Lcom/transitionseverywhere/extra/Scale;->mDisappearedScale:F

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p1, p4, p3}, Lcom/transitionseverywhere/extra/Scale;->createAnimation(Landroid/view/View;FFLandroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    iget p1, p0, Lcom/transitionseverywhere/extra/Scale;->mDisappearedScale:F

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p4, p1, p3}, Lcom/transitionseverywhere/extra/Scale;->createAnimation(Landroid/view/View;FFLandroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public setDisappearedScale(F)Lcom/transitionseverywhere/extra/Scale;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 83
    iput p1, p0, Lcom/transitionseverywhere/extra/Scale;->mDisappearedScale:F

    return-object p0

    .line 81
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "disappearedScale cannot be negative!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
