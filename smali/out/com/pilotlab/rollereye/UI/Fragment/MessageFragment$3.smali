.class Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->QueryNotificationByDate(Ljava/lang/String;)V
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

    .line 302
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

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

    .line 340
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_d

    .line 341
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 343
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    .line 344
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 345
    :cond_1f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 346
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 348
    :cond_30
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$500(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;)V
    .registers 11

    .line 311
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 312
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 314
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 315
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 316
    :cond_1f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 317
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 319
    :cond_30
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_96

    .line 322
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 325
    :goto_4d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_88

    .line 326
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    .line 327
    new-instance v2, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

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

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getExt()Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->InsertReadMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 329
    :cond_88
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->addDataAndUpdateUI(Ljava/util/List;)V

    .line 332
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$500(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    :cond_96
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 302
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$002(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
