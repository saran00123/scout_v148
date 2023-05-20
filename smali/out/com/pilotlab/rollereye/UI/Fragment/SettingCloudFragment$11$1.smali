.class Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;
.super Ljava/lang/Object;
.source "SettingCloudFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;Landroid/content/DialogInterface;)V
    .registers 3

    .line 534
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->val$dialog:Landroid/content/DialogInterface;

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

    .line 553
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_11

    .line 554
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 555
    :cond_11
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 5

    .line 542
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_11

    .line 543
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 544
    :cond_11
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->CODE_SUCCESS:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_35

    .line 545
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$1100(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    const v1, 0x7f11010d

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_48

    .line 547
    :cond_35
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$1100(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 548
    :goto_48
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 534
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 537
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$502(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
