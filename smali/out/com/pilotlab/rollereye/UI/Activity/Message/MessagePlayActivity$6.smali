.class Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;
.super Ljava/lang/Object;
.source "MessagePlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 275
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 10

    .line 278
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    const p2, 0x7f110225

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    const p3, 0x7f11003e

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$1502(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 286
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    const/4 p1, 0x0

    return p1
.end method
