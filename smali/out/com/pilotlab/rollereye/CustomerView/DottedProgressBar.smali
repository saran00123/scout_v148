.class public Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;
.super Landroid/view/View;
.source "DottedProgressBar.java"


# instance fields
.field private isActiveDrawable:Z

.field private isInProgress:Z

.field private isInactiveDrawable:Z

.field private mActiveDot:Landroid/graphics/drawable/Drawable;

.field private mActiveDotColor:I

.field private mActiveDotIndex:I

.field private final mDotSize:F

.field private mEmptyDotsColor:I

.field private mHandler:Landroid/os/Handler;

.field private mInactiveDot:Landroid/graphics/drawable/Drawable;

.field private final mJumpingSpeed:I

.field private mNumberOfDots:I

.field private mPaddingLeft:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRunnable:Ljava/lang/Runnable;

.field private final mSpacing:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isActiveDrawable:Z

    .line 30
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInactiveDrawable:Z

    .line 38
    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)V

    iput-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mRunnable:Ljava/lang/Runnable;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/pilotlab/rollereye/R$styleable;->DottedProgressBar:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInProgress:Z

    .line 55
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mHandler:Landroid/os/Handler;

    .line 65
    :try_start_22
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 67
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 68
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    const/16 v3, 0x1c

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-lt v1, v3, :cond_47

    iget v1, p2, Landroid/util/TypedValue;->type:I

    if-gt v1, v2, :cond_47

    .line 71
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isActiveDrawable:Z

    .line 72
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v6, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mActiveDotColor:I

    goto :goto_59

    .line 73
    :cond_47
    iget v1, p2, Landroid/util/TypedValue;->type:I

    if-ne v1, v5, :cond_59

    .line 75
    iput-boolean v4, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isActiveDrawable:Z

    .line 76
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v6, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mActiveDot:Landroid/graphics/drawable/Drawable;

    :cond_59
    :goto_59
    const/4 v1, 0x5

    .line 79
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 80
    iget v6, p2, Landroid/util/TypedValue;->type:I

    if-lt v6, v3, :cond_74

    iget v3, p2, Landroid/util/TypedValue;->type:I

    if-gt v3, v2, :cond_74

    .line 83
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInactiveDrawable:Z

    .line 84
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mEmptyDotsColor:I

    goto :goto_86

    .line 85
    :cond_74
    iget v2, p2, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_86

    .line 87
    iput-boolean v4, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInactiveDrawable:Z

    .line 88
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mInactiveDot:Landroid/graphics/drawable/Drawable;

    .line 91
    :cond_86
    :goto_86
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    const/4 p2, 0x7

    const/16 v1, 0xa

    .line 93
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mSpacing:F

    const/4 p2, 0x2

    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mActiveDotIndex:I

    const/4 p2, 0x6

    const/16 v0, 0x1f4

    .line 99
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mJumpingSpeed:I

    .line 102
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 103
    iget-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    :try_end_b5
    .catchall {:try_start_22 .. :try_end_b5} :catchall_b9

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_b9
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mNumberOfDots:I

    return p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mActiveDotIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;I)I
    .registers 2

    .line 19
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mActiveDotIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)Ljava/lang/Runnable;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mJumpingSpeed:I

    return p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;)Landroid/os/Handler;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private calculateDotsNumber(I)I
    .registers 5

    int-to-float p1, p1

    .line 170
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mSpacing:F

    add-float v2, v0, v1

    div-float v2, p1, v2

    float-to-int v2, v2

    add-float/2addr v0, v1

    rem-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 171
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mPaddingLeft:I

    return v2
.end method


# virtual methods
.method public isInProgress()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInProgress:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 113
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 114
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 119
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 121
    :goto_4
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mNumberOfDots:I

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_5d

    .line 122
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingLeft()I

    move-result v1

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mPaddingLeft:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mSpacing:F

    div-float v4, v3, v2

    add-float/2addr v1, v4

    int-to-float v4, v0

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    add-float/2addr v3, v5

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 124
    iget-boolean v3, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInactiveDrawable:Z

    if-eqz v3, :cond_3e

    .line 125
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mInactiveDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v4, v1

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 126
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    .line 125
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mInactiveDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5a

    .line 129
    :cond_3e
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mEmptyDotsColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    .line 130
    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    div-float v5, v4, v2

    add-float/2addr v3, v5

    div-float/2addr v4, v2

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 134
    :cond_5d
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInProgress:Z

    if-eqz v0, :cond_b3

    .line 135
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mPaddingLeft:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mSpacing:F

    div-float v3, v1, v2

    add-float/2addr v0, v3

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mActiveDotIndex:I

    int-to-float v3, v3

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    add-float/2addr v1, v4

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 137
    iget-boolean v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isActiveDrawable:Z

    if-eqz v1, :cond_97

    .line 138
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mActiveDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingTop()I

    move-result v2

    int-to-float v3, v0

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 139
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 138
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mActiveDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b3

    .line 143
    :cond_97
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mActiveDotColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    .line 144
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    div-float v4, v3, v2

    add-float/2addr v1, v4

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 153
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 155
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    .line 156
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 157
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingTop()I

    .line 158
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingBottom()I

    .line 162
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mDotSize:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 164
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 165
    invoke-virtual {p0, v0, v2}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->setMeasuredDimension(II)V

    .line 166
    invoke-direct {p0, v1}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->calculateDotsNumber(I)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mNumberOfDots:I

    return-void
.end method

.method public startProgress()V
    .registers 3

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInProgress:Z

    const/4 v0, -0x1

    .line 179
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mActiveDotIndex:I

    .line 180
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopProgress()V
    .registers 3

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInProgress:Z

    .line 191
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->invalidate()V

    return-void
.end method
