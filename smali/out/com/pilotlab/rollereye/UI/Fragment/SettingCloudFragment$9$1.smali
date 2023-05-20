.class Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;
.super Ljava/lang/Object;
.source "SettingCloudFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;Landroid/content/DialogInterface;)V
    .registers 3

    .line 483
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->val$dialog:Landroid/content/DialogInterface;

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

    .line 505
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_11

    .line 506
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 507
    :cond_11
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 5

    .line 491
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_11

    .line 492
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 493
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->CODE_SUCCESS:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_59

    .line 495
    new-instance p1, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->deleteAllUserMessage()V

    .line 496
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$1100(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    const v1, 0x7f11010d

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_6c

    .line 498
    :cond_59
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$1100(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 500
    :goto_6c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 483
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 486
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$502(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
