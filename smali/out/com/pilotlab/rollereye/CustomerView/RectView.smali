.class public Lcom/pilotlab/rollereye/CustomerView/RectView;
.super Landroid/view/View;
.source "RectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;,
        Lcom/pilotlab/rollereye/CustomerView/RectView$MoveDirection;,
        Lcom/pilotlab/rollereye/CustomerView/RectView$TouchNear;
    }
.end annotation


# static fields
.field public static final LEFT_BOTTOM:I = 0x4

.field public static final LEFT_TOP:I = 0x1

.field public static final MOVE_ERROR:I = -0x400

.field public static final MOVE_H:I = 0x5a

.field public static final MOVE_V:I = 0x5b

.field public static final MOVE_VH:I = 0x5c

.field public static final NONE_POINT:I = 0x0

.field public static final RIGHT_BOTTOM:I = 0x3

.field public static final RIGHT_TOP:I = 0x2


# instance fields
.field private NEAR:F

.field currentNEAR:I

.field private currentX:F

.field private currentY:F

.field private downX:F

.field private downY:F

.field private initBottom:F

.field private initLeft:F

.field private initRight:F

.field private initTop:F

.field private lineLen:I

.field private lineWidth:I

.field private mHeight:I

.field private mWidth:I

.field private oval:Landroid/graphics/RectF;

.field private ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 42
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentNEAR:I

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->NEAR:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x5

    .line 42
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    const/4 p2, 0x0

    .line 65
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentNEAR:I

    const/4 p2, 0x0

    .line 71
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->NEAR:F

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41700000    # 15.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 86
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineLen:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 42
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentNEAR:I

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->NEAR:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x5

    .line 42
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentNEAR:I

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->NEAR:F

    return-void
.end method

.method private checkNear()I
    .registers 5

    .line 317
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/RectView;->near(FFFF)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    .line 321
    :cond_14
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/RectView;->near(FFFF)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x4

    return v0

    .line 325
    :cond_28
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/RectView;->near(FFFF)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x2

    return v0

    .line 329
    :cond_3c
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/RectView;->near(FFFF)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x3

    return v0

    :cond_50
    const/4 v0, 0x0

    return v0
.end method

.method private distortionInMove(Landroid/graphics/RectF;FFFF)Z
    .registers 10

    sub-float/2addr p4, p2

    .line 300
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v0

    sub-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double p2, v0, v2

    if-gtz p2, :cond_28

    sub-float/2addr p5, p3

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p1

    sub-float/2addr p5, p2

    .line 301
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpl-double p1, p1, v2

    if-lez p1, :cond_26

    goto :goto_28

    :cond_26
    const/4 p1, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p1, 0x1

    :goto_29
    return p1
.end method

.method private roundLength(FF)F
    .registers 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    return v0

    :cond_6
    cmpl-float v0, p1, p2

    if-lez v0, :cond_b

    return p2

    :cond_b
    return p1
.end method


# virtual methods
.method canMove()I
    .registers 5

    .line 345
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->touchEdge()Z

    move-result v0

    const/16 v1, -0x400

    if-eqz v0, :cond_9

    return v1

    .line 348
    :cond_9
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 351
    :cond_16
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_37

    return v1

    .line 354
    :cond_37
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5a

    const/16 v0, 0x5b

    return v0

    .line 357
    :cond_5a
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7d

    const/16 v0, 0x5a

    return v0

    :cond_7d
    const/16 v0, 0x5c

    return v0
.end method

.method near(FFFF)Z
    .registers 9

    sub-float/2addr p1, p3

    .line 382
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p2, p4

    .line 383
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 384
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "11111111"

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->NEAR:F

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "222222222"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iget p3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->NEAR:F

    float-to-double p3, p3

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    mul-double/2addr p3, v0

    cmpg-double p1, p1, p3

    if-gtz p1, :cond_50

    const/4 p1, 0x1

    goto :goto_51

    :cond_50
    const/4 p1, 0x0

    :goto_51
    return p1
.end method

