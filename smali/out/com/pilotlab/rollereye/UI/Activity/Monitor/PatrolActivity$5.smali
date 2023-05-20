.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;
.super Landroid/os/Handler;
.source "PatrolActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 257
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 259
    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6e

    const/4 p1, 0x2

    if-eq v0, p1, :cond_c

    goto :goto_7c

    .line 266
    :cond_c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 267
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;Z)Z

    .line 268
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    :cond_24
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[I

    move-result-object v4

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)[I

    move-result-object v5

    aget v3, v5, v3

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->update([B[B[B)V

    .line 271
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setRenderShowPic(Z)V

    goto :goto_7c

    .line 261
    :cond_6e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 262
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 263
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v1, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;II)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7c
    return-void
.end method
