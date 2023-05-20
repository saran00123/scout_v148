.class Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;
.super Ljava/lang/Object;
.source "SettingConnectFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;Landroid/content/DialogInterface;)V
    .registers 3

    .line 397
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->val$dialog:Landroid/content/DialogInterface;

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

    .line 419
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_11

    .line 420
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 421
    :cond_11
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_11

    .line 406
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 407
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->CODE_SUCCESS:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_60

    .line 409
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object v1, v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 410
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    const v1, 0x7f11023b

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_73

    .line 412
    :cond_60
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 414
    :goto_73
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 397
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->access$002(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
