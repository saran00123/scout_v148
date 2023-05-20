.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->setCloudService()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

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

    .line 163
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_d

    .line 164
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_d
    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 157
    :cond_d
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_20

    .line 158
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_20
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 146
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
