.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;
.super Landroid/os/Handler;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 273
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 274
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_65

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1b

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    goto :goto_6e

    .line 294
    :cond_f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6e

    .line 281
    :cond_1b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[I

    move-result-object v3

    aget v3, v3, v2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 283
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)[I

    move-result-object v4

    aget v2, v4, v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 284
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->update([B[B[B)V

    .line 285
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setRenderShowPic(Z)V

    goto :goto_6e

    .line 276
    :cond_65
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 277
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 278
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v1, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;II)V

    :goto_6e
    return-void
.end method
