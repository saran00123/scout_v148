.class Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;
.super Ljava/lang/Object;
.source "ThirdPartLoginActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->querySkillStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

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

    .line 113
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_d

    .line 114
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_d
    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;)V
    .registers 7

    .line 86
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 88
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_78

    .line 90
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;->getData()Ljava/util/List;

    move-result-object p1

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 92
    :goto_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;

    .line 94
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/pilotlab/rollereye/Common/CommonConstant;->GOOGLE_HOME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 95
    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->getId()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_75

    .line 96
    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_75

    .line 98
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "param_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    const-class v3, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    invoke-virtual {v2, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->finish()V

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_78
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 78
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
