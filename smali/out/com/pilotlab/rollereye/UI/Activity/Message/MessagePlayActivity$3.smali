.class Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$3;
.super Ljava/lang/Object;
.source "MessagePlayActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->iniSufaView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 205
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_11
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 216
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 217
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$1102(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;I)I

    .line 218
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_2a
    return-void
.end method
