.class public Lcom/pilotlab/rollereye/CustomerView/PickerView;
.super Landroid/view/View;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/CustomerView/PickerView$onSelectListener;,
        Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;
    }
.end annotation


# static fields
.field public static final MARGIN_ALPHA:F = 2.8f

.field public static final SPEED:F = 2.0f

.field public static final TAG:Ljava/lang/String; = "PickerView"


# instance fields
.field private canScroll:Z

.field private isInit:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentSelected:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDownY:F

.field private mMaxTextAlpha:F

.field private mMaxTextSize:F

.field private mMinTextAlpha:F

.field private mMinTextSize:F

.field private mMoveLen:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectListener:Lcom/pilotlab/rollereye/CustomerView/PickerView$onSelectListener;

.field private mTask:Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

.field private mViewHeight:I

.field private mViewWidth:I

.field private nPaint:Landroid/graphics/Paint;

.field private timer:Ljava/util/Timer;

.field updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42a00000    # 80.0f

    .line 42
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextSize:F

    const/high16 v0, 0x42200000    # 40.0f

    .line 43
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextSize:F

    const/high16 v0, 0x437f0000    # 255.0f

    .line 45
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextAlpha:F

    const/high16 v0, 0x42f00000    # 120.0f

    .line 46
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextAlpha:F

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->isInit:Z

    .line 64
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/PickerView;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->updateHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->canScroll:Z

    .line 86
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mContext:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x42a00000    # 80.0f

    .line 42
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextSize:F

    const/high16 p2, 0x42200000    # 40.0f

    .line 43
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextSize:F

    const/high16 p2, 0x437f0000    # 255.0f

    .line 45
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextAlpha:F

    const/high16 p2, 0x42f00000    # 120.0f

    .line 46
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextAlpha:F

    const/4 p2, 0x0

    .line 56
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->isInit:Z

    .line 64
    new-instance p2, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/PickerView;)V

    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->updateHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 82
    iput-boolean p2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->canScroll:Z

    .line 92
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mContext:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/CustomerView/PickerView;)F
    .registers 1

    .line 23
    iget p0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    return p0
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/CustomerView/PickerView;F)F
    .registers 2

    .line 23
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    return p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/CustomerView/PickerView;)Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mTask:Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    return-object p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/CustomerView/PickerView;Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;)Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mTask:Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/CustomerView/PickerView;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->performSelect()V

    return-void
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mTask:Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    if-eqz v0, :cond_a

    .line 280
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mTask:Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    .line 283
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mLastDownY:F

    return-void
.end method

.method private doMove(Landroid/view/MotionEvent;)V
    .registers 7

    .line 288
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mLastDownY:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    .line 290
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextSize:F

    const v2, 0x40333333    # 2.8f

    mul-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_28

    .line 292
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->moveTailToHead()V

    .line 293
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextSize:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    goto :goto_3c

    :cond_28
    const v3, -0x3fcccccd    # -2.8f

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3c

    .line 296
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->moveHeadToTail()V

    .line 297
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextSize:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    .line 300
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mLastDownY:F

    .line 301
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->invalidate()V

    return-void
.end method

