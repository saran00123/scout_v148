.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->processImage_crop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V
    .registers 2

    .line 2993
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 2997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2998
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;->recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v2

    .line 2999
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3000
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tensorflow time :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3004
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3005
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, -0x100

    .line 3006
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3007
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 3008
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3011
    sget-object v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$45;->$SwitchMap$com$pilotlab$rollereye$UI$Activity$Monitor$Camera2Activity$DetectorMode:[I

    invoke-static {}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10200()Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const v0, 0x3f028f5c    # 0.51f

    .line 3017
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 3023
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v4, -0x40800000    # -1.0f

    move v5, v4

    :cond_7b
    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;

    .line 3024
    invoke-virtual {v6}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_7b

    .line 3025
    invoke-virtual {v6}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v0

    if-ltz v8, :cond_7b

    .line 3027
    iget-object v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v8}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3028
    iget-object v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v8}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mapRect location:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget v9, v9, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->previewWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v9, v5, v4

    if-eqz v9, :cond_d4

    cmpg-float v9, v8, v5

    if-gez v9, :cond_7b

    .line 3032
    :cond_d4
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3034
    invoke-virtual {v6, v7}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->setLocation(Landroid/graphics/RectF;)V

    .line 3035
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_7b

    .line 3040
    :cond_df
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_113

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_113

    .line 3041
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;J)J

    .line 3042
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/graphics/RectF;)V

    .line 3045
    :cond_113
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Z

    move-result v0

    if-eqz v0, :cond_13f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13f

    .line 3046
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->trackResults(Ljava/util/List;)V

    .line 3047
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingOverlay:Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;->postInvalidate()V

    .line 3048
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6302(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Z)Z

    .line 3049
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/CustomerView/ScanView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->stopAnimation()V

    .line 3052
    :cond_13f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$44;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Z)Z

    return-void
.end method
