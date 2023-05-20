.class Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;
.super Ljava/lang/Object;
.source "HelloActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->Login(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;Ljava/lang/String;)V
    .registers 3

    .line 287
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 9

    .line 331
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const p1, 0x7f11023d

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const v2, 0x7f11003e

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$2;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3f4ccccd    # 0.8f

    invoke-virtual/range {v0 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;)V
    .registers 8

    .line 296
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_bd

    .line 298
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getMsgNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const-class v2, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getMsgNo()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msgNo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->val$password:Ljava/lang/String;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startActivity(Landroid/content/Intent;)V

    .line 306
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->finishAffinity()V

    goto :goto_d3

    .line 307
    :cond_66
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9c

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 308
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean$DataBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/pilotlab/rollereye/Global;->setToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/RollerEyeApplication;->bindAccount()V

    .line 311
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V

    goto :goto_d3

    .line 313
    :cond_9c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const p1, 0x7f110260

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const v2, 0x7f11003e

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_d3

    .line 322
    :cond_bd
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 323
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startActivity(Landroid/content/Intent;)V

    .line 325
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->finish()V

    :goto_d3
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 287
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/LoginBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
