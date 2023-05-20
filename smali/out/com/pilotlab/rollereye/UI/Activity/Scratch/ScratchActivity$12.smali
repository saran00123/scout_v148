.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->QueryCloudScratch(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V
    .registers 2

    .line 618
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

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

    .line 658
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_d

    .line 659
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 661
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 662
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_1f
    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean;)V
    .registers 7

    .line 626
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 627
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 629
    :cond_12
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_31

    .line 631
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 633
    :cond_31
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_b9

    .line 635
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 636
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 637
    :goto_4a
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_64

    .line 638
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;

    .line 639
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 641
    :cond_64
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 643
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8f

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 644
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->notifyItemRangeChanged(II)V

    goto :goto_98

    .line 646
    :cond_8f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->updateUI()V

    .line 649
    :goto_98
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_ae

    .line 650
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b9

    .line 651
    :cond_ae
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 618
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 621
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$302(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
