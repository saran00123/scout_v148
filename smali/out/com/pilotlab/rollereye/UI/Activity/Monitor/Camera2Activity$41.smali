.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$41;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/tensorflow/customview/OverlayView$DrawCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->onPreviewSizeChosen()V
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

    .line 2828
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$41;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCallback(Landroid/graphics/Canvas;)V
    .registers 4

    .line 2831
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$41;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$41;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->draw(Landroid/graphics/Canvas;F)V

    .line 2832
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$41;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$9800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2833
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$41;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/tensorflow/tracking/MultiBoxTracker;->drawDebug(Landroid/graphics/Canvas;)V

    :cond_20
    return-void
.end method
