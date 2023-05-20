.class public Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "TwoLevelHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# instance fields
.field protected mEnablePullToCloseTwoLevel:Z

.field protected mEnableTwoLevel:Z

.field protected mFloorDuration:I

.field protected mFloorRage:F

.field protected mHeaderHeight:I

.field protected mMaxRage:F

.field protected mPercent:F

.field protected mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field protected mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mRefreshRage:F

.field protected mSpinner:I

.field protected mTwoLevelListener:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mPercent:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 35
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRage:F

    const v0, 0x3ff33333    # 1.9f

    .line 36
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRage:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRage:F

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableTwoLevel:Z

    .line 39
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnablePullToCloseTwoLevel:Z

    const/16 v0, 0x3e8

    .line 40
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    .line 59
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 61
    sget-object v0, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlMaxRage:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRage:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRage:F

    .line 64
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlFloorRage:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRage:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRage:F

    .line 65
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlRefreshRage:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRage:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRage:F

    .line 66
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlFloorDuration:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    .line 67
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlEnableTwoLevel:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableTwoLevel:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableTwoLevel:Z

    .line 68
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlEnablePullToCloseTwoLevel:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnablePullToCloseTwoLevel:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnablePullToCloseTwoLevel:Z

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_a
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public finishTwoLevel()Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_7

    .line 369
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_7
    return-object p0
.end method

.method protected moveSpinner(I)V
    .registers 8

    .line 216
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 217
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mSpinner:I

    if-eq v1, p1, :cond_3c

    if-eqz v0, :cond_3c

    .line 218
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mSpinner:I

    .line 219
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    .line 220
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_1b

    .line 221
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3c

    .line 222
    :cond_1b
    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_3c

    .line 223
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 96
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onAttachedToWindow()V

    .line 97
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 98
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v0, :cond_17

    .line 100
    new-instance v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;

    :cond_17
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 106
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onDetachedFromWindow()V

    .line 107
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 77
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onFinishInflate()V

    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_23

    .line 80
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 81
    instance-of v3, v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v3, :cond_20

    .line 82
    move-object v0, v2

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 83
    move-object v0, v2

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mWrappedInternal:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 84
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_23

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 88
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v0, :cond_33

    .line 90
    new-instance v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;

    :cond_33
    return-void
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .registers 7
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 136
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    add-int v2, p3, p2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v1, p2

    div-float/2addr v2, v1

    .line 140
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRage:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_27

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mHeaderHeight:I

    if-nez v1, :cond_27

    .line 141
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mHeaderHeight:I

    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 143
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRage:F

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 144
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 146
    :cond_27
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-nez v1, :cond_4f

    .line 147
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_4f

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 149
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 150
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, p2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 151
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    :cond_4f
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mHeaderHeight:I

    .line 155
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 156
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    invoke-interface {p1, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestFloorDuration(I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 157
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnablePullToCloseTwoLevel:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, p0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 158
    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_2b

    .line 114
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_27

    .line 116
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 118
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->setMeasuredDimension(II)V

    goto :goto_2e

    .line 120
    :cond_27
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onMeasure(II)V

    goto :goto_2e

    .line 123
    :cond_2b
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onMeasure(II)V

    :goto_2e
    return-void
.end method

.method public onMoving(ZFIII)V
    .registers 13

    .line 197
    invoke-virtual {p0, p3}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->moveSpinner(I)V

    .line 198
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 199
    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_11

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 201
    invoke-interface/range {v0 .. v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onMoving(ZFIII)V

    :cond_11
    if-eqz p1, :cond_50

    .line 204
    iget p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mPercent:F

    iget p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRage:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_29

    cmpl-float p1, p2, p3

    if-ltz p1, :cond_29

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableTwoLevel:Z

    if-eqz p1, :cond_29

    .line 205
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v6, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_4e

    .line 206
    :cond_29
    iget p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mPercent:F

    iget p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRage:F

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_3d

    iget p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRage:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3d

    .line 207
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v6, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_4e

    .line 208
    :cond_3d
    iget p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mPercent:F

    iget p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRage:F

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_4e

    cmpg-float p1, p2, p3

    if-gez p1, :cond_4e

    .line 209
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v6, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 211
    :cond_4e
    :goto_4e
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mPercent:F

    :cond_50
    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .registers 8
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_7f

    .line 167
    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 168
    sget-object p2, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v1, :cond_53

    if-eq p2, v2, :cond_7f

    const/4 p1, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p2, p1, :cond_39

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1f

    goto :goto_7f

    .line 187
    :cond_1f
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_7f

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    if-eq p1, p0, :cond_7f

    .line 188
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7f

    .line 182
    :cond_39
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    if-eq p1, p0, :cond_7f

    .line 183
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    div-int/2addr p2, v2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_7f

    .line 170
    :cond_53
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    if-eq p2, p0, :cond_6c

    .line 171
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    div-int/2addr p3, v2

    int-to-long v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 173
    :cond_6c
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p2, :cond_7f

    .line 175
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mTwoLevelListener:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;

    if-eqz p3, :cond_7c

    .line 176
    invoke-interface {p3, p1}, Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;->onTwoLevel(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v1, 0x0

    :cond_7c
    :goto_7c
    invoke-interface {p2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_7f
    :goto_7f
    return-void
.end method

.method public openTwoLevel(Z)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_1b

    .line 383
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mTwoLevelListener:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;

    if-eqz p1, :cond_17

    if-eqz v1, :cond_17

    .line 384
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;->onTwoLevel(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_1b
    return-object p0
.end method

.method public setEnablePullToCloseTwoLevel(Z)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 305
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnablePullToCloseTwoLevel:Z

    if-eqz v0, :cond_b

    xor-int/lit8 p1, p1, 0x1

    .line 307
    invoke-interface {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_b
    return-object p0
.end method

.method public setEnableTwoLevel(Z)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 2

    .line 338
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableTwoLevel:Z

    return-object p0
.end method

.method public setFloorDuration(I)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 2

    .line 348
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    return-object p0
.end method

.method public setFloorRage(F)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 2

    .line 318
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRage:F

    return-object p0
.end method

.method public setMaxRage(F)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 3

    .line 287
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRage:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_18

    .line 288
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRage:F

    .line 289
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_18

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mHeaderHeight:I

    .line 292
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRage:F

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_18
    return-object p0
.end method

.method public setOnTwoLevelListener(Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mTwoLevelListener:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;

    return-object p0
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 252
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 7

    if-eqz p1, :cond_37

    .line 265
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_d

    .line 267
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    :cond_d
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_23

    .line 271
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_33

    .line 273
    :cond_23
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 275
    :goto_33
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 276
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mWrappedInternal:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    :cond_37
    return-object p0
.end method

.method public setRefreshRage(F)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .registers 2

    .line 328
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRage:F

    return-object p0
.end method
