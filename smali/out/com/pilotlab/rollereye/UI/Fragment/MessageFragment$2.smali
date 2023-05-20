.class Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->QueryAnnouncement()V
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


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

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

    .line 279
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_d

    .line 280
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 282
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    .line 283
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 284
    :cond_1f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 285
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 286
    :cond_30
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$500(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;)V
    .registers 11

    .line 252
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 253
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 255
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 256
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 257
    :cond_1f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 258
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 259
    :cond_30
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryAnnouncement---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_ae

    .line 262
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 265
    :goto_5e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8e

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    .line 267
    new-instance v2, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getDate()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const-string v7, ""

    invoke-virtual/range {v2 .. v8}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->InsertReadMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 269
    :cond_8e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 270
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->updateUI()V

    .line 272
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$500(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    :cond_ae
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 243
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$002(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
