.class Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6$1;
.super Ljava/lang/Object;
.source "MessagePlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 281
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 282
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 283
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Message/MessagePlayActivity;)V

    return-void
.end method
