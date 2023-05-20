.class Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;
.super Ljava/lang/Object;
.source "MessagePlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->initPlayer()V
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

    .line 260
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    .line 263
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 264
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->durationFormLong2Text(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->durationFormLong2Text(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 267
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 268
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 269
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->play()V

    .line 270
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)J

    move-result-wide v0

    const/16 v2, 0x111

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 271
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x110

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
