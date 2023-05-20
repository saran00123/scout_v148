.class public Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;
.super Ljava/lang/Object;
.source "MultiBoxTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final MIN_SIZE:F = 16.0f

.field private static final TEXT_SIZE_DIP:F = 18.0f


# instance fields
.field private final availableColors:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final borderedText:Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;

.field private final boxPaint:Landroid/graphics/Paint;

.field private frameHeight:I

.field private frameToCanvasMatrix:Landroid/graphics/Matrix;

.field private frameWidth:I

.field private final logger:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

.field private mContext:Landroid/content/Context;

.field final screenRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private sensorOrientation:I

.field private final textSizePx:F

.field private final trackedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xf

    .line 46
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x10000

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, -0xffff01

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0xff0100

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, -0x100

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, -0xff0001

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0xff01

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, -0x1

    aput v2, v0, v1

    const-string v1, "#FFA500"

    .line 54
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const-string v1, "#55FF55"

    .line 55
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    const-string v1, "#FF8888"

    .line 56
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    const-string v1, "#AAAAFF"

    .line 57
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    const-string v1, "#FFFFAA"

    .line 58
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    const-string v1, "#55AAAA"

    .line 59
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    const-string v1, "#AA33AA"

    .line 60
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    const-string v1, "#0D0068"

    .line 61
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    sput-object v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->screenRects:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->logger:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->availableColors:Ljava/util/Queue;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    .line 77
    sget-object v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->COLORS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v1, :cond_3a

    aget v3, v0, v2

    .line 78
    iget-object v4, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->availableColors:Ljava/util/Queue;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 80
    :cond_3a
    iput-object p1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 86
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v0, 0x41900000    # 18.0f

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x1

    .line 90
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->textSizePx:F

    .line 92
    new-instance p1, Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;

    iget v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->textSizePx:F

    invoke-direct {p1, v0}, Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;-><init>(F)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->borderedText:Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;

    return-void
.end method

