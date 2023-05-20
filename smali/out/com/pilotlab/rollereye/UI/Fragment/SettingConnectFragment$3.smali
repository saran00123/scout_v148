.class Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;
.super Ljava/lang/Object;
.source "SettingConnectFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->querySkill(I)V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;I)V
    .registers 3

    .line 460
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->val$id:I

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

    .line 500
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 501
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 502
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;)V
    .registers 7

    .line 469
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 470
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 471
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_88

    .line 473
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;->getData()Ljava/util/List;

    move-result-object p1

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 475
    :goto_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_88

    .line 476
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;

    .line 477
    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->getId()I

    move-result v3

    iget v4, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->val$id:I

    if-ne v3, v4, :cond_85

    .line 478
    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->getStatus()I

    move-result v3

    .line 479
    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean$DataBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "param_url"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v3, :cond_60

    .line 481
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_6b

    .line 483
    :cond_60
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 485
    :goto_6b
    iget v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->val$id:I

    const-string v3, "param_type"

    const/4 v4, 0x1

    if-ne v2, v4, :cond_78

    .line 486
    sget-object v2, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_CUSTOM:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_80

    :cond_78
    const/4 v4, 0x2

    if-ne v2, v4, :cond_80

    .line 488
    sget-object v2, Lcom/pilotlab/rollereye/Common/CommonConstant;->GOOGLE_HOME:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    :cond_80
    :goto_80
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-virtual {v2, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivity(Landroid/content/Intent;)V

    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_88
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 460
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QuerySkillBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->access$002(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
