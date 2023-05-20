.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;
.super Ljava/lang/Object;
.source "CloudMealActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->onItemClick(Landroid/view/View;I)V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

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

    .line 180
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_d

    .line 181
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 182
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result p1

    sget v0, Lcom/pilotlab/rollereye/Common/ServerConstent;->CODE_SUCCESS:I

    if-ne p1, v0, :cond_20

    .line 172
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V

    goto :goto_26

    .line 174
    :cond_20
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 162
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