.method private doUp(Landroid/view/MotionEvent;)V
    .registers 9

    .line 306
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_14

    const/4 p1, 0x0

    .line 307
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    return-void

    .line 310
    :cond_14
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mTask:Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    if-eqz p1, :cond_1e

    .line 311
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;->cancel()Z

    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mTask:Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    .line 314
    :cond_1e
    new-instance p1, Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->updateHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;-><init>(Lcom/pilotlab/rollereye/CustomerView/PickerView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mTask:Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    .line 315
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mTask:Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xa

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private drawData(Landroid/graphics/Canvas;)V
    .registers 13

    .line 210
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    invoke-direct {p0, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->parabola(FF)F

    move-result v0

    .line 211
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextSize:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextSize:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    .line 212
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 213
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextAlpha:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextAlpha:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 216
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewHeight:I

    int-to-double v4, v1

    div-double/2addr v4, v2

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 217
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    float-to-double v5, v1

    .line 218
    iget v1, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v7, v1

    div-double/2addr v7, v2

    iget v1, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v9, v1

    div-double/2addr v9, v2

    add-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-float v1, v5

    .line 219
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    move v1, v0

    .line 221
    :goto_58
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    sub-int/2addr v2, v1

    if-ltz v2, :cond_64

    const/4 v2, -0x1

    .line 222
    invoke-direct {p0, p1, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_64
    move v1, v0

    .line 225
    :goto_65
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 226
    invoke-direct {p0, p1, v1, v0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->drawOtherText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_76
    return-void
.end method

.method private drawOtherText(Landroid/graphics/Canvas;II)V
    .registers 12

    .line 237
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextSize:F

    const v1, 0x40333333    # 2.8f

    mul-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v0, v1

    int-to-float v1, p3

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 239
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    invoke-direct {p0, v2, v0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->parabola(FF)F

    move-result v2

    .line 240
    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextSize:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextSize:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    .line 241
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->nPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->nPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextAlpha:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextAlpha:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 243
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewHeight:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    mul-float/2addr v1, v0

    float-to-double v0, v1

    add-double/2addr v2, v0

    double-to-float v0, v2

    .line 244
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->nPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    float-to-double v2, v0

    .line 245
    iget v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v6, v0

    div-double/2addr v6, v4

    iget v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    add-double/2addr v6, v0

    sub-double/2addr v2, v6

    double-to-float v0, v2

    .line 246
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    mul-int/2addr p3, p2

    add-int/2addr v2, p3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget p3, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewWidth:I

    int-to-double v1, p3

    div-double/2addr v1, v4

    double-to-float p3, v1

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->nPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drwaLine(Landroid/graphics/Canvas;)V
    .registers 11

    .line 197
    new-instance v6, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 198
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 200
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mContext:Landroid/content/Context;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMoveLen:F

    invoke-direct {p0, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->parabola(FF)F

    move-result v0

    .line 203
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextSize:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextSize:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    .line 204
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v1, v7

    sub-float/2addr v0, v8

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v0, v1

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewWidth:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v8

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v0, v1

    const/4 v1, 0x0

    move-object v0, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 205
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v8

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    add-float v2, v0, v1

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewWidth:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v8

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v0, v1

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .registers 5

    .line 171
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->timer:Ljava/util/Timer;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mPaint:Landroid/graphics/Paint;

    .line 175
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06013f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->nPaint:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->nPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->nPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 182
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->nPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private moveHeadToTail()V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private moveTailToHead()V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private parabola(FF)F
    .registers 5

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 258
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_12

    move p1, p2

    :cond_12
    return p1
.end method

.method private performSelect()V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mSelectListener:Lcom/pilotlab/rollereye/CustomerView/PickerView$onSelectListener;

    if-eqz v0, :cond_11

    .line 102
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/PickerView$onSelectListener;->onSelect(Ljava/lang/String;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 342
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->canScroll:Z

    if-eqz v0, :cond_9

    .line 343
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 187
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->isInit:Z

    if-eqz v0, :cond_d

    .line 190
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->drawData(Landroid/graphics/Canvas;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->drwaLine(Landroid/graphics/Canvas;)V

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 161
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 162
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewHeight:I

    .line 163
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewWidth:I

    .line 165
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mViewHeight:I

    int-to-float p1, p1

    const/high16 p2, 0x40e00000    # 7.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextSize:F

    .line 166
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMaxTextSize:F

    const p2, 0x400ccccd    # 2.2f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mMinTextSize:F

    .line 167
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    if-eq v0, v1, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    goto :goto_18

    .line 269
    :cond_d
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->doMove(Landroid/view/MotionEvent;)V

    goto :goto_18

    .line 272
    :cond_11
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->doUp(Landroid/view/MotionEvent;)V

    goto :goto_18

    .line 266
    :cond_15
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->doDown(Landroid/view/MotionEvent;)V

    :goto_18
    return v1
.end method

.method public setCanScroll(Z)V
    .registers 2

    .line 337
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->canScroll:Z

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    .line 108
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->invalidate()V

    return-void
.end method

.method public setOnSelectListener(Lcom/pilotlab/rollereye/CustomerView/PickerView$onSelectListener;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mSelectListener:Lcom/pilotlab/rollereye/CustomerView/PickerView$onSelectListener;

    return-void
.end method

.method public setSelected(I)V
    .registers 4

    .line 117
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    .line 118
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_1f

    :goto_10
    neg-int v1, p1

    if-ge v0, v1, :cond_2f

    .line 121
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->moveHeadToTail()V

    .line 122
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1f
    if-lez p1, :cond_2f

    :goto_21
    if-ge v0, p1, :cond_2f

    .line 126
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->moveTailToHead()V

    .line 127
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mCurrentSelected:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 129
    :cond_2f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->invalidate()V

    return-void
.end method

.method public setSelected(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 138
    :goto_1
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 139
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 140
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->setSelected(I)V

    goto :goto_1e

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView;->isInit:Z

    return-void
.end method
