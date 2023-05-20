.class Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;
.super Ljava/lang/Object;
.source "PreviewVideoFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->initEvent()V
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

    .line 140
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 163
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$500(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/widget/TextView;

    move-result-object p1

    div-int/lit16 p2, p2, 0x3e8

    int-to-long p2, p2

    invoke-static {p2, p3}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->durationFormLong2Text(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 153
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 154
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 156
    :cond_15
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x111

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .line 143
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 145
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 146
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)J

    move-result-wide v0

    const/16 v2, 0x111

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
