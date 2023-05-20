.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->QueryRobot()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 241
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const v0, 0x7f0a00e5

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const v1, 0x7f110260

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;)V
    .registers 15

    .line 203
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 204
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_164

    .line 205
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->getData()Ljava/util/List;

    move-result-object p1

    .line 206
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/UserHelper;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/DataBase/UserHelper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/DataBase/UserHelper;->deleteUserDevice(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->tag:Ljava/lang/String;

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
    :goto_45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_122

    .line 212
    new-instance v4, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

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

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

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

    invoke-virtual {v4, v2}, Lcom/pilotlab/rollereye/P2P/P2PService;->addClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 216
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultP2PClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_107

    .line 217
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setDefaultP2PClient(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11e

    .line 218
    :cond_107
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultP2PClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    move v1, v3

    :cond_11e
    :goto_11e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_45

    .line 222
    :cond_122
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pilotlab/rollereye/Global;->setSynServer(Z)V

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_152

    if-nez v1, :cond_14a

    .line 226
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean$DataBean;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setDefaultP2PClient(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    :cond_14a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_159

    .line 229
    :cond_152
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 231
    :goto_159
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->finishAffinity()V

    goto :goto_179

    .line 234
    :cond_164
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const v1, 0x7f0a00e5

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_179
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 195
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QuerRobotBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
