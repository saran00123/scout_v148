.class public Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "HelloActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_hello_backername:Landroid/widget/TextView;

.field private activity_hello_badge_1:Landroid/widget/ImageView;

.field private activity_hello_badge_2:Landroid/widget/ImageView;

.field private activity_hello_badge_3:Landroid/widget/ImageView;

.field private activity_hello_badge_4:Landroid/widget/ImageView;

.field private activity_hello_badge_5:Landroid/widget/ImageView;

.field private activity_hello_badge_layout:Landroid/widget/LinearLayout;

.field private activity_hello_bg:Landroid/widget/ImageView;

.field private lm:Landroid/location/LocationManager;

.field private myDisposable:Lio/reactivex/disposables/Disposable;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "HelloActivity"

    .line 61
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->tag:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private Login(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 286
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->login(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 287
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;

    invoke-direct {v0, p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private QueryRobot()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 354
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryRobot(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 356
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private SwitchPage()V
    .registers 4

    .line 228
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->initService()V

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->initPath()V

    return-void
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->QueryRobot()V

    return-void
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method private checkGPS()V
    .registers 9

    const-string v0, "location"

    .line 153
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->lm:Landroid/location/LocationManager;

    .line 154
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 156
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->initPermission()V

    goto :goto_38

    :cond_18
    const v0, 0x7f1102ad

    .line 158
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$1;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_38
    return-void
.end method

.method private initBadge()V
    .registers 5

    .line 108
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7f

    const-string v1, "badge"

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "username"

    .line 112
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_7f

    if-eqz v0, :cond_7f

    const-string v2, "0"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 115
    :try_start_22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 116
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_bg:Landroid/widget/ImageView;

    const v3, 0x7f080108

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_backername:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const/4 v2, 0x4

    if-ne v1, v0, :cond_4c

    .line 119
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    :cond_4c
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5f

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    :cond_5f
    const/4 v0, 0x3

    if-ne v1, v0, :cond_6d

    .line 128
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    :cond_6d
    if-ne v1, v2, :cond_74

    .line 131
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7f
    :goto_7f
    return-void
.end method

.method private initPath()V
    .registers 3

    .line 215
    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v0

    const v1, 0x7f1100cc

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Controller/FilePathController;->initGlobalPath(Ljava/lang/String;)V

    return-void
.end method

.method private initPermission()V
    .registers 4

    .line 187
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v1, 0x1

    .line 188
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->setLogging(Z)V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 189
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V

    .line 190
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initService()V
    .registers 4

    const-string v0, "com.pilotlab.rollereye.Services.NetWorkBacService"

    .line 173
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 174
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->SwitchPage()V

    goto :goto_27

    .line 176
    :cond_c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->tag:Ljava/lang/String;

    const-string v1, "initService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_24

    .line 179
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_27

    .line 181
    :cond_24
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_27
    return-void
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a00e4

    .line 91
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_bg:Landroid/widget/ImageView;

    const v0, 0x7f0a00e3

    .line 92
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00de

    .line 93
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_1:Landroid/widget/ImageView;

    const v0, 0x7f0a00df

    .line 94
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_2:Landroid/widget/ImageView;

    const v0, 0x7f0a00e0

    .line 95
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_3:Landroid/widget/ImageView;

    const v0, 0x7f0a00e1

    .line 96
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_4:Landroid/widget/ImageView;

    const v0, 0x7f0a00e2

    .line 97
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_badge_5:Landroid/widget/ImageView;

    const v0, 0x7f0a00dd

    .line 98
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->activity_hello_backername:Landroid/widget/TextView;

    .line 99
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 220
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;->getTag()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 221
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->SwitchPage()V

    :cond_e
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 424
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1315

    if-ne p1, p2, :cond_35

    .line 426
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->lm:Landroid/location/LocationManager;

    const-string p2, "gps"

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 428
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->initPermission()V

    goto :goto_35

    :cond_15
    const p1, 0x7f110263

    .line 430
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$6;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3f4ccccd    # 0.8f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_35
    :goto_35
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 72
    invoke-static {}, Lcom/pilotlab/rollereye/Manager/AppStatusManager;->getInstance()Lcom/pilotlab/rollereye/Manager/AppStatusManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Manager/AppStatusManager;->setAppStatus(I)V

    .line 73
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 446
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 447
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 448
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 449
    :cond_a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 450
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d002e

    .line 78
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 145
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 146
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 149
    :cond_11
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->initPermission()V

    return-void
.end method

.method protected setUpView()V
    .registers 2

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/StatusNavUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 84
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/StatusNavUtils;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 85
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->initView()V

    .line 86
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;->initBadge()V

    return-void
.end method
