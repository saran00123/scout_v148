.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "CloudActivity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_cloud_empty_ry:Landroid/widget/RelativeLayout;

.field private activity_record_calendar_btn:Landroid/widget/ImageButton;

.field private activity_record_close_ly:Landroid/widget/LinearLayout;

.field private activity_record_edit_bar:Landroid/widget/RelativeLayout;

.field private activity_record_edit_btn:Landroid/widget/ImageButton;

.field private activity_record_edit_cancel:Landroid/widget/TextView;

.field private activity_record_edit_delete:Landroid/widget/ImageButton;

.field private activity_record_open_btn:Landroid/widget/Button;

.field private activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private activity_record_service_btn:Landroid/widget/Button;

.field private activity_record_service_ly:Landroid/widget/LinearLayout;

.field private activity_record_storage:Landroid/widget/ProgressBar;

.field private activity_record_top:Landroid/widget/RelativeLayout;

.field private activity_record_total_size:Landroid/widget/TextView;

.field private activity_record_use_size:Landroid/widget/TextView;

.field private center_title:Landroid/widget/TextView;

.field private cloud_record_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;",
            ">;"
        }
    .end annotation
.end field

.field private datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mDay:I

.field private mMonth:I

.field private mYear:I

.field private myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;

.field private myDisposable:Lio/reactivex/disposables/Disposable;

.field private recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

.field private refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

.field private totalSize:J

.field private useSize:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "CloudActivity"

    .line 67
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mYear:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mMonth:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mDay:I

    return-void
.end method

.method private QueryRecords(JI)V
    .registers 7

    .line 430
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53c2\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
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

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryVideos(Ljava/lang/String;JI)Lio/reactivex/Observable;

    move-result-object p1

    .line 433
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;

    invoke-direct {p2, p0, p3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;I)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private QueryRecords(JILjava/lang/String;)V
    .registers 12

    .line 347
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 348
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->setHasDivide(Z)V

    .line 350
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryVideos(Ljava/lang/String;JILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 351
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;

    invoke-direct {p2, p0, p3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;I)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;I)I
    .registers 2

    .line 66
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mYear:I

    return p1
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)J
    .registers 3

    .line 66
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->useSize:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;J)J
    .registers 3

    .line 66
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->useSize:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;I)I
    .registers 2

    .line 66
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)J
    .registers 3

    .line 66
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;J)J
    .registers 3

    .line 66
    iput-wide p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->totalSize:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/TextView;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_use_size:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/TextView;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_total_size:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_storage:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->scanLocalRecord(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_cloud_empty_ry:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->initMemory()V

    return-void
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;I)I
    .registers 2

    .line 66
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mDay:I

    return p1
.end method

