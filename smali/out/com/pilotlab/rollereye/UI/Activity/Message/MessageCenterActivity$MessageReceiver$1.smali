.class Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver$1;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