.method near(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .registers 5

    .line 376
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 377
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 378
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->NEAR:F

    float-to-double v0, v0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 135
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onDraw"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineLen:I

    int-to-float v1, v1

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 148
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    int-to-float v1, v1

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineLen:I

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 150
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineLen:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    int-to-float v1, v1

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 152
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineLen:I

    int-to-float v1, v1

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 154
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineLen:I

    int-to-float v1, v1

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineLen:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    int-to-float v1, v1

    add-float v4, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineLen:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 160
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineWidth:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->lineLen:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 164
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float v5, v0, v7

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 168
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v2, v0, v7

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v5, v0, v7

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 170
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v3, v0, v7

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 105
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    .line 106
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    .line 108
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    iget p2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    int-to-float p1, p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->NEAR:F

    .line 109
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    .line 110
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060023

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    .line 116
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget p2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float p3, p2

    iget p4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->initLeft:F

    mul-float/2addr p3, p4

    iget p4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v0, p4

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->initTop:F

    mul-float/2addr v0, v1

    int-to-float p2, p2

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->initRight:F

    mul-float/2addr p2, v1

    int-to-float p4, p4

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->initBottom:F

    mul-float/2addr p4, v1

    invoke-virtual {p1, p3, v0, p2, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "onsizeChange"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_498

    const/4 p1, 0x2

    if-eq v0, p1, :cond_18

    goto/16 :goto_4aa

    .line 186
    :cond_18
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentNEAR:I

    if-nez v0, :cond_16d

    .line 188
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->canMove()I

    move-result p1

    .line 189
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->downX:F

    sub-float/2addr v0, v2

    .line 190
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->downY:F

    sub-float/2addr v2, v3

    .line 191
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v4, v4

    invoke-direct {p0, v3, v4}, Lcom/pilotlab/rollereye/CustomerView/RectView;->roundLength(FF)F

    move-result v3

    .line 192
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v4, v0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->roundLength(FF)F

    move-result v0

    .line 193
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v2

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v5, v5

    invoke-direct {p0, v4, v5}, Lcom/pilotlab/rollereye/CustomerView/RectView;->roundLength(FF)F

    move-result v4

    .line 194
    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v2

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v2, v2

    invoke-direct {p0, v5, v2}, Lcom/pilotlab/rollereye/CustomerView/RectView;->roundLength(FF)F

    move-result v2

    packed-switch p1, :pswitch_data_4ac

    goto/16 :goto_494

    .line 214
    :pswitch_5f
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    move-object v5, p0

    move v7, v3

    move v8, v4

    move v9, v0

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/pilotlab/rollereye/CustomerView/RectView;->distortionInMove(Landroid/graphics/RectF;FFFF)Z

    move-result p1

    if-nez p1, :cond_83

    .line 215
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    invoke-virtual {p1, v3, v4, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v6, v5

    div-float/2addr v3, v6

    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v7, v6

    div-float/2addr v4, v7

    int-to-float v5, v5

    div-float/2addr v0, v5

    int-to-float v5, v6

    div-float/2addr v2, v5

    invoke-interface {p1, v3, v4, v0, v2}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    goto :goto_dd

    :cond_83
    const/4 p1, 0x0

    cmpg-float v5, v3, p1

    if-gtz v5, :cond_92

    .line 221
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    move v3, p1

    :cond_92
    cmpg-float v5, v4, p1

    if-gtz v5, :cond_a0

    .line 225
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    goto :goto_a1

    :cond_a0
    move p1, v4

    .line 227
    :goto_a1
    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_b4

    int-to-float v0, v4

    int-to-float v3, v4

    .line 229
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 231
    :cond_b4
    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v5, v4

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_c7

    int-to-float v2, v4

    int-to-float p1, v4

    .line 233
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr p1, v4

    .line 235
    :cond_c7
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, p1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 236
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v6, v5

    div-float/2addr v3, v6

    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v7, v6

    div-float/2addr p1, v7

    int-to-float v5, v5

    div-float/2addr v0, v5

    int-to-float v5, v6

    div-float/2addr v2, v5

    invoke-interface {v4, v3, p1, v0, v2}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    .line 238
    :goto_dd
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->downX:F

    .line 239
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->downY:F

    goto/16 :goto_494

    .line 205
    :pswitch_e7
    iget-object v7, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v10, p1, Landroid/graphics/RectF;->right:F

    move-object v6, p0

    move v9, v4

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/pilotlab/rollereye/CustomerView/RectView;->distortionInMove(Landroid/graphics/RectF;FFFF)Z

    move-result p1

    if-nez p1, :cond_120

    .line 206
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-interface {p1, v0, v4, v3, v2}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    .line 209
    :cond_120
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->downX:F

    .line 210
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->downY:F

    goto/16 :goto_494

    .line 197
    :pswitch_12a
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    move-object v5, p0

    move v7, v3

    move v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/pilotlab/rollereye/CustomerView/RectView;->distortionInMove(Landroid/graphics/RectF;FFFF)Z

    move-result p1

    if-nez p1, :cond_163

    .line 198
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 199
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {p1, v3, v2, v0, v4}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    .line 201
    :cond_163
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->downX:F

    .line 202
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->downY:F

    goto/16 :goto_494

    .line 246
    :cond_16d
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lcom/pilotlab/rollereye/CustomerView/RectView;->roundLength(FF)F

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    .line 247
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lcom/pilotlab/rollereye/CustomerView/RectView;->roundLength(FF)F

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    .line 248
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentNEAR:I

    const/high16 v2, 0x42c80000    # 100.0f

    if-eq v0, v1, :cond_3d5

    if-eq v0, p1, :cond_315

    const/4 p1, 0x3

    if-eq v0, p1, :cond_255

    const/4 p1, 0x4

    if-eq v0, p1, :cond_193

    goto/16 :goto_494

    .line 259
    :cond_193
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1ed

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1ed

    .line 260
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 261
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    goto/16 :goto_494

    .line 262
    :cond_1ed
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_494

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_494

    .line 263
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 264
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v5, v2

    invoke-interface {p1, v0, v3, v4, v5}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    goto/16 :goto_494

    .line 277
    :cond_255
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2ad

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2ad

    .line 278
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    int-to-float v3, v3

    div-float/2addr v5, v3

    invoke-interface {p1, v0, v2, v4, v5}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    goto/16 :goto_494

    .line 280
    :cond_2ad
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_494

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_494

    .line 281
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 282
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v5, v2

    invoke-interface {p1, v0, v3, v4, v5}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    goto/16 :goto_494

    .line 268
    :cond_315
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_36d

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_36d

    .line 269
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 270
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v3, v2

    div-float/2addr v0, v3

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    int-to-float v2, v2

    div-float/2addr v4, v2

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-interface {p1, v0, v3, v4, v2}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    goto/16 :goto_494

    .line 271
    :cond_36d
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_494

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_494

    .line 272
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 273
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {p1, v0, v3, v2, v4}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    goto/16 :goto_494

    .line 250
    :cond_3d5
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_42e

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_42e

    .line 251
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 252
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    goto :goto_494

    .line 253
    :cond_42e
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_494

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentY:F

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_494

    .line 254
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 255
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentX:F

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {p1, v0, v3, v2, v4}, Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;->moveOval(FFFF)V

    .line 287
    :cond_494
    :goto_494
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->postInvalidate()V

    goto :goto_4aa

    .line 181
    :cond_498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->downX:F

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->downY:F

    .line 183
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/RectView;->checkNear()I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->currentNEAR:I

    :goto_4aa
    return v1

    nop

    :pswitch_data_4ac
    .packed-switch 0x5a
        :pswitch_12a
        :pswitch_e7
        :pswitch_5f
    .end packed-switch
.end method

.method public setOvalChangeListener(Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->ovalChangeListener:Lcom/pilotlab/rollereye/CustomerView/RectView$OvalChangeListener;

    return-void
.end method

.method touchEdge()Z
    .registers 4

    .line 371
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2a

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mWidth:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2a

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2a

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->oval:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->mHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    :goto_2b
    return v0
.end method

.method public updateOval(DDDD)V
    .registers 9

    double-to-float p1, p1

    .line 123
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->initLeft:F

    double-to-float p1, p3

    .line 124
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->initTop:F

    double-to-float p1, p5

    .line 125
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->initRight:F

    double-to-float p1, p7

    .line 126
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RectView;->initBottom:F

    return-void
.end method
