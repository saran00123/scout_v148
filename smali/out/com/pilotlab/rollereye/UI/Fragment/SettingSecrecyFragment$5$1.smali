.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5$1;
.super Ljava/lang/Object;
.source "SettingSecrecyFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;

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

    .line 334
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_11

    .line 335
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_11
    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_11

    .line 326
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 327
    :cond_11
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_26

    .line 328
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_26
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 316
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->access$102(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
