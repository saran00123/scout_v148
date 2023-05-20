.class Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;
.super Ljava/lang/Object;
.source "CloudPreviewVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->initPlayer()V
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

    .line 318
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 321
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$800(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->onButtonPressed(Z)V

    .line 323
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$900(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 325
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 326
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 327
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x111

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
