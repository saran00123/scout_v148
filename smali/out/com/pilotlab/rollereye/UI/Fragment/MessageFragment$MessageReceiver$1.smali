.class Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver$1;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;)V
    .registers 2

    .line 483
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 486
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 487
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$800(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    goto :goto_34

    .line 489
    :cond_13
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2b

    .line 490
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;I)V

    goto :goto_34

    .line 491
    :cond_2b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    const/16 v0, -0x14

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;I)V

    :goto_34
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 483
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
