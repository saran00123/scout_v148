.class public Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;
.super Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;
.source "MessageFragment.java"

# interfaces
.implements Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$onItemCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;,
        Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$OnFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static TAG:Ljava/lang/String; = "MessageFragment"

.field public static final TYPE_ANNOUNCEMENT:I = 0x2

.field public static final TYPE_NOTIFICATION:I = 0x1


# instance fields
.field private customer_empty_ry:Landroid/widget/RelativeLayout;

.field private data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private fragment_announcement_tv:Landroid/widget/TextView;

.field private fragment_message_ly:Landroid/widget/LinearLayout;

.field private fragment_message_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private fragment_notification_content_tv:Landroid/widget/TextView;

.field private fragment_notification_ly:Landroid/widget/LinearLayout;

.field private fragment_notification_record_cover:Landroid/widget/ImageView;

.field private fragment_notification_record_cover_play:Landroid/widget/ImageView;

.field private fragment_notification_record_createtime:Landroid/widget/TextView;

.field private fragment_notification_record_filesize:Landroid/widget/TextView;

.field private fragment_notification_title_tv:Landroid/widget/TextView;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mListener:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$OnFragmentInteractionListener;

.field private markwon:Lio/noties/markwon/Markwon;

.field private messageAdapter:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

.field private myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

.field private playUrl:Ljava/lang/String;

.field private refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field private thumbUrl:Ljava/lang/String;

.field private type:I

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->data_list:Ljava/util/List;

    const-string v0, ""

    .line 79
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->playUrl:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->thumbUrl:Ljava/lang/String;

    return-void
.end method

