.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;
.super Ljava/lang/Object;
.source "PathChoiseActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->querUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 10

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 174
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 175
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2$1;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 158
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 159
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getCode()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->CODE_SUCCESS:I

    if-ne v0, v1, :cond_3e

    .line 162
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getMember()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_38

    .line 163
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;Z)Z

    goto :goto_3e

    .line 165
    :cond_38
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;Z)Z

    :cond_3e
    :goto_3e
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 149
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
