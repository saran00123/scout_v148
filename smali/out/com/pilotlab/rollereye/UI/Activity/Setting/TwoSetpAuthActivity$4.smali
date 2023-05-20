.class Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;
.super Ljava/lang/Object;
.source "TwoSetpAuthActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->Verify()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 235
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 236
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 10

    .line 210
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_23

    .line 213
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 214
    :cond_23
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    const v1, 0x7f11003e

    if-ne p1, v0, :cond_4c

    .line 215
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    const p1, 0x7f11006e

    invoke-virtual {v2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4$1;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_6a

    .line 223
    :cond_4c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    const p1, 0x7f11006d

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-virtual {v2, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4$2;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_6a
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 201
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
