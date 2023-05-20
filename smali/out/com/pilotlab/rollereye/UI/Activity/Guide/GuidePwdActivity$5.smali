.class Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$5;
.super Ljava/lang/Object;
.source "GuidePwdActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->changePwd()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)V
    .registers 2

    .line 419
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

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
    .registers 6

    .line 427
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long p1, v0, v2

    if-lez p1, :cond_36

    .line 428
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 429
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 430
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    const v0, 0x7f0a00d2

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    const v1, 0x7f11023d

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_36
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 419
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$5;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
