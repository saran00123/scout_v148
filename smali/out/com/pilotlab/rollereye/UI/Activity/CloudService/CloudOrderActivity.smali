.class public Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "CloudOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_cloud_order_empty_ry:Landroid/widget/RelativeLayout;

.field private activity_cloud_order_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private center_title:Landroid/widget/TextView;

.field private cloudOrderAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private layout_left:Landroid/widget/LinearLayout;

.field private mAuthorization:Ljava/lang/String;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    const-string v0, "CloudOrderActivity"

    .line 51
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private QueryOrders(Ljava/lang/String;I)V
    .registers 7

    .line 126
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryOrders(Ljava/lang/String;Ljava/lang/String;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 127
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;

    invoke-direct {v0, p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;I)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;Ljava/lang/String;I)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->QueryOrders(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->safelyCloseLoadingView()V

    return-void
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->cloudOrderAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->activity_cloud_order_empty_ry:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private initEvent()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)V

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 83
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)V

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a0448

    .line 95
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 96
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->center_title:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110268

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a04e9

    .line 99
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const v0, 0x7f0a0087

    .line 100
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->activity_cloud_order_empty_ry:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0088

    .line 101
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->activity_cloud_order_rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->cloudOrderAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->activity_cloud_order_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 104
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->activity_cloud_order_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 105
    new-instance v0, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 106
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->activity_cloud_order_rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->activity_cloud_order_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->cloudOrderAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method private safelyCloseLoadingView()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 211
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_11
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 275
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x124

    if-ne p1, v0, :cond_41

    const/4 p1, -0x1

    if-ne p2, p1, :cond_41

    const-string p1, "choiseOrderID"

    .line 279
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_41

    const/4 p2, 0x0

    .line 281
    :goto_13
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_41

    .line 282
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    invoke-virtual {p3}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3e

    .line 283
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->setStatus(I)V

    .line 284
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->cloudOrderAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;

    invoke-virtual {p3, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyItemChanged(I)V

    :cond_3e
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    :cond_41
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_a

    goto :goto_d

    .line 203
    :cond_a
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->finish()V

    :goto_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 57
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 119
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 121
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method public onItemCancelClick(Landroid/view/View;I)V
    .registers 5

    .line 230
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 231
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object p1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->cancelOrder(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 232
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;

    invoke-direct {v0, p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;I)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public onItemPayClick(Landroid/view/View;I)V
    .registers 5

    .line 218
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 219
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getProductId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "choiseProductsID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "choiseOrderID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getAmount()I

    move-result v0

    const-string v1, "amount"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getDuration()I

    move-result p2

    const-string v0, "duration"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p2, 0x124

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 188
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 189
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 194
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0023

    .line 62
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->fullScreen()V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 113
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    const-string p1, "0"

    const/16 v0, 0xa

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->QueryOrders(Ljava/lang/String;I)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->initEvent()V

    return-void
.end method
