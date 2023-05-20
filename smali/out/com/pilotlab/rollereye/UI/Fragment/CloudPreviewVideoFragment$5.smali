.class Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$5;
.super Ljava/lang/Object;
.source "CloudPreviewVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    .line 269
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_13

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_9

    goto :goto_28

    .line 278
    :cond_9
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$1000(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    goto :goto_28

    .line 274
    :cond_13
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$1000(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_28

    .line 275
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$1000(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    :cond_28
    :goto_28
    const/4 p1, 0x0

    return p1
.end method
