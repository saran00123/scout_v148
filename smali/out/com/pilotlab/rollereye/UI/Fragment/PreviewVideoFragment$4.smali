.class Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;
.super Ljava/lang/Object;
.source "PreviewVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 266
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$1000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 267
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$500(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->durationFormLong2Text(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$1100(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->durationFormLong2Text(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 270
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/widget/SeekBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 271
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$1202(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;F)F

    .line 272
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$1300(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f110063

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 273
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$1400(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 274
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->play()V

    .line 275
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x110

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
