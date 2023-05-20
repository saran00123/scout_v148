.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;
.super Ljava/lang/Object;
.source "TwoStepEmailCodeActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->QueryRobot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 10

    .line 239
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 240
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 241
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    const p1, 0x7f11023d

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3$1;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    invoke-virtual/range {v1 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;)V
    .registers 15

    .line 202
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 203
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 204
    :cond_d
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_169

    .line 205
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->getData()Ljava/util/List;

    move-result-object p1

    .line 206
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/UserHelper;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/DataBase/UserHelper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/DataBase/UserHelper;->deleteUserDevice(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 211
    :goto_4b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_128

    .line 212
    new-instance v4, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-direct {v4, v2}, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getUser()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getPasswd()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->InsertDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v2, Lcom/pilotlab/rollereye/DataBase/UserHelper;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-direct {v2, v4}, Lcom/pilotlab/rollereye/DataBase/UserHelper;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Global;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/Global;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/pilotlab/rollereye/DataBase/UserHelper;->InsertUpdataUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v2, Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getSn()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getUser()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getPasswd()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/pilotlab/rollereye/P2P/P2PClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v4

    .line 216
    invoke-virtual {v4, v2}, Lcom/pilotlab/rollereye/P2P/P2PService;->addClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 217
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultP2PClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10d

    .line 218
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setDefaultP2PClient(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_124

    .line 219
    :cond_10d
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultP2PClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_124

    move v1, v3

    :cond_124
    :goto_124
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4b

    .line 223
    :cond_128
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pilotlab/rollereye/Global;->setSynServer(Z)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_158

    if-nez v1, :cond_150

    .line 227
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setDefaultP2PClient(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    :cond_150
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_15f

    .line 230
    :cond_158
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 232
    :goto_15f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->finishAffinity()V

    :cond_169
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 194
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
