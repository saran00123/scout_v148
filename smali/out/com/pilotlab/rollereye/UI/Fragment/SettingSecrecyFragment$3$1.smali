.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;
.super Ljava/lang/Object;
.source "SettingSecrecyFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;)V
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

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

    .line 289
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_11

    .line 290
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_11
    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_11

    .line 274
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 275
    :cond_11
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_70

    .line 276
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 277
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->unbindAccount()V

    .line 278
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    iget-object v1, v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->destroyUserInfo(Landroid/content/Context;)V

    .line 279
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->setSynServer(Z)V

    .line 280
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 281
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->startActivity(Landroid/content/Intent;)V

    .line 283
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finishAffinity()V

    :cond_70
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 264
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->access$102(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
