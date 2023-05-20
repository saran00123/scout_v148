.class Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;
.super Ljava/lang/Object;
.source "SettingConnectFragment.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V
    .registers 2

    .line 581
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 584
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 585
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_12

    .line 586
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V

    goto :goto_48

    .line 588
    :cond_12
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 589
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 590
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_48

    .line 593
    :cond_28
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    const p1, 0x7f110264

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6$1;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 598
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_48
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 581
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
