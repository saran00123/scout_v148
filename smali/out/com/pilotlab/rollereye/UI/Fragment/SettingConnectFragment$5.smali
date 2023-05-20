.class Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$5;
.super Ljava/lang/Object;
.source "SettingConnectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->checkGPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V
    .registers 2

    .line 549
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 552
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 553
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 554
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    const/16 v0, 0x1314

    invoke-virtual {p2, p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
