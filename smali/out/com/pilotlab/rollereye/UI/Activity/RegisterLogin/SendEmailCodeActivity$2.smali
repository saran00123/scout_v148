.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;
.super Ljava/lang/Object;
.source "SendEmailCodeActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->onTextFinish(Ljava/lang/CharSequence;I)V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

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

    .line 168
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 169
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 170
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;)V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 142
    :cond_d
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_ac

    .line 143
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getBadge()Ljava/lang/String;

    move-result-object v1

    const-string v2, "badge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-static {v1, v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setDefaultUser(Landroid/content/Context;Ljava/util/Map;)V

    .line 153
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->bindAccount()V

    .line 154
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/Global;->setToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->checkScratchNewUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 157
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->finishAffinity()V

    goto :goto_cc

    .line 161
    :cond_ac
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)Lcom/pilotlab/rollereye/CustomerView/CodeEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_cc
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 132
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
