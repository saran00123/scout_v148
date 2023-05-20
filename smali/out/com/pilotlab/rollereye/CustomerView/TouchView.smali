.class public Lcom/pilotlab/rollereye/CustomerView/TouchView;
.super Landroid/view/View;
.source "TouchView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "rustAppTouchView"


# instance fields
.field private bgBmp:Landroid/graphics/Bitmap;

.field private isMoving:Z

.field private jListener:Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;

.field private mContentCenterX:F

.field private mContentCenterY:F

.field private mDirectionBmp:Landroid/graphics/Bitmap;

.field private mPadLocationType:Lcom/pilotlab/rollereye/Bean/PadLocationType;

.field private mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

.field private mResetDuration:I

.field private mRoundBgPadding:F

.field private mRoundBgRadius:I

.field private mTouchX:F

.field private mTouchY:F

.field private mWholePadHeight:F

.field private mWholePadWid:F

.field protected mWholeViewHeight:F

.field protected mWholeViewWid:F

.field private model:Lcom/pilotlab/rollereye/Bean/TouchViewModel;

.field private shouldShowDirectionBmp:Z

.field private touchBmp:Landroid/graphics/Bitmap;

.field private touchBmpDefaultX:F

.field private touchBmpDefaultY:F

.field protected touchImageX:F

.field protected touchImageY:F

.field private valueAnimatorResetX:Landroid/animation/ValueAnimator;

.field private valueAnimatorResetY:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object p1, Lcom/pilotlab/rollereye/Bean/PadStyle;->FIXED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    .line 36
    sget-object p1, Lcom/pilotlab/rollereye/Bean/PadLocationType;->LEFT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadLocationType:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 40
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mRoundBgPadding:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object p1, Lcom/pilotlab/rollereye/Bean/PadStyle;->FIXED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    .line 36
    sget-object p1, Lcom/pilotlab/rollereye/Bean/PadLocationType;->LEFT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadLocationType:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 40
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mRoundBgPadding:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object p1, Lcom/pilotlab/rollereye/Bean/PadStyle;->FIXED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    .line 36
    sget-object p1, Lcom/pilotlab/rollereye/Bean/PadLocationType;->LEFT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadLocationType:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 40
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mRoundBgPadding:F

    return-void
.end method

