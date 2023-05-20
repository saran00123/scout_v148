.class Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$10;
.super Ljava/lang/Object;
.source "ScoutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->initView()V
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

    .line 265
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 268
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 269
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->stopService(Landroid/content/Intent;)Z

    .line 270
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Global;->setSynServer(Z)V

    .line 271
    invoke-static {}, Lcom/pilotlab/rollereye/RollerEyeApplication;->finishActivity()V

    return-void
.end method
