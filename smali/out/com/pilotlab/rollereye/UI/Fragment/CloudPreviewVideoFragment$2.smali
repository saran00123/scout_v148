.class Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;
.super Landroid/os/Handler;
.source "CloudPreviewVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 171
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 172
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x110

    if-eq p1, v0, :cond_29

    const/16 v0, 0x111

    if-eq p1, v0, :cond_e

    goto :goto_75

    .line 183
    :cond_e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$800(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$900(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->onButtonPressed(Z)V

    goto :goto_75

    .line 174
    :cond_29
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Z

    move-result p1

    if-nez p1, :cond_75

    .line 175
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 176
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 177
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$500(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->durationFormLong2Text(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_6a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_75
    :goto_75
    return-void
.end method
