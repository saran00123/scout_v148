.class Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->QueryNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;I)V
    .registers 3

    .line 170
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 212
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryNotification---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_29

    .line 215
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 217
    :cond_29
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3b

    .line 218
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 219
    :cond_3b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 220
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 221
    :cond_4c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$500(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;)V
    .registers 12

    .line 179
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 180
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 182
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 183
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 185
    :cond_1f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 186
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 188
    :cond_30
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryNotification---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_bf

    .line 191
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 193
    :goto_5f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9a

    .line 194
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    .line 195
    new-instance v3, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getDate()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getExt()Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->InsertReadMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 197
    :cond_9a
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->val$count:I

    if-ltz v1, :cond_a8

    .line 198
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->addDataAndUpdateUI(Ljava/util/List;)V

    goto :goto_ba

    .line 200
    :cond_a8
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 201
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->updateUI()V

    .line 204
    :goto_ba
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$500(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    :cond_bf
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 170
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$002(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
