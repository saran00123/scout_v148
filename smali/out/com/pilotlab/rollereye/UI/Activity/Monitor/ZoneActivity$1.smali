.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;
.super Landroid/os/Handler;
.source "ZoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7f

    const/4 p1, 0x2

    if-eq v0, p1, :cond_d

    goto/16 :goto_88

    .line 128
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 129
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 130
    :cond_1e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[I

    move-result-object v4

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-virtual {p1, v0, v2, v4}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->update([B[B[B)V

    .line 131
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setRenderShowPic(Z)V

    .line 132
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Lcom/pilotlab/rollereye/CustomerView/RectView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/RectView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_88

    .line 133
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;)Lcom/pilotlab/rollereye/CustomerView/RectView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/CustomerView/RectView;->setVisibility(I)V

    goto :goto_88

    .line 123
    :cond_7f
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 124
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 125
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-static {v1, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;II)V

    :cond_88
    :goto_88
    return-void
.end method
