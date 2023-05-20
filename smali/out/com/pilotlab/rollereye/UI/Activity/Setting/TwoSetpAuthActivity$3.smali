.class Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;
.super Ljava/lang/Object;
.source "TwoSetpAuthActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

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

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 141
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 128
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 129
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4d

    .line 131
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->access$302(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean$DataBean;->getSecretKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4d
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 118
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/TFAkeyBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
