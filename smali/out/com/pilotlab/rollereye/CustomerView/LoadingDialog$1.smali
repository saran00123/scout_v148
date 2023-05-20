.class Lcom/pilotlab/rollereye/CustomerView/LoadingDialog$1;
.super Ljava/lang/Object;
.source "LoadingDialog.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

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

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .registers 2

    .line 78
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 79
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_d
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 70
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog$1;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->access$002(Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
