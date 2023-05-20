.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->Register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 155
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->val$password:Ljava/lang/String;

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

    .line 179
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    const v0, 0x7f0a014f

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    const v1, 0x7f110260

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;)V
    .registers 5

    .line 163
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 165
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_57

    .line 166
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->val$email:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->val$username:Ljava/lang/String;

    const-string v1, "username"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->val$password:Ljava/lang/String;

    const-string v1, "password"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_69

    .line 173
    :cond_57
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_69
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 155
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/VerifyEmailBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
