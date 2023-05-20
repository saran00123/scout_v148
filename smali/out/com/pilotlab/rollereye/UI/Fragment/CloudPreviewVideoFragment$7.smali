.class Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;
.super Ljava/lang/Object;
.source "CloudPreviewVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 302
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 10

    .line 305
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$1000(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 306
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    const p2, 0x7f110225

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    const p3, 0x7f11003e

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$1502(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 313
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;->access$1500(Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewVideoFragment;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    const/4 p1, 0x0

    return p1
.end method
