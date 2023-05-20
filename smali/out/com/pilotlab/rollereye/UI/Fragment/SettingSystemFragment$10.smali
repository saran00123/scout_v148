.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$10;
.super Ljava/lang/Object;
.source "SettingSystemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V
    .registers 2

    .line 746
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$10;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 750
    sget-object p2, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RESET:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 751
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$10;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$10;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 752
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$10;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 753
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$10;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/16 v0, 0x1e

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow(I)V

    .line 755
    :cond_34
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
