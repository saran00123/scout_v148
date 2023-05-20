.class Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$23;
.super Ljava/lang/Object;
.source "ScoutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 2

    .line 723
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$23;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 726
    sget-object p2, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_DOWNLOAD:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 727
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$23;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_1b

    .line 728
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$23;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 730
    :cond_1b
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 731
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$23;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 732
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$23;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {v0, p2}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 733
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
