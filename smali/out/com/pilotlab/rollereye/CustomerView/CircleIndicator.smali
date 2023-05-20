.class public Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$ReverseInterpolator;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDICATOR_WIDTH:I = 0x5


# instance fields
.field private mAnimatorIn:Landroid/animation/Animator;

.field private mAnimatorOut:Landroid/animation/Animator;

.field private mAnimatorResId:I

.field private mAnimatorReverseResId:I

.field private mImmediateAnimatorIn:Landroid/animation/Animator;

.field private mImmediateAnimatorOut:Landroid/animation/Animator;

.field private mIndicatorBackgroundResId:I

.field private mIndicatorHeight:I

.field private mIndicatorMargin:I

.field private mIndicatorUnselectedBackgroundResId:I

.field private mIndicatorWidth:I

.field private mInternalDataSetObserver:Landroid/database/DataSetObserver;

.field private final mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mLastPosition:I

.field private mViewpager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorMargin:I

    .line 30
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorWidth:I

    .line 31
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorHeight:I

    const v1, 0x7f01002c

    .line 32
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorResId:I

    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorReverseResId:I

    const v1, 0x7f080250

    .line 34
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 35
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 41
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mLastPosition:I

    .line 191
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 244
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorMargin:I

    .line 30
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorWidth:I

    .line 31
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorHeight:I

    const v1, 0x7f01002c

    .line 32
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorResId:I

    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorReverseResId:I

    const v1, 0x7f080250

    .line 34
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 35
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 41
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mLastPosition:I

    .line 191
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 244
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 29
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorMargin:I

    .line 30
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorWidth:I

    .line 31
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorHeight:I

    const v0, 0x7f01002c

    .line 32
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorResId:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorReverseResId:I

    const v0, 0x7f080250

    .line 34
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 35
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 41
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mLastPosition:I

    .line 191
    new-instance p3, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;

    invoke-direct {p3, p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V

    iput-object p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 244
    new-instance p3, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;

    invoke-direct {p3, p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V

    iput-object p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    .line 29
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorMargin:I

    .line 30
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorWidth:I

    .line 31
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorHeight:I

    const p4, 0x7f01002c

    .line 32
    iput p4, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorResId:I

    const/4 p4, 0x0

    .line 33
    iput p4, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorReverseResId:I

    const p4, 0x7f080250

    .line 34
    iput p4, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 35
    iput p4, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 41
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mLastPosition:I

    .line 191
    new-instance p3, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;

    invoke-direct {p3, p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V

    iput-object p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 244
    new-instance p3, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;

    invoke-direct {p3, p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V

    iput-object p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mViewpager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorIn:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)Landroid/animation/Animator;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorOut:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mLastPosition:I

    return p0
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;I)I
    .registers 2

    .line 25
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mLastPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    return p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    return p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->createIndicators()V

    return-void
.end method

.method private addIndicator(ILandroid/animation/Animator;)V
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 301
    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 302
    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    .line 303
    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 306
    :cond_c
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 308
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorWidth:I

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorHeight:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->addView(Landroid/view/View;II)V

    .line 309
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorMargin:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 311
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 312
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private checkIndicatorConfig(Landroid/content/Context;)V
    .registers 5

    .line 137
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorWidth:I

    const/high16 v1, 0x40a00000    # 5.0f

    if-gez v0, :cond_e

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    :cond_e
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorWidth:I

    .line 139
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorHeight:I

    if-gez v0, :cond_1c

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    :cond_1c
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorHeight:I

    .line 141
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorMargin:I

    if-gez v0, :cond_2a

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    :cond_2a
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorMargin:I

    .line 144
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorResId:I

    if-nez v0, :cond_33

    const v0, 0x7f01002c

    :cond_33
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorResId:I

    .line 147
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->createAnimatorOut(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorOut:Landroid/animation/Animator;

    .line 148
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->createAnimatorOut(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mImmediateAnimatorOut:Landroid/animation/Animator;

    .line 149
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mImmediateAnimatorOut:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 151
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->createAnimatorIn(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorIn:Landroid/animation/Animator;

    .line 152
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->createAnimatorIn(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mImmediateAnimatorIn:Landroid/animation/Animator;

    .line 153
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mImmediateAnimatorIn:Landroid/animation/Animator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 155
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    if-nez p1, :cond_60

    const p1, 0x7f080250

    :cond_60
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 157
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    if-nez p1, :cond_68

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    :cond_68
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    return-void
.end method

.method private createAnimatorIn(Landroid/content/Context;)Landroid/animation/Animator;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 169
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorReverseResId:I

    if-nez v0, :cond_14

    .line 170
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorResId:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 171
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$ReverseInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$ReverseInterpolator;-><init>(Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;Lcom/pilotlab/rollereye/CustomerView/CircleIndicator$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_18

    .line 173
    :cond_14
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    :goto_18
    return-object p1
.end method

.method private createAnimatorOut(Landroid/content/Context;)Landroid/animation/Animator;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 163
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorResId:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private createIndicators()V
    .registers 6

    .line 282
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->removeAllViews()V

    .line 283
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mViewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_10

    return-void

    .line 287
    :cond_10
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mViewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_2d

    if-ne v1, v2, :cond_23

    .line 291
    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mImmediateAnimatorOut:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->addIndicator(ILandroid/animation/Animator;)V

    goto :goto_2a

    .line 293
    :cond_23
    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mImmediateAnimatorIn:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->addIndicator(ILandroid/animation/Animator;)V

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2d
    return-void
.end method

.method private handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 75
    :cond_3
    sget-object v0, Lcom/pilotlab/rollereye/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x8

    const/4 v0, -0x1

    .line 77
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorWidth:I

    const/4 p2, 0x5

    .line 79
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorHeight:I

    const/4 p2, 0x6

    .line 81
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorMargin:I

    const p2, 0x7f01002c

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorResId:I

    const/4 p2, 0x1

    .line 87
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorReverseResId:I

    const/4 v2, 0x2

    const v3, 0x7f080250

    .line 89
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    const/4 v2, 0x3

    .line 92
    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    const/4 v2, 0x7

    .line 96
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ne v2, p2, :cond_4c

    goto :goto_4d

    :cond_4c
    move p2, v1

    .line 98
    :goto_4d
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->setOrientation(I)V

    const/4 p2, 0x4

    .line 100
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_58

    goto :goto_5a

    :cond_58
    const/16 p2, 0x11

    .line 102
    :goto_5a
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->setGravity(I)V

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->checkIndicatorConfig(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public configureIndicator(III)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    const v4, 0x7f01002c

    const/4 v5, 0x0

    const v6, 0x7f080250

    const v7, 0x7f080250

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 113
    invoke-virtual/range {v0 .. v7}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->configureIndicator(IIIIIII)V

    return-void
.end method

.method public configureIndicator(IIIIIII)V
    .registers 8
    .param p4    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 124
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorWidth:I

    .line 125
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorHeight:I

    .line 126
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorMargin:I

    .line 128
    iput p4, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorResId:I

    .line 129
    iput p5, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mAnimatorReverseResId:I

    .line 130
    iput p6, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 131
    iput p7, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 133
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->checkIndicatorConfig(Landroid/content/Context;)V

    return-void
.end method

.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mViewpager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_d

    .line 277
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 278
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mViewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void

    .line 274
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "can not find Viewpager , setViewPager first"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 3

    .line 180
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mViewpager:Landroidx/viewpager/widget/ViewPager;

    .line 181
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mViewpager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_2b

    const/4 p1, -0x1

    .line 182
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mLastPosition:I

    .line 183
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->createIndicators()V

    .line 184
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mViewpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 185
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mViewpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 186
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CircleIndicator;->mViewpager:Landroidx/viewpager/widget/ViewPager;

    .line 187
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 186
    invoke-interface {p1, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_2b
    return-void
.end method
