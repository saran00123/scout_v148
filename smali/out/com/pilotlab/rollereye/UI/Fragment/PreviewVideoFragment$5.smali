.class Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$5;
.super Ljava/lang/Object;
.source "PreviewVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 279
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 10

    .line 282
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    const p2, 0x7f110225

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    const p3, 0x7f11003e

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$5$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$5$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$5;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$1502(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 290
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;->access$1500(Lcom/pilotlab/rollereye/UI/Fragment/PreviewVideoFragment;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    const/4 p1, 0x0

    return p1
.end method
