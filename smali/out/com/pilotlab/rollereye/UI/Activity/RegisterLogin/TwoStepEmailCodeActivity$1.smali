.class Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$1;
.super Ljava/lang/Object;
.source "TwoStepEmailCodeActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->GetEmailCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

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

    .line 119
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    const v0, 0x7f0a0166

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    const v1, 0x7f11023d

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean;)V
    .registers 4

    .line 110
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_16

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean$DataBean;->getMsgNo()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2b

    .line 113
    :cond_16
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    const v1, 0x7f0a0166

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_2b
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 102
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/EmailCodeBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
