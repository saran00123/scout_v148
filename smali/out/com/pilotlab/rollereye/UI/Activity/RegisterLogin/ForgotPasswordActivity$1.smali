.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;
.super Ljava/lang/Object;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->ResetPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/ResetPasswordBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

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

    .line 134
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    const v0, 0x7f0a00cb

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    const v1, 0x7f110260

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/ResetPasswordBean;)V
    .registers 11

    .line 116
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 117
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ResetPasswordBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_35

    .line 118
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    const p1, 0x7f11014e

    invoke-virtual {v2, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1$1;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x3f4ccccd    # 0.8f

    invoke-virtual/range {v2 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_53

    .line 126
    :cond_35
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ResetPasswordBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_53
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 108
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/ResetPasswordBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/ResetPasswordBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
