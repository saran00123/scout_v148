.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->processImage()V
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

    .line 2925
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 2928
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;->recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v0

    .line 2930
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2931
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2932
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, -0x100

    .line 2933
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2934
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 2935
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2938
    sget-object v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$45;->$SwitchMap$com$pilotlab$rollereye$UI$Activity$Monitor$Camera2Activity$DetectorMode:[I

    invoke-static {}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10200()Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$DetectorMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const v1, 0x3f028f5c    # 0.51f

    .line 2944
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2947
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;

    .line 2948
    invoke-virtual {v3}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_55

    .line 2949
    invoke-virtual {v3}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v1

    if-ltz v5, :cond_55

    .line 2951
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2952
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mapRect location:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/graphics/RectF;)V

    .line 2954
    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;->setLocation(Landroid/graphics/RectF;)V

    .line 2955
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2960
    :cond_a1
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->trackResults(Ljava/util/List;)V

    .line 2961
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->trackingOverlay:Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView;->postInvalidate()V

    .line 2963
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$43;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$10502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Z)Z

    return-void
.end method
