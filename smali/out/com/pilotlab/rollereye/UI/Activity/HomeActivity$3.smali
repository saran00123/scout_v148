.class Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 91
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->clearDefaultUser(Landroid/content/Context;)V

    .line 92
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->clearDefaultP2PClient(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Global;->setSynServer(Z)V

    .line 94
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 95
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->finishAffinity()V

    return-void
.end method
