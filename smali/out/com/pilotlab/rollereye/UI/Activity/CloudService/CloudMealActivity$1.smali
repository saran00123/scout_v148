.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;
.super Ljava/lang/Object;
.source "CloudMealActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->setUpData(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

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

    .line 122
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V

    .line 123
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean;)V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V

    .line 108
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean;->getCode()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->CODE_SUCCESS:I

    if-ne v0, v1, :cond_44

    .line 110
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 111
    :goto_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 112
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 114
    :cond_3a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->updateUI()V

    goto :goto_4d

    .line 116
    :cond_44
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;Ljava/lang/String;)V

    :goto_4d
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 99
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