.method private getFrameToCanvasMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameToCanvasMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private processResults(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;",
            ">;)V"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->screenRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 227
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;

    .line 230
    invoke-virtual {v2}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v4

    if-nez v4, :cond_2b

    goto :goto_17

    .line 233
    :cond_2b
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 235
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 236
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 242
    iget-object v6, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->screenRects:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_6a

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5d

    goto :goto_6a

    .line 249
    :cond_5d
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 245
    :cond_6a
    :goto_6a
    iget-object v2, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->logger:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Degenerate rectangle! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 252
    :cond_83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 253
    iget-object p1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->logger:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Nothing to track, aborting."

    invoke-virtual {p1, v1, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 257
    :cond_93
    iget-object p1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 259
    new-instance v1, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;-><init>(Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$1;)V

    .line 260
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    .line 261
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, v1, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->location:Landroid/graphics/RectF;

    .line 262
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    .line 263
    sget-object v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->COLORS:[I

    iget-object v2, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    aget v0, v0, v2

    iput v0, v1, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->color:I

    .line 264
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->COLORS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_9c

    :cond_ed
    return-void
.end method


# virtual methods
.method public declared-synchronized clearData()V
    .registers 3

    monitor-enter p0

    .line 219
    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "cancel clear"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 221
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized draw(Landroid/graphics/Canvas;F)V
    .registers 14

    monitor-enter p0

    .line 134
    :try_start_1
    iget v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->sensorOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v3

    .line 143
    :goto_e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v4, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(F)V

    .line 145
    iget v5, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameWidth:I

    iget v6, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameHeight:I

    if-eqz v0, :cond_20

    iget v1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameHeight:I

    goto :goto_22

    :cond_20
    iget v1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameWidth:I

    :goto_22
    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v7, v1

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameWidth:I

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameHeight:I

    :goto_2c
    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int v8, p2

    iget v9, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->sensorOrientation:I

    const/4 v10, 0x0

    .line 146
    invoke-static/range {v5 .. v10}, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;

    move-result-object p2

    iput-object p2, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameToCanvasMatrix:Landroid/graphics/Matrix;

    .line 157
    iget-object p2, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;

    .line 158
    new-instance v1, Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->location:Landroid/graphics/RectF;

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 159
    invoke-direct {p0}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 160
    iget-object v4, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    div-float/2addr v4, v5

    .line 163
    iget-object v5, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 165
    iget-object v5, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    .line 166
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    if-nez v5, :cond_94

    const-string v5, "%s %.2f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    aput-object v8, v7, v3

    iget v0, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    mul-float/2addr v0, v6

    .line 167
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    :cond_94
    const-string v5, "%.2f"

    new-array v7, v2, [Ljava/lang/Object;

    iget v0, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    mul-float/2addr v0, v6

    .line 168
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_a5
    iget-object v5, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->borderedText:Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v7, v6, v4

    iget v8, v1, Landroid/graphics/RectF;->top:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;Landroid/graphics/Paint;)V
    :try_end_c4
    .catchall {:try_start_1 .. :try_end_c4} :catchall_c8

    goto/16 :goto_3e

    .line 174
    :cond_c6
    monitor-exit p0

    return-void

    :catchall_c8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized drawDebug(Landroid/graphics/Canvas;)V
    .registers 11

    monitor-enter p0

    .line 103
    :try_start_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x10000

    .line 108
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xc8

    .line 109
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v2, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->screenRects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 113
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    .line 114
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v5, v6, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 116
    iget-object v5, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->borderedText:Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, p1, v6, v4, v3}, Lcom/pilotlab/rollereye/tensorflow/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    :try_end_76
    .catchall {:try_start_1 .. :try_end_76} :catchall_79

    goto :goto_29

    .line 118
    :cond_77
    monitor-exit p0

    return-void

    :catchall_79
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized draw_crop(Landroid/graphics/Canvas;F)V
    .registers 13

    monitor-enter p0

    .line 179
    :try_start_1
    iget v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->sensorOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v3

    .line 189
    :goto_e
    iget v4, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameWidth:I

    iget v5, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameHeight:I

    if-eqz v0, :cond_17

    iget v1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameHeight:I

    goto :goto_19

    :cond_17
    iget v1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameWidth:I

    :goto_19
    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v6, v1

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameWidth:I

    goto :goto_23

    :cond_21
    iget v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameHeight:I

    :goto_23
    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int v7, p2

    iget v8, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->sensorOrientation:I

    const/4 v9, 0x0

    .line 190
    invoke-static/range {v4 .. v9}, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;

    move-result-object p2

    iput-object p2, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameToCanvasMatrix:Landroid/graphics/Matrix;

    .line 199
    iget-object p2, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_35
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;

    .line 200
    new-instance v1, Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->location:Landroid/graphics/RectF;

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 201
    invoke-direct {p0}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 202
    iget-object v4, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    div-float/2addr v4, v5

    .line 205
    iget-object v5, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 207
    iget-object v1, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    if-nez v1, :cond_8a

    const-string v1, "%s %.2f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    aput-object v6, v5, v3

    iget v0, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    mul-float/2addr v0, v4

    .line 209
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_35

    :cond_8a
    const-string v1, "%.2f"

    new-array v5, v2, [Ljava/lang/Object;

    iget v0, v0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    mul-float/2addr v0, v4

    .line 210
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_9a
    .catchall {:try_start_1 .. :try_end_9a} :catchall_9d

    goto :goto_35

    .line 216
    :cond_9b
    monitor-exit p0

    return-void

    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFrameConfiguration(III)V
    .registers 4

    monitor-enter p0

    .line 97
    :try_start_1
    iput p1, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameWidth:I

    .line 98
    iput p2, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->frameHeight:I

    .line 99
    iput p3, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->sensorOrientation:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 100
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trackResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->processResults(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 127
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trackResults(Ljava/util/List;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->logger:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    const-string v1, "Processing %d results from %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->processResults(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 123
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