.method private QueryAnnouncement()V
    .registers 4

    .line 242
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryNotice(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 243
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$2;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private QueryNotification(I)V
    .registers 6

    .line 157
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->data_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "0"

    goto :goto_32

    :cond_b
    if-lez p1, :cond_20

    .line 160
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->data_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_20
    if-gez p1, :cond_30

    .line 162
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->data_list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_30
    const-string v0, ""

    .line 165
    :goto_32
    sget-object v1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, p1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryPushMessage(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 170
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private QueryNotificationByDate(Ljava/lang/String;)V
    .registers 6

    .line 297
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->data_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 299
    sget-object v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->TAG:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-interface {v0, v2, v1, v3, p1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryPushMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 302
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$3;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 53
    sget-object v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->messageAdapter:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)Ljava/util/List;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->data_list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->showEmptyView()V

    return-void
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)I
    .registers 1

    .line 53
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->type:I

    return p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;I)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->QueryNotification(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->QueryAnnouncement()V

    return-void
.end method

.method private initBroadCast()V
    .registers 4

    .line 141
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.sdk.android.push.RECEIVE"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initData()V
    .registers 3

    .line 120
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 121
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->QueryAnnouncement()V

    goto :goto_e

    :cond_9
    const/16 v0, 0x14

    .line 123
    invoke-direct {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->QueryNotification(I)V

    :goto_e
    return-void
.end method

.method private initEvent()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_cover:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 360
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 361
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0334

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_message_ly:Landroid/widget/LinearLayout;

    .line 362
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_message_rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 363
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->data_list:Ljava/util/List;

    invoke-direct {v0, v1, v3, p0}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->messageAdapter:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    .line 364
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_message_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 365
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_message_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 366
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_message_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 367
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_message_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->messageAdapter:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 368
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v1, 0x7f0a04e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 370
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_78

    .line 371
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 373
    :cond_78
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$4;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$4;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 381
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$5;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$5;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 390
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v2, 0x7f0a0300

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_announcement_tv:Landroid/widget/TextView;

    .line 391
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v2, 0x7f0a0337

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_ly:Landroid/widget/LinearLayout;

    .line 392
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v2, 0x7f0a033c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_title_tv:Landroid/widget/TextView;

    .line 393
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v2, 0x7f0a033a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_createtime:Landroid/widget/TextView;

    .line 394
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v2, 0x7f0a033b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_filesize:Landroid/widget/TextView;

    .line 395
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v2, 0x7f0a0338

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_cover:Landroid/widget/ImageView;

    .line 396
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v2, 0x7f0a0339

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_cover_play:Landroid/widget/ImageView;

    .line 397
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v2, 0x7f0a0336

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_content_tv:Landroid/widget/TextView;

    .line 399
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    const v2, 0x7f0a025e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->customer_empty_ry:Landroid/widget/RelativeLayout;

    .line 400
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v2, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v2, :cond_112

    .line 401
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->customer_empty_ry:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 405
    :cond_112
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/noties/markwon/Markwon;->builder(Landroid/content/Context;)Lio/noties/markwon/Markwon$Builder;

    move-result-object v0

    invoke-static {}, Lio/noties/markwon/html/HtmlPlugin;->create()Lio/noties/markwon/html/HtmlPlugin;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/noties/markwon/Markwon$Builder;->usePlugin(Lio/noties/markwon/MarkwonPlugin;)Lio/noties/markwon/Markwon$Builder;

    move-result-object v0

    invoke-interface {v0}, Lio/noties/markwon/Markwon$Builder;->build()Lio/noties/markwon/Markwon;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->markwon:Lio/noties/markwon/Markwon;

    return-void
.end method

.method public static newInstance(I)Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;
    .registers 4

    .line 90
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 92
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showEmptyView()V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->data_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_16

    .line 233
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->customer_empty_ry:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_message_ly:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_20

    .line 236
    :cond_16
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->customer_empty_ry:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_message_ly:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_20
    return-void
.end method


# virtual methods
.method public checkDateData(Ljava/lang/String;)V
    .registers 5

    .line 433
    sget-object v0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check Data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->QueryNotificationByDate(Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 412
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 413
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_c

    .line 414
    check-cast p1, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$OnFragmentInteractionListener;

    return-void

    .line 416
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0338

    if-eq p1, v0, :cond_a

    goto :goto_50

    .line 505
    :cond_a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->playUrl:Ljava/lang/String;

    const-string v0, "thumbUrl"

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->thumbUrl:Ljava/lang/String;

    if-eqz p1, :cond_32

    .line 506
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 507
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pilotlab/rollereye/UI/Activity/Message/ExoPlayActivity;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 508
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->playUrl:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->thumbUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_50

    .line 511
    :cond_32
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->playUrl:Ljava/lang/String;

    if-nez p1, :cond_50

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->thumbUrl:Ljava/lang/String;

    if-eqz p1, :cond_50

    .line 512
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 513
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 514
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->thumbUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->startActivity(Landroid/content/Intent;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 99
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 101
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->type:I

    :cond_15
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d0092

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    .line 109
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->initView()V

    .line 110
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->initEvent()V

    .line 111
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->initData()V

    .line 112
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 149
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDestroyView()V

    .line 150
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 151
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 423
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$OnFragmentInteractionListener;

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 7

    .line 439
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->data_list:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    .line 440
    new-instance p2, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->updateMessageStatus(Ljava/lang/String;)V

    .line 442
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$OnFragmentInteractionListener;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$OnFragmentInteractionListener;->onFragmentInteraction(Ljava/lang/String;)V

    .line 444
    iget p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->type:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-ne p2, v2, :cond_40

    .line 445
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_announcement_tv:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_ly:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 447
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->markwon:Lio/noties/markwon/Markwon;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_announcement_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/noties/markwon/Markwon;->setMarkdown(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_f1

    .line 449
    :cond_40
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_announcement_tv:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_ly:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_createtime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_title_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_filesize:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getExt()Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->getSize()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->sizeFromLong2Text(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_content_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getExt()Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->playUrl:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getExt()Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->getThumbUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->thumbUrl:Ljava/lang/String;

    .line 458
    sget-object p2, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->playUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", thumbUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->playUrl:Ljava/lang/String;

    if-nez p2, :cond_bc

    .line 460
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_cover_play:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_filesize:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c6

    .line 463
    :cond_bc
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_cover_play:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_filesize:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    :goto_c6
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 468
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getExt()Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean$ExtBean;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 469
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080183

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->fragment_notification_record_cover:Landroid/widget/ImageView;

    .line 470
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 472
    :goto_f1
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->messageAdapter:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->setCheckPositio(Ljava/lang/String;)V

    .line 473
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->messageAdapter:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->updateUI()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 129
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    if-eqz v0, :cond_10

    .line 131
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$MessageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 136
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->initBroadCast()V

    return-void
.end method
