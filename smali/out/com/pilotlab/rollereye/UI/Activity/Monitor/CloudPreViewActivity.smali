.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "CloudPreViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewExoFragment$OnFragmentInteractionListener;
.implements Lcom/pilotlab/rollereye/UI/Fragment/CloudPreviewImageFragment$OnFragmentInteractionListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_pre_view_topbar:Landroid/widget/RelativeLayout;

.field private activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

.field private center_title:Landroid/widget/TextView;

.field private currentStatus:Lzlc/season/rxdownload3/core/Status;

.field private current_position:I

.field private downloadDisposable:Lio/reactivex/disposables/Disposable;

.field private layout_left:Landroid/widget/LinearLayout;

.field private loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

.field private mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;

.field private myDisposable:Lio/reactivex/disposables/Disposable;

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

.field private top_album_delete:Landroid/widget/ImageButton;

.field private top_album_download:Landroid/widget/ImageButton;

.field private top_album_share:Landroid/widget/ImageButton;

.field private total_record_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "CloudPreViewActivity"

    .line 54
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Lzlc/season/rxdownload3/core/Status;

    invoke-direct {v0}, Lzlc/season/rxdownload3/core/Status;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->currentStatus:Lzlc/season/rxdownload3/core/Status;

    .line 362
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$6;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->deleteRecord()V

    return-void
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;)Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Lzlc/season/rxdownload3/core/Status;)Lzlc/season/rxdownload3/core/Status;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->currentStatus:Lzlc/season/rxdownload3/core/Status;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    return-object p0
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->share()V

    return-void
.end method

.method static synthetic access$602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->current_position:I

    return p0
.end method

.method static synthetic access$702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->current_position:I

    return p1
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Ljava/util/List;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->total_record_list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Landroid/widget/TextView;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->center_title:Landroid/widget/TextView;

    return-object p0
.end method

.method private createDownloadMission(Z)V
    .registers 11

    .line 239
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->show()V

    .line 240
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getFile_name()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getCloudFilePath()Ljava/lang/String;

    move-result-object v7

    .line 242
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cloud:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v8, Lzlc/season/rxdownload3/core/Mission;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v8

    move-object v3, v0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lzlc/season/rxdownload3/core/Mission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 244
    sget-object v1, Lzlc/season/rxdownload3/RxDownload;->INSTANCE:Lzlc/season/rxdownload3/RxDownload;

    invoke-virtual {v1, v8}, Lzlc/season/rxdownload3/RxDownload;->clear(Lzlc/season/rxdownload3/core/Mission;)Lio/reactivex/Maybe;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Maybe;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 245
    sget-object v1, Lzlc/season/rxdownload3/RxDownload;->INSTANCE:Lzlc/season/rxdownload3/RxDownload;

    const/4 v2, 0x1

    invoke-virtual {v1, v8, v2}, Lzlc/season/rxdownload3/RxDownload;->create(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Flowable;

    move-result-object v1

    .line 246
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;

    invoke-direct {v2, p0, v7, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->downloadDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private deleteRecord()V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 300
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 302
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->deleteVideos(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 303
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private share()V
    .registers 5

    .line 219
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->total_record_list:Ljava/util/List;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->current_position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;-><init>(Landroid/app/Activity;)V

    .line 222
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->total_record_list:Ljava/util/List;

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->current_position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getFile_type()I

    move-result v2

    sget v3, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->type_record:I

    if-ne v2, v3, :cond_47

    const-string v2, "video/*"

    .line 227
    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setContentType(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    move-result-object v2

    .line 228
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setShareFileUri(Landroid/net/Uri;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    move-result-object v0

    const-string v2, "Share Video"

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    goto :goto_5a

    :cond_47
    const-string v2, "image/*"

    .line 232
    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setContentType(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    move-result-object v2

    .line 233
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setShareFileUri(Landroid/net/Uri;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    move-result-object v0

    const-string v2, "Share Image"

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/Share$Builder;

    .line 235
    :goto_5a
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->build()Lcom/pilotlab/rollereye/CustomerView/Share;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/Share;->shareBySystem()V

    return-void
.end method

.method private start()V
    .registers 3

    .line 291
    sget-object v0, Lzlc/season/rxdownload3/RxDownload;->INSTANCE:Lzlc/season/rxdownload3/RxDownload;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/RxDownload;->start(Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Maybe;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private stop()V
    .registers 3

    .line 295
    sget-object v0, Lzlc/season/rxdownload3/RxDownload;->INSTANCE:Lzlc/season/rxdownload3/RxDownload;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/RxDownload;->stop(Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Maybe;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .registers 3

    .line 131
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 132
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->top_album_share:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->top_album_delete:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->top_album_download:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 109
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    .line 110
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    const v2, 0x7f11021e

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    const v2, 0x7f110021

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->setTitle(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 116
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->setVisibility(I)V

    const v0, 0x7f0a0135

    .line 118
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0448

    .line 119
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a05a3

    .line 120
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->top_album_share:Landroid/widget/ImageButton;

    const v0, 0x7f0a05a1

    .line 121
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->top_album_delete:Landroid/widget/ImageButton;

    const v0, 0x7f0a05a2

    .line 122
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->top_album_download:Landroid/widget/ImageButton;

    .line 123
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->top_album_download:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a0210

    .line 124
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f0a0136

    .line 125
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_b0

    packed-switch p1, :pswitch_data_b4

    goto/16 :goto_b3

    .line 194
    :pswitch_e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local_path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_47

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 197
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->share()V

    goto :goto_b3

    :cond_47
    const/4 p1, 0x1

    .line 199
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->createDownloadMission(Z)V

    goto :goto_b3

    .line 203
    :pswitch_4c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_83

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_83

    const p1, 0x7f11021d

    .line 204
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$3;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_b3

    :cond_83
    const/4 p1, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->createDownloadMission(Z)V

    goto :goto_b3

    :pswitch_88
    const p1, 0x7f11021a

    .line 179
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f110071

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V

    const p1, 0x7f11003a

    .line 185
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$2;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V

    move-object v0, p0

    .line 179
    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_b3

    .line 176
    :cond_b0
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->finish()V

    :goto_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x7f0a05a1
        :pswitch_88
        :pswitch_4c
        :pswitch_e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 78
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 144
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 146
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_11

    .line 147
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 148
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->downloadDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_18

    .line 149
    invoke-static {v0}, Lzlc/season/rxdownload3/helper/UtilsKt;->dispose(Lio/reactivex/disposables/Disposable;)V

    .line 151
    :cond_18
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->dismiss()V

    return-void
.end method

.method public onFragmentInteraction(Z)V
    .registers 3

    if-eqz p1, :cond_9

    .line 357
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_10

    .line 358
    :cond_9
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_topbar:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_10
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 165
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 167
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 156
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 158
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0041

    .line 83
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 4

    .line 94
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 95
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->TAG:Ljava/lang/String;

    const-string v0, "setUpData"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "record_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->current_position:I

    .line 97
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "record_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->total_record_list:Ljava/util/List;

    .line 98
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->total_record_list:Ljava/util/List;

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->current_position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 99
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->center_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->total_record_list:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;

    .line 101
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->mAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 102
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->activity_pre_view_viewpager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->current_position:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 88
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->initView()V

    .line 89
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->initEvent()V

    return-void
.end method
