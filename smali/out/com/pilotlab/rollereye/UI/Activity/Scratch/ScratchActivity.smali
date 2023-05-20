.class public Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "ScratchActivity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;
.implements Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter$onItemCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$MyDataBroadCastReceiver;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_scratch_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private center_title:Landroid/widget/TextView;

.field private choiseDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private cloudScratchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private custom_dialog_scratch_empty:Landroid/widget/TextView;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ScratchBean;",
            ">;"
        }
    .end annotation
.end field

.field private editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private layout_left:Landroid/widget/LinearLayout;

.field private listDownloadAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;

.field private listRecommendAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$MyDataBroadCastReceiver;

.field private myDownloadDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private query_type_scratch:I

.field private recommendScratchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field private right_btn:Landroid/widget/ImageButton;

.field private right_btn_2:Landroid/widget/ImageButton;

.field private scratchListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

.field private type_mycloud:I

.field private type_recommend:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    const-string v0, "ScratchActivity"

    .line 95
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->type_mycloud:I

    const/4 v0, 0x2

    .line 97
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->type_recommend:I

    .line 98
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->type_recommend:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->query_type_scratch:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->cloudScratchList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recommendScratchList:Ljava/util/List;

    return-void
.end method

.method private QueryCloudScratch(JI)V
    .registers 6

    .line 617
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

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryScratch(Ljava/lang/String;JI)Lio/reactivex/Observable;

    move-result-object p1

    .line 618
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$12;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private QueryRecommendScratch(JI)V
    .registers 6

    .line 673
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

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryExampleScratch(Ljava/lang/String;JI)Lio/reactivex/Observable;

    move-result-object p1

    .line 674
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$13;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$13;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->choiseDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recommendScratchList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->listRecommendAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;JI)V
    .registers 4

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->QueryRecommendScratch(JI)V

    return-void
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)I
    .registers 1

    .line 81
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->type_mycloud:I

    return p0
.end method

.method static synthetic access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->cloudScratchList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->listDownloadAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;JI)V
    .registers 4

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->QueryCloudScratch(JI)V

    return-void
.end method

.method static synthetic access$1800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Landroid/widget/TextView;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->custom_dialog_scratch_empty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->initData()V

    return-void
.end method

.method static synthetic access$302(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->scratchListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myDownloadDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)I
    .registers 1

    .line 81
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->query_type_scratch:I

    return p0
.end method

.method static synthetic access$802(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;I)I
    .registers 2

    .line 81
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->query_type_scratch:I

    return p1
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)I
    .registers 1

    .line 81
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->type_recommend:I

    return p0
.end method