.method static synthetic access$2100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/ImageButton;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->deleteRecords()V

    return-void
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;JILjava/lang/String;)V
    .registers 5

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->QueryRecords(JILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_close_ly:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;JI)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->QueryRecords(JI)V

    return-void
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/lang/String;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_service_ly:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private deleteRecords()V
    .registers 5

    .line 569
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 570
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 571
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_1b

    .line 572
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 574
    :cond_1b
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->deleteVideos(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 575
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initBroadcast()V
    .registers 3

    .line 519
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$1;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;

    .line 520
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 521
    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->RECORD_CLOUD_DATA_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->RECORD_CLOUD_DATA_DOWNLOAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initCloudService()V
    .registers 3

    .line 266
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

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 267
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initMemory()V
    .registers 3

    .line 317
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

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->memoryStatistics(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 318
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private scanLocalRecord(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)V
    .registers 8

    .line 550
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getCloudFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_8f

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_8f

    .line 553
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_8f

    aget-object v3, v0, v2

    .line 554
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_8c

    .line 555
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getFile_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 557
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file.getName()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--recordBean.getFile_name()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getFile_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file.length()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "---recordBean.getFile_size()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getFile_size()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setLocal_path(Ljava/lang/String;)V

    goto :goto_8f

    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_8f
    :goto_8f
    return-void
.end method

.method private setCloudService()V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 145
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

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->cloudServiceSettings(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 146
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private showDatePickerDialog()V
    .registers 11

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mYear:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_10

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mYear:I

    .line 120
    :cond_10
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mMonth:I

    if-ne v1, v3, :cond_1b

    const/4 v1, 0x2

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mMonth:I

    .line 122
    :cond_1b
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mDay:I

    if-ne v1, v3, :cond_26

    const/4 v1, 0x5

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mDay:I

    .line 126
    :cond_26
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    const v5, 0x7f1200ef

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$1;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    iget v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mYear:I

    iget v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mMonth:I

    iget v9, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->mDay:I

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    .line 136
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->setCancelable(Z)V

    .line 137
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x19bfcc000L

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->show()V

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .registers 3

    .line 177
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 188
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 203
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_calendar_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_open_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_service_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 213
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a04e9

    .line 214
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const v0, 0x7f0a0448

    .line 215
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0148

    .line 216
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_use_size:Landroid/widget/TextView;

    const v0, 0x7f0a0147

    .line 217
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_total_size:Landroid/widget/TextView;

    const v0, 0x7f0a013d

    .line 218
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a0146

    .line 219
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_top:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a013c

    .line 220
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_bar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a013e

    .line 221
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_cancel:Landroid/widget/TextView;

    const v0, 0x7f0a013f

    .line 222
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    const v0, 0x7f0a013a

    .line 223
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_calendar_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a0085

    .line 224
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_cloud_empty_ry:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0210

    .line 225
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->center_title:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f11000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0142

    .line 228
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 229
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    .line 230
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 231
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 232
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;

    const v2, 0x7f080072

    invoke-direct {v1, p0, v2}, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 233
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a0145

    .line 235
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_storage:Landroid/widget/ProgressBar;

    .line 236
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 238
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->setVisibility(I)V

    const v0, 0x7f0a013b

    .line 240
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_close_ly:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0141

    .line 241
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_open_btn:Landroid/widget/Button;

    const v0, 0x7f0a0144

    .line 243
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_service_ly:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0143

    .line 244
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_service_btn:Landroid/widget/Button;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_74

    goto :goto_72

    .line 691
    :sswitch_b
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->finish()V

    goto :goto_72

    .line 725
    :sswitch_f
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 726
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 727
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_72

    .line 722
    :sswitch_1d
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->setCloudService()V

    goto :goto_72

    :sswitch_21
    const p1, 0x7f11021a

    .line 705
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f110071

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$10;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    const p1, 0x7f11003a

    .line 711
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$11;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    move-object v0, p0

    .line 705
    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 716
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_72

    .line 700
    :sswitch_49
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->setEditMode(I)V

    .line 701
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_top:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 702
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_bar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_72

    .line 694
    :sswitch_59
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->setEditMode(I)V

    .line 695
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_top:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 696
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_bar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 697
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_72

    .line 719
    :sswitch_6f
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->showDatePickerDialog()V

    :goto_72
    return-void

    nop

    :sswitch_data_74
    .sparse-switch
        0x7f0a013a -> :sswitch_6f
        0x7f0a013d -> :sswitch_59
        0x7f0a013e -> :sswitch_49
        0x7f0a013f -> :sswitch_21
        0x7f0a0141 -> :sswitch_1d
        0x7f0a0143 -> :sswitch_f
        0x7f0a0448 -> :sswitch_b
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .line 530
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 532
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 533
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 535
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    if-eqz v0, :cond_11

    .line 536
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->dismiss()V

    .line 538
    :cond_11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 539
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 541
    :cond_22
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;

    if-eqz v0, :cond_29

    .line 542
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_29
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 11

    .line 622
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x96

    if-le v1, v3, :cond_b2

    const/16 v1, 0x4b

    if-ge p2, v1, :cond_45

    move p2, v2

    :goto_1d
    if-ge v2, v3, :cond_e1

    .line 631
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 632
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 633
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_30
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_42

    .line 635
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 637
    :cond_45
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-le p2, v4, :cond_84

    .line 638
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    :goto_55
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_b0

    .line 639
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 640
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 641
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_6e
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_81

    .line 643
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :cond_81
    add-int/lit8 p2, p2, 0x1

    goto :goto_55

    :cond_84
    add-int/lit8 v3, p2, -0x4b

    :goto_86
    add-int/lit8 v4, p2, 0x4b

    if-ge v3, v4, :cond_b0

    .line 647
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 648
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9b

    .line 649
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_9b
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_ad

    .line 651
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    :cond_b0
    move p2, v2

    goto :goto_e1

    :cond_b2
    move p2, v2

    .line 655
    :goto_b3
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_e1

    .line 656
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->cloud_record_list:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 657
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_cc

    .line 658
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_cc
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_de

    .line 660
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :cond_de
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 664
    :cond_e1
    :goto_e1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_100

    .line 665
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 666
    check-cast v0, Ljava/io/Serializable;

    const-string v1, "record_list"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "record_position"

    .line 667
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    const-class p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->startActivity(Landroid/content/Intent;)V

    :cond_100
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 734
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 735
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->initCloudService()V

    return-void
.end method

.method public selectSet(Ljava/util/Set;)V
    .registers 3

    .line 676
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_d

    .line 677
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_13

    .line 678
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_13
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0024

    .line 104
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 4

    .line 250
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 251
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 252
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 254
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->initBroadcast()V

    .line 256
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_24

    .line 257
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    :cond_24
    const-wide/16 v0, 0x0

    const/16 p1, 0xc

    .line 259
    invoke-direct {p0, v0, v1, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->QueryRecords(JI)V

    .line 261
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->initMemory()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 109
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpView()V

    .line 110
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->initView()V

    .line 111
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->initEvent()V

    return-void
.end method
