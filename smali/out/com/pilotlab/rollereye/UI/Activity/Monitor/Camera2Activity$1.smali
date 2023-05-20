.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;
.super Landroid/os/Handler;
.source "Camera2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initView()V
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

    .line 343
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 346
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 347
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_72

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1b

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    goto :goto_85

    .line 375
    :cond_f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_85

    .line 356
    :cond_1b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 357
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[I

    move-result-object v3

    aget v3, v3, v2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 358
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)[I

    move-result-object v4

    aget v2, v4, v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 359
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->update([B[B[B)V

    .line 360
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setRenderShowPic(Z)V

    .line 361
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 362
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1, p1, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;[B[B[B)V

    goto :goto_85

    .line 349
    :cond_72
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 350
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 351
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;II)V

    .line 352
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;I)I

    .line 353
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;I)I

    :cond_85
    :goto_85
    return-void
.end method
