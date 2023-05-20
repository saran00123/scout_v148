.class Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8;
.super Ljava/lang/Object;
.source "ScoutActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_1e

    .line 205
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 206
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3f

    .line 209
    :cond_1e
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    const p1, 0x7f1102ac

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8$1;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_3f
    return-void
.end method
