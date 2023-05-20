.class Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$8;
.super Ljava/lang/Object;
.source "SettingConnectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->onActivityResult(IILandroid/content/Intent;)V
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

    .line 656
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$8;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 659
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