.method private static drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFF)V
    .registers 10

    .line 370
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    .line 373
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 374
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v3, v1

    add-float/2addr v3, p3

    int-to-float v4, v2

    add-float/2addr v4, p4

    .line 375
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v3, 0x0

    .line 376
    invoke-virtual {p0, p1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 377
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "rotation:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " offsetX:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " offsetY:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " postX:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " postY:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "rustAppTouchView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setupContentCenter()V
    .registers 5

    .line 130
    sget-object v0, Lcom/pilotlab/rollereye/CustomerView/TouchView$3;->$SwitchMap$com$pilotlab$rollereye$Bean$PadLocationType:[I

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadLocationType:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/PadLocationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const-string v3, "rustAppTouchView"

    if-eq v0, v1, :cond_95

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    goto/16 :goto_110

    .line 142
    :cond_16
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholeViewWid:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    .line 143
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholeViewHeight:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Right mContentCenterX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Right mContentCenterY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Right mWholePadWid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Right mWholeViewWid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholeViewWid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Right mWholeViewHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholeViewHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_110

    .line 132
    :cond_95
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    .line 133
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholeViewHeight:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadHeight:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Left mContentCenterX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Left mContentCenterY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Left mWholePadWid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Left mWholeViewWid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholeViewWid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Left mWholeViewHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholeViewHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_110
    return-void
.end method

.method private userMoving(FFLandroid/view/MotionEvent;)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 276
    iget-object v3, v0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetX:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_16

    iget-object v4, v0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetY:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_16

    .line 277
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 278
    iget-object v3, v0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_16
    float-to-double v12, v1

    float-to-double v14, v2

    .line 281
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-double v8, v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v10, v3

    move-wide v4, v12

    move-wide v6, v14

    invoke-static/range {v4 .. v11}, Lcom/pilotlab/rollereye/Utils/RoundCalculator;->calTwoPointDistant(DDDD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 282
    iget-object v4, v0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-double v10, v4

    const v4, 0x3fe66666    # 1.8f

    div-float/2addr v3, v4

    float-to-double v5, v3

    cmpg-double v3, v5, v10

    if-gtz v3, :cond_58

    .line 285
    iget v3, v0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v5, v1

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v5, v2

    div-float/2addr v5, v4

    add-float/2addr v1, v5

    invoke-virtual {v0, v3, v1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->onBallMove(FF)V

    goto :goto_7a

    .line 288
    :cond_58
    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    float-to-double v4, v1

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    float-to-double v6, v1

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v8, v1

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v1, v1

    move-wide/from16 v16, v10

    move-wide v10, v1

    .line 288
    invoke-static/range {v4 .. v17}, Lcom/pilotlab/rollereye/Utils/RoundCalculator;->calPointLocationByAngle(DDDDDDD)[D

    move-result-object v1

    const/4 v2, 0x0

    .line 290
    aget-wide v2, v1, v2

    double-to-float v2, v2

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    double-to-float v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->onBallMove(FF)V

    :goto_7a
    return-void
.end method

.method private userMoving(Landroid/view/MotionEvent;)V
    .registers 14

    .line 250
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetX:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetY:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_10

    .line 251
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 252
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 255
    :cond_10
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    float-to-double v1, v0

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    float-to-double v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v7, v0

    invoke-static/range {v1 .. v8}, Lcom/pilotlab/rollereye/Utils/RoundCalculator;->calTwoPointDistant(DDDD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 256
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-double v10, v1

    float-to-double v0, v0

    cmpg-double v0, v0, v10

    if-gtz v0, :cond_46

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->onBallMove(FF)V

    goto :goto_65

    .line 262
    :cond_46
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    float-to-double v2, v0

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    float-to-double v4, v0

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v6, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v8, p1

    .line 262
    invoke-static/range {v2 .. v11}, Lcom/pilotlab/rollereye/Utils/RoundCalculator;->calPointLocationByAngle(DDDDD)[D

    move-result-object p1

    const/4 v0, 0x0

    .line 264
    aget-wide v0, p1, v0

    double-to-float v0, v0

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    double-to-float p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->onBallMove(FF)V

    :goto_65
    return-void
.end method


# virtual methods
.method public getModel()Lcom/pilotlab/rollereye/Bean/TouchViewModel;
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->model:Lcom/pilotlab/rollereye/Bean/TouchViewModel;

    return-object v0
.end method

.method public init(Lcom/pilotlab/rollereye/Bean/TouchViewModel;)V
    .registers 8

    .line 93
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->model:Lcom/pilotlab/rollereye/Bean/TouchViewModel;

    .line 94
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getPadStyle()Lcom/pilotlab/rollereye/Bean/PadStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    .line 95
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getPadLocationType()Lcom/pilotlab/rollereye/Bean/PadLocationType;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadLocationType:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    .line 96
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getBgResId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getTouchBmpResId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getRoundBgPadding()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mRoundBgPadding:F

    .line 100
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getWholeViewHeight()F

    move-result v2

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholeViewHeight:F

    .line 101
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getWholeViewWid()F

    move-result v2

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholeViewWid:F

    .line 102
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getWholePadWid()F

    move-result v2

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    .line 103
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getWholePadHeight()F

    move-result v2

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadHeight:F

    .line 104
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getRoundBgRadius()I

    move-result v2

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mRoundBgRadius:I

    .line 106
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getResetDuration()I

    move-result v2

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mResetDuration:I

    const/4 v2, 0x0

    .line 108
    iput-boolean v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->isMoving:Z

    .line 110
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->isShowDirectionPic()Z

    move-result v2

    iput-boolean v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->shouldShowDirectionBmp:Z

    .line 111
    iget-boolean v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->shouldShowDirectionBmp:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_77

    .line 112
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getDirectionPicResId()I

    move-result v4

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 113
    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    float-to-int v4, v4

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadHeight:F

    float-to-int v5, v5

    invoke-static {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mDirectionBmp:Landroid/graphics/Bitmap;

    .line 117
    :cond_77
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mRoundBgRadius:I

    int-to-float v4, v2

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mRoundBgPadding:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v4, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->bgBmp:Landroid/graphics/Bitmap;

    .line 119
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getTouchBallRadius()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getTouchBallRadius()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 118
    invoke-static {v1, v0, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    .line 121
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setupContentCenter()V

    .line 122
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmpDefaultX:F

    .line 123
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmpDefaultY:F

    .line 124
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmpDefaultX:F

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageX:F

    .line 125
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmpDefaultY:F

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageY:F

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 84
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onBallMove(FF)V
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageX:F

    .line 296
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p2, v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageY:F

    .line 297
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->invalidate()V

    .line 298
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->jListener:Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;

    if-eqz v0, :cond_55

    .line 299
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 300
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    sub-float/2addr v1, p2

    iget-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->bgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    div-float/2addr v1, p2

    mul-float/2addr v1, v0

    const-string p2, "rustAppTouchView"

    const-string v0, "onTouch Listener"

    .line 301
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->jListener:Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;

    invoke-interface {p2, p1, v1}, Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;->onTouch(FF)V

    :cond_55
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 157
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->bgBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->getWidth()I

    move-result v0

    if-lez v0, :cond_7c

    .line 164
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->bgBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->bgBmp:Landroid/graphics/Bitmap;

    .line 165
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    .line 164
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->shouldShowDirectionBmp:Z

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmpDefaultX:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmpDefaultY:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_73

    .line 169
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    float-to-double v4, v0

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    float-to-double v6, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-double v8, v1

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageY:F

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v10, v0

    .line 169
    invoke-static/range {v4 .. v11}, Lcom/pilotlab/rollereye/Utils/RoundCalculator;->calTwoPointAngleDegree(DDDD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 171
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mDirectionBmp:Landroid/graphics/Bitmap;

    const/high16 v2, 0x43340000    # 180.0f

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadHeight:F

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    invoke-static {p1, v1, v2, v0, v4}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->drawRotateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFF)V

    .line 175
    :cond_73
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageX:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_7c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 182
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 185
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    .line 186
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->isMoving:Z

    .line 187
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setupContentCenter()V

    .line 188
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->reset()V

    .line 189
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->jListener:Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;

    if-eqz p1, :cond_11f

    .line 190
    invoke-interface {p1}, Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;->onActionUp()V

    goto/16 :goto_11f

    .line 192
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_104

    .line 193
    sget-object v0, Lcom/pilotlab/rollereye/CustomerView/TouchView$3;->$SwitchMap$com$pilotlab$rollereye$Bean$PadStyle:[I

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/PadStyle;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_d6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8e

    if-eq v0, v3, :cond_3c

    goto/16 :goto_11f

    .line 222
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_8d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_59

    goto :goto_8d

    .line 224
    :cond_59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadHeight:F

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_8d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadHeight:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_76

    goto :goto_8d

    .line 227
    :cond_76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mTouchX:F

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mTouchY:F

    .line 229
    iput-boolean v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->isMoving:Z

    .line 231
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->jListener:Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;

    if-eqz p1, :cond_11f

    .line 232
    invoke-interface {p1}, Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;->onActionDown()V

    goto/16 :goto_11f

    :cond_8d
    :goto_8d
    return v1

    .line 207
    :cond_8e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_d5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_ab

    goto :goto_d5

    .line 209
    :cond_ab
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadHeight:F

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_d5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadHeight:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c8

    goto :goto_d5

    .line 212
    :cond_c8
    iput-boolean v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->isMoving:Z

    .line 214
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->userMoving(Landroid/view/MotionEvent;)V

    .line 216
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->jListener:Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;

    if-eqz p1, :cond_11f

    .line 217
    invoke-interface {p1}, Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;->onActionDown()V

    goto :goto_11f

    :cond_d5
    :goto_d5
    return v1

    .line 195
    :cond_d6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholeViewWid:F

    div-float/2addr v3, v4

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadWid:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_e6

    return v1

    .line 197
    :cond_e6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mWholePadHeight:F

    div-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_f2

    return v1

    .line 201
    :cond_f2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterX:F

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mContentCenterY:F

    .line 203
    iput-boolean v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->isMoving:Z

    .line 204
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->userMoving(Landroid/view/MotionEvent;)V

    goto :goto_11f

    .line 236
    :cond_104
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->isMoving:Z

    if-eqz v0, :cond_11f

    .line 237
    sget-object v0, Lcom/pilotlab/rollereye/CustomerView/TouchView$3;->$SwitchMap$com$pilotlab$rollereye$Bean$PadStyle:[I

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/PadStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_118

    .line 242
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->userMoving(Landroid/view/MotionEvent;)V

    goto :goto_11f

    .line 239
    :cond_118
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mTouchX:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mTouchY:F

    invoke-direct {p0, v0, v1, p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->userMoving(FFLandroid/view/MotionEvent;)V

    :cond_11f
    :goto_11f
    return v2
.end method

.method protected reset()V
    .registers 7

    .line 311
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetX:Landroid/animation/ValueAnimator;

    .line 312
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetX:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageX:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmpDefaultX:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 313
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetX:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mResetDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 314
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 315
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetX:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/pilotlab/rollereye/CustomerView/TouchView$1;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/TouchView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetY:Landroid/animation/ValueAnimator;

    .line 324
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetY:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageY:F

    aput v2, v1, v4

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchBmpDefaultY:F

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 325
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetY:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mResetDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 326
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetY:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 327
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->valueAnimatorResetY:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/TouchView$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/TouchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 335
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->jListener:Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;

    if-eqz v0, :cond_64

    .line 336
    invoke-interface {v0}, Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;->onReset()V

    :cond_64
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 346
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_f

    .line 347
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->isMoving:Z

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    .line 348
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->isMoving:Z

    .line 349
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->reset()V

    :cond_f
    return-void
.end method

.method public setListener(Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->jListener:Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;

    return-void
.end method

.method public setModel(Lcom/pilotlab/rollereye/Bean/TouchViewModel;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->model:Lcom/pilotlab/rollereye/Bean/TouchViewModel;

    return-void
.end method

.method public setPadStyle(Lcom/pilotlab/rollereye/Bean/PadStyle;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    return-void
.end method
