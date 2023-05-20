.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;
.super Ljava/lang/Object;
.source "SettingSecrecyFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->setTFA()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

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

    .line 376
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_d

    .line 377
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_d
    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 3

    .line 369
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 370
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 371
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 360
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->access$102(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
