.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->Login(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Ljava/lang/String;)V
    .registers 3

    .line 137
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->val$password:Ljava/lang/String;

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

    .line 179
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const v0, 0x7f0a00e5

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const v1, 0x7f110260

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;)V
    .registers 7

    .line 145
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_f2

    .line 146
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->tag:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getMsgNo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    const-string v2, "email"

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 148
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const-class v4, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getMsgNo()Ljava/lang/String;

    move-result-object p1

    const-string v2, "msgNo"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->finishAffinity()V

    goto/16 :goto_110

    .line 156
    :cond_6e
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_110

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_110

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getUsername()Ljava/lang/String;

    move-result-object v3

    const-string v4, "username"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->val$password:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getBadge()Ljava/lang/String;

    move-result-object v1

    const-string v2, "badge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {v1, v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setDefaultUser(Landroid/content/Context;Ljava/util/Map;)V

    .line 165
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->bindAccount()V

    .line 166
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/Global;->setToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->checkScratchNewUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)V

    goto :goto_110

    .line 171
    :cond_f2
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 172
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    const v1, 0x7f0a00e5

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_110
    :goto_110
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 137
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