.method private addNewScratch()V
    .registers 4

    .line 334
    new-instance v0, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;-><init>()V

    const-string v1, "20191025"

    .line 335
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setCreateTime(Ljava/lang/String;)V

    const-string v1, "Test Scratch"

    .line 336
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setName(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 337
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setFlag(I)V

    const-string v2, "abcdefg"

    .line 338
    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setUrl(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->scratchListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->addData(ILjava/lang/Object;)V

    return-void
.end method

.method private dialogCloudScratch()V
    .registers 9

    .line 525
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->type_recommend:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->query_type_scratch:I

    .line 527
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_2f

    const v0, 0x7f11024b

    .line 528
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$7;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void

    .line 537
    :cond_2f
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d006d

    const/4 v2, 0x0

    .line 538
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a024d

    .line 539
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$8;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0243

    .line 547
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$9;

    invoke-direct {v3, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0244

    .line 563
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;

    invoke-direct {v3, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0240

    .line 579
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->custom_dialog_scratch_empty:Landroid/widget/TextView;

    const v2, 0x7f0a04e9

    .line 580
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 581
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 582
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const v2, 0x7f0a0283

    .line 597
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 598
    new-instance v2, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->cloudScratchList:Ljava/util/List;

    invoke-direct {v2, p0, v3, p0}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;)V

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->listDownloadAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;

    .line 599
    new-instance v2, Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recommendScratchList:Ljava/util/List;

    invoke-direct {v2, p0, v3, p0}, Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter$onItemCallback;)V

    iput-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->listRecommendAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;

    .line 600
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 601
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 602
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 604
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->listRecommendAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 605
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 606
    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setCancelable(Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x3f333333    # 0.7f

    .line 607
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 608
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myDownloadDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 609
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myDownloadDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    .line 611
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    const-wide/16 v0, 0x0

    const/16 v2, 0x14

    .line 612
    invoke-direct {p0, v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->QueryRecommendScratch(JI)V

    return-void
.end method

.method private fromURI2LocalFile(Landroid/net/Uri;)V
    .registers 7

    .line 987
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 989
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 993
    :try_start_10
    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getChooseFileResultPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 995
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_31

    .line 998
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_31
    if-eqz v0, :cond_ca

    .line 1001
    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 1003
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File MIMETYPE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getScratchPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".scout"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1007
    invoke-static {v1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_8b} :catch_dc

    .line 1009
    :try_start_8b
    invoke-static {p0, p1, v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->saveFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception p1

    .line 1011
    :try_start_90
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1014
    :goto_93
    new-instance p1, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-direct {p1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;-><init>()V

    .line 1015
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setCreateTime(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setName(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1021
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setFlag(I)V

    .line 1022
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->scratchListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->addData(ILjava/lang/Object;)V

    goto :goto_e0

    .line 1024
    :cond_ca
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->activity_scratch_rv:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f110259

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_db} :catch_dc

    goto :goto_e0

    :catch_dc
    move-exception p1

    .line 1027
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e0
    :goto_e0
    return-void
.end method

.method private initBroadcast()V
    .registers 3

    .line 266
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$MyDataBroadCastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$MyDataBroadCastReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$1;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$MyDataBroadCastReceiver;

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->SCRATCH_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$MyDataBroadCastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initData()V
    .registers 11

    .line 219
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getScratchPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_73

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_73

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    move v4, v2

    :goto_27
    if-ge v4, v1, :cond_69

    aget-object v5, v0, v4

    .line 224
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_66

    .line 225
    new-instance v6, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-direct {v6}, Lcom/pilotlab/rollereye/Bean/ScratchBean;-><init>()V

    .line 226
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-virtual {v6, v7}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setCreateTime(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setUrl(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v6, v3}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setFlag(I)V

    .line 233
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 237
    :cond_69
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    :cond_73
    new-instance v0, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;-><init>()V

    const-string v1, "20191025"

    .line 258
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setCreateTime(Ljava/lang/String;)V

    const-string v1, "Test Scratch"

    .line 259
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setName(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v3}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setFlag(I)V

    .line 261
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->scratchListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->setDataAndUpdateUI(Ljava/util/List;)V

    return-void
.end method

.method private initFirstGuide()V
    .registers 6

    .line 142
    invoke-static {p0}, Lcom/app/hubert/guide/NewbieGuide;->with(Landroid/app/Activity;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v0

    const-string v1, "Scratch"

    .line 143
    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/core/Builder;->setLabel(Ljava/lang/String;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/core/Builder;->alwaysShow(Z)Lcom/app/hubert/guide/core/Builder;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->right_btn_2:Landroid/widget/ImageButton;

    .line 145
    invoke-virtual {v2, v3}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/view/View;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v2

    new-array v3, v1, [I

    const v4, 0x7f0d0145

    invoke-virtual {v2, v4, v3}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v2

    .line 144
    invoke-virtual {v0, v2}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/app/hubert/guide/model/GuidePage;->newInstance()Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->right_btn:Landroid/widget/ImageButton;

    .line 147
    invoke-virtual {v2, v3}, Lcom/app/hubert/guide/model/GuidePage;->addHighLight(Landroid/view/View;)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v2

    new-array v1, v1, [I

    const v3, 0x7f0d0144

    invoke-virtual {v2, v3, v1}, Lcom/app/hubert/guide/model/GuidePage;->setLayoutRes(I[I)Lcom/app/hubert/guide/model/GuidePage;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/core/Builder;->addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/app/hubert/guide/core/Builder;->show()Lcom/app/hubert/guide/core/Controller;

    return-void
.end method

.method private insertLocalScratch(Landroid/content/Intent;)V
    .registers 4

    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 157
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 159
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 160
    :cond_1c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->TAG:Ljava/lang/String;

    const-string v1, "uri : null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_23
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->fromURI2LocalFile(Landroid/net/Uri;)V

    :cond_26
    return-void
.end method

.method private showChoiseDialog(I)V
    .registers 6

    .line 343
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d006b

    const/4 v2, 0x0

    .line 344
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0241

    .line 345
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a024d

    .line 346
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$2;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0257

    .line 353
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a025b

    .line 432
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a025a

    .line 450
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0259

    .line 492
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x3f0ccccd    # 0.55f

    .line 516
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const/4 p1, 0x1

    .line 517
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setCancelable(Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 518
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 519
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->choiseDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 520
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->choiseDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method


# virtual methods
.method public deleteCloudItem(Landroid/view/View;I)V
    .registers 11

    const v0, 0x7f11024e

    .line 810
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

    invoke-direct {v4, p0, p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;ILandroid/view/View;)V

    const p1, 0x7f110007

    .line 849
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$16;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$16;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V

    const/4 v7, 0x1

    move-object v1, p0

    .line 810
    invoke-virtual/range {v1 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 854
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method public downloadCloudItem(Landroid/view/View;I)V
    .registers 11

    .line 734
    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-direct {v2, p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 736
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 738
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v0, 0x40e00000    # 7.0f

    .line 740
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setCenterRadius(F)V

    const/16 v0, 0xff

    .line 742
    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    const/4 v0, 0x1

    .line 744
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v3, -0x1

    aput v3, v0, v1

    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 746
    move-object v3, p1

    check-cast v3, Landroid/widget/ImageButton;

    .line 747
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 748
    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    .line 751
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

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->cloudScratchList:Ljava/util/List;

    .line 752
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->getId()I

    move-result v4

    int-to-long v4, v4

    .line 751
    invoke-interface {v0, v1, v4, v5}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->downloadScratch(Ljava/lang/String;J)Lio/reactivex/Observable;

    move-result-object v0

    .line 754
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v6

    new-instance v7, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroid/widget/ImageButton;Landroid/view/View;I)V

    invoke-virtual {v6, v7}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public downloadRecommendItem(Landroid/view/View;I)V
    .registers 11

    .line 861
    new-instance v2, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-direct {v2, p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 863
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 865
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v0, 0x40e00000    # 7.0f

    .line 867
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setCenterRadius(F)V

    const/16 v0, 0xff

    .line 869
    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    const/4 v0, 0x1

    .line 871
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v3, -0x1

    aput v3, v0, v1

    invoke-virtual {v2, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 873
    move-object v3, p1

    check-cast v3, Landroid/widget/ImageButton;

    .line 874
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 875
    invoke-virtual {v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    .line 878
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

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recommendScratchList:Ljava/util/List;

    .line 879
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->getId()I

    move-result v4

    int-to-long v4, v4

    .line 878
    invoke-interface {v0, v1, v4, v5}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->downloadScratch(Ljava/lang/String;J)Lio/reactivex/Observable;

    move-result-object v0

    .line 881
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v6

    new-instance v7, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$17;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$17;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroid/widget/ImageButton;Landroid/view/View;I)V

    invoke-virtual {v6, v7}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected initEvent()V
    .registers 2

    .line 181
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 182
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->right_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->right_btn_2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 5

    .line 189
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0210

    .line 190
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->center_title:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f11005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0448

    .line 193
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0165

    .line 194
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->activity_scratch_rv:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0245

    .line 195
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    .line 196
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    invoke-direct {v0, p0, v2, p0}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->scratchListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    .line 197
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->activity_scratch_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 198
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->activity_scratch_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 199
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->activity_scratch_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->scratchListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a04ed

    .line 200
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->right_btn:Landroid/widget/ImageButton;

    .line 201
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->right_btn:Landroid/widget/ImageButton;

    const v2, 0x7f08015b

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 202
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->right_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a04ee

    .line 203
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->right_btn_2:Landroid/widget/ImageButton;

    .line 204
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->right_btn_2:Landroid/widget/ImageButton;

    const v2, 0x7f080176

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->right_btn_2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 206
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 969
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x123

    if-ne p1, p2, :cond_19

    .line 973
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->TAG:Ljava/lang/String;

    const-string p2, "onActivityResult"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_19

    .line 976
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 978
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->fromURI2LocalFile(Landroid/net/Uri;)V

    :cond_19
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_3c

    goto :goto_3b

    .line 959
    :sswitch_8
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "*/*"

    .line 960
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    .line 961
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x123

    .line 962
    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3b

    .line 952
    :sswitch_1f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->cloudScratchList:Ljava/util/List;

    .line 953
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->recommendScratchList:Ljava/util/List;

    .line 954
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myDownloadDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz p1, :cond_34

    .line 955
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 956
    :cond_34
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->dialogCloudScratch()V

    goto :goto_3b

    .line 949
    :sswitch_38
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->finish()V

    :goto_3b
    return-void

    :sswitch_data_3c
    .sparse-switch
        0x7f0a0448 -> :sswitch_38
        0x7f0a04ed -> :sswitch_1f
        0x7f0a04ee -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 110
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 275
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 277
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 278
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 280
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myDownloadDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_11

    .line 281
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 283
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$MyDataBroadCastReceiver;

    if-eqz v0, :cond_18

    .line 284
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_18
    return-void
.end method

.method public onItemAdd(Landroid/view/View;I)V
    .registers 4

    .line 302
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "type"

    const-string v0, "add"

    .line 303
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "fileName"

    const-string v0, "_tempFile_"

    .line 304
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-class p2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 5

    .line 289
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "type"

    const-string v1, "edit"

    .line 290
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "scratch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 292
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 294
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setScratchReadName(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->scratchListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    invoke-virtual {v0, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->notifyItemChanged(I)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onItemCustomer(Landroid/view/View;I)V
    .registers 3

    .line 729
    invoke-direct {p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->showChoiseDialog(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .line 135
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 136
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->insertLocalScratch(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 168
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 169
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 170
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 173
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->choiseDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_1b

    .line 174
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 175
    :cond_1b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_22

    .line 176
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    :cond_22
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 127
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 128
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public reNameScratchFile(ILjava/lang/String;)V
    .registers 8

    .line 311
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    .line 313
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 314
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-static {v1, p2}, Lcom/pilotlab/rollereye/Utils/FileUtil;->renameFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 317
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getScratchReadName(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 318
    array-length v2, v1

    if-lez v2, :cond_4d

    const/4 v2, 0x0

    .line 319
    :goto_29
    array-length v3, v1

    if-ge v2, v3, :cond_4d

    .line 320
    aget-object v3, v1, v2

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 321
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->clearScratchReadName(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setScratchReadName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 327
    :cond_4d
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setUrl(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setName(Ljava/lang/String;)V

    .line 329
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->scratchListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->notifyItemChanged(I)V

    :cond_64
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0046

    .line 115
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 211
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 212
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->initData()V

    .line 213
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->initBroadcast()V

    .line 214
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->TAG:Ljava/lang/String;

    const-string v0, "setUpData"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->insertLocalScratch(Landroid/content/Intent;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 120
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->initView()V

    .line 121
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->initEvent()V

    .line 122
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->initFirstGuide()V

    return-void
.end method
