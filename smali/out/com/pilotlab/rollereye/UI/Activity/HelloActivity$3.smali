.class Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;
.super Ljava/lang/Object;
.source "HelloActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->SwitchPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .registers 4

    .line 236
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 238
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->isFirstStart(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 239
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->setFirstStartup(Z)V

    goto :goto_1e

    .line 240
    :cond_16
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->setFirstStartup(Z)V

    .line 242
    :goto_1e
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->isFirstStartup()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 243
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 244
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->finish()V

    goto/16 :goto_d2

    .line 246
    :cond_3b
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_95

    .line 247
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    .line 248
    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 249
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/pilotlab/rollereye/Global;->setToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/RollerEyeApplication;->bindAccount()V

    .line 252
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V

    goto :goto_d2

    .line 254
    :cond_83
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->finish()V

    goto :goto_d2

    .line 258
    :cond_95
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_d2

    .line 259
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 261
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->bindAccount()V

    .line 262
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 263
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_cd

    .line 265
    :cond_c1
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    :goto_cd
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->finish()V

    :cond_d2
    :goto_d2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 228
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
