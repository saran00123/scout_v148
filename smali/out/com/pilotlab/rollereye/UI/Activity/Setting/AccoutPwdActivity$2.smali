.class Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;
.super Ljava/lang/Object;
.source "AccoutPwdActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->changePwd()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

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

    .line 309
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 9

    .line 297
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 298
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getMsg()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2$1;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 289
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->access$902(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
