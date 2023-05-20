.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;
.super Ljava/lang/Object;
.source "SettingSystemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;Landroid/widget/EditText;)V
    .registers 3

    .line 840
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 844
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;->val$et:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "123456"

    .line 845
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 847
    sget-object p2, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->ROOT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 848
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 849
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 850
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    goto :goto_6c

    .line 853
    :cond_51
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$900(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    const v1, 0x7f1101eb

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 855
    :cond_6c
    :goto_6c
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
