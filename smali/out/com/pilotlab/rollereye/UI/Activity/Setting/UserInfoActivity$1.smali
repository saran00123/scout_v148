.class Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$1;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->initData()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;

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

    .line 123
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 117
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_14

    .line 118
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V

    :cond_14
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 108
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
