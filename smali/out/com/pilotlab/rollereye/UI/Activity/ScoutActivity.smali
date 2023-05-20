.class public Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "ScoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$LocationReceiver;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_scout_backer_btn:Landroid/widget/ImageButton;

.field private activity_scout_backer_info:Landroid/widget/LinearLayout;

.field private activity_scout_backername:Landroid/widget/TextView;

.field private activity_scout_badge_1:Landroid/widget/ImageView;

.field private activity_scout_badge_2:Landroid/widget/ImageView;

.field private activity_scout_badge_3:Landroid/widget/ImageView;

.field private activity_scout_badge_4:Landroid/widget/ImageView;

.field private activity_scout_badge_5:Landroid/widget/ImageView;

.field private activity_scout_badge_ety:Landroid/widget/ImageView;

.field private activity_scout_badge_layout:Landroid/widget/LinearLayout;

.field private activity_scout_monitor:Landroid/widget/Button;

.field private activity_scout_scratch:Landroid/widget/Button;

.field private activity_scout_start_ly:Landroid/widget/LinearLayout;

.field private activity_scout_video:Landroid/widget/Button;

.field private checkNewFirmwareDisposable:Lio/reactivex/disposables/Disposable;

.field private exitDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private faq_ly:Landroid/widget/LinearLayout;

.field private fiveStarCommentWebDialog:Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private message_ly:Landroid/widget/LinearLayout;

.field private myCommentBadge:Lq/rorbin/badgeview/Badge;

.field private myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$LocationReceiver;

.field private myMessageBadge:Lq/rorbin/badgeview/Badge;

.field private needCheckNewFirmware:Z

.field private photo_ly:Landroid/widget/LinearLayout;

.field private top_setting_ly:Landroid/widget/LinearLayout;

.field private userview_fy:Landroid/widget/FrameLayout;

.field private userview_ly:Landroid/widget/LinearLayout;

.field private userview_name_tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "ScoutActivity"

    .line 82
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->needCheckNewFirmware:Z

    return-void
.end method

.method private QueryAnnouncement()V
    .registers 3

    .line 521
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

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryNotice(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 522
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$18;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$18;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private QueryEarliestPushMessage()V
    .registers 3

    .line 440
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

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryEarliestPushMessage(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 441
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$15;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$15;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private QueryNotification()V
    .registers 5

    .line 488
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

    const-string v2, "0"

    const/16 v3, 0x14

    invoke-interface {v0, v1, v2, v3}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryPushMessage(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 489
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$17;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$17;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 1

    .line 80
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->showQuestionNaireDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->fiveStarCommentWebDialog:Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_start_ly:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 1

    .line 80
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->initBadge()V

    return-void
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 1

    .line 80
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->QueryEarliestPushMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 1

    .line 80
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->initWiFiStatus()V

    return-void
.end method

.method static synthetic access$802(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->checkNewFirmwareDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private checkNewFirmware()V
    .registers 5

    .line 640
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "check new firmware"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 643
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v2

    sget-object v3, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_35

    .line 645
    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$22;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$22;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-static {v2}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$21;

    invoke-direct {v3, p0, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$21;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;J)V

    .line 654
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$20;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$20;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    .line 671
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_35
    return-void
.end method

.method private checkQuestionNaire()V
    .registers 8

    .line 309
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x4ca4cb80    # 8.64E7f

    const/4 v2, 0x0

    .line 311
    :try_start_8
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    div-float/2addr v0, v1

    float-to-double v3, v0

    .line 313
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "day interval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_67

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_67

    .line 316
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->isQuestionNaire(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-wide/16 v3, 0x1

    .line 318
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$12;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$12;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception v0

    .line 327
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 330
    :cond_67
    :goto_67
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->get5StarQNTime(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_a1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->get5StarQNTime(Landroid/content/Context;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float v0, v3

    div-float/2addr v0, v1

    const/high16 v1, 0x40e00000    # 7.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a1

    .line 331
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_start_ly:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    new-instance v0, Lq/rorbin/badgeview/QBadgeView;

    invoke-direct {v0, p0}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_start_ly:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lq/rorbin/badgeview/QBadgeView;->bindTarget(Landroid/view/View;)Lq/rorbin/badgeview/Badge;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lq/rorbin/badgeview/Badge;->setBadgePadding(FZ)Lq/rorbin/badgeview/Badge;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lq/rorbin/badgeview/Badge;->setBadgeText(Ljava/lang/String;)Lq/rorbin/badgeview/Badge;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myCommentBadge:Lq/rorbin/badgeview/Badge;

    :cond_a1
    return-void
.end method

.method private initBackerBadge()V
    .registers 4

    .line 586
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_79

    const-string v1, "badge"

    .line 589
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "username"

    .line 590
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_79

    if-eqz v0, :cond_79

    const-string v2, "0"

    .line 591
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 593
    :try_start_22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 594
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_backername:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const/16 v2, 0x8

    if-ne v1, v0, :cond_45

    .line 596
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6e

    :cond_45
    const/4 v0, 0x2

    if-ne v1, v0, :cond_58

    .line 601
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6e

    :cond_58
    const/4 v0, 0x3

    if-ne v1, v0, :cond_66

    .line 605
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6e

    :cond_66
    const/4 v0, 0x4

    if-ne v1, v0, :cond_6e

    .line 608
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception v0

    .line 612
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_79
    :goto_79
    return-void
.end method

.method private initBadge()V
    .registers 5

    .line 575
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->checkUnreadNotification()I

    move-result v0

    if-gtz v0, :cond_20

    new-instance v0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->checkUnreadAnnoucement()I

    move-result v0

    if-lez v0, :cond_17

    goto :goto_20

    .line 579
    :cond_17
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myMessageBadge:Lq/rorbin/badgeview/Badge;

    if-eqz v0, :cond_42

    const/4 v1, 0x0

    .line 580
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/Badge;->hide(Z)V

    goto :goto_42

    .line 576
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myMessageBadge:Lq/rorbin/badgeview/Badge;

    const-string v1, ""

    if-nez v0, :cond_3f

    .line 577
    new-instance v0, Lq/rorbin/badgeview/QBadgeView;

    invoke-direct {v0, p0}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->message_ly:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Lq/rorbin/badgeview/QBadgeView;->bindTarget(Landroid/view/View;)Lq/rorbin/badgeview/Badge;

    move-result-object v0

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lq/rorbin/badgeview/Badge;->setBadgePadding(FZ)Lq/rorbin/badgeview/Badge;

    move-result-object v0

    invoke-interface {v0, v1}, Lq/rorbin/badgeview/Badge;->setBadgeText(Ljava/lang/String;)Lq/rorbin/badgeview/Badge;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myMessageBadge:Lq/rorbin/badgeview/Badge;

    goto :goto_42

    .line 578
    :cond_3f
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/Badge;->setBadgeText(Ljava/lang/String;)Lq/rorbin/badgeview/Badge;

    :cond_42
    :goto_42
    return-void
.end method

.method private initWiFiStatus()V
    .registers 8

    .line 474
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->getWifiIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v1

    sget-object v2, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v1, v2, :cond_35

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->WIFI_DIRECT_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    const v0, 0x7f110164

    .line 477
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$16;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$16;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_35
    return-void
.end method

.method private showQuestionNaireDialog()V
    .registers 5

    .line 342
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110065

    .line 343
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x3f0ccccd    # 0.55f

    .line 344
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f0d0083

    const/4 v2, 0x0

    .line 345
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0282

    .line 346
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 347
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f11003e

    .line 348
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;

    invoke-direct {v3, p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;Landroid/widget/RadioGroup;)V

    invoke-virtual {v0, v1, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f110007

    .line 412
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$14;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$14;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 418
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 701
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 702
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_d0

    .line 704
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 705
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 707
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xbbe

    if-ne v1, v2, :cond_d0

    .line 711
    iget-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->needCheckNewFirmware:Z

    if-nez v1, :cond_2c

    return-void

    :cond_2c
    const/4 v1, 0x0

    .line 714
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->needCheckNewFirmware:Z

    .line 715
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "body"

    .line 716
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    .line 717
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d0

    .line 718
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 719
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/OtaBean;

    if-eqz p1, :cond_d0

    .line 722
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getHasNew()I

    move-result v0

    const v1, 0x7f11003a

    const v2, 0x7f110071

    const/4 v3, 0x1

    if-ne v0, v3, :cond_96

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getHasDownload()I

    move-result v0

    if-nez v0, :cond_96

    const p1, 0x7f110168

    .line 723
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$23;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$23;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    .line 735
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$24;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$24;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    move-object v3, p0

    .line 723
    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 740
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_d0

    .line 741
    :cond_96
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getHasNew()I

    move-result v0

    if-ne v0, v3, :cond_d0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getHasDownload()I

    move-result p1

    if-ne p1, v3, :cond_d0

    const p1, 0x7f110169

    .line 742
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$25;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$25;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    .line 750
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$26;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$26;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    move-object v3, p0

    .line 742
    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 755
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V
    :try_end_cb
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception p1

    .line 762
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_d0
    :goto_d0
    return-void
.end method

.method public getWifiIp()Ljava/lang/String;
    .registers 3

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 237
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 239
    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->int2Ip(I)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initEvent()V
    .registers 5

    .line 137
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_video:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 151
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_scratch:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 160
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->top_setting_ly:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 169
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->photo_ly:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->userview_ly:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 185
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->userview_fy:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 193
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_monitor:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 201
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->message_ly:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 218
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->faq_ly:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$9;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 227
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_backer_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_start_ly:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 8

    .line 248
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0164

    .line 250
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_video:Landroid/widget/Button;

    const v0, 0x7f0a0161

    .line 251
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_scratch:Landroid/widget/Button;

    const v0, 0x7f0a05cb

    .line 252
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->userview_ly:Landroid/widget/LinearLayout;

    const v0, 0x7f0a05ca

    .line 253
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->userview_fy:Landroid/widget/FrameLayout;

    const v0, 0x7f0a05cc

    .line 254
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->userview_name_tv:Landroid/widget/TextView;

    const v0, 0x7f0a05af

    .line 255
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->top_setting_ly:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04c7

    .line 256
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->photo_ly:Landroid/widget/LinearLayout;

    const v0, 0x7f0a047f

    .line 257
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->message_ly:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02ee

    .line 258
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->faq_ly:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0160

    .line 259
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_monitor:Landroid/widget/Button;

    const v0, 0x7f0a015f

    .line 261
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_layout:Landroid/widget/LinearLayout;

    .line 263
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->fiveStarCommentWebDialog:Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    const v0, 0x7f110113

    .line 265
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$10;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    const v0, 0x7f11003a

    .line 273
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$11;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    move-object v1, p0

    .line 265
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->exitDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    const v0, 0x7f0a015e

    .line 280
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_ety:Landroid/widget/ImageView;

    const v0, 0x7f0a0156

    .line 281
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_backer_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a0157

    .line 282
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_backer_info:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0158

    .line 284
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_backername:Landroid/widget/TextView;

    const v0, 0x7f0a0159

    .line 285
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_1:Landroid/widget/ImageView;

    const v0, 0x7f0a015a

    .line 286
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_2:Landroid/widget/ImageView;

    const v0, 0x7f0a015b

    .line 287
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_3:Landroid/widget/ImageView;

    const v0, 0x7f0a015c

    .line 288
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_4:Landroid/widget/ImageView;

    const v0, 0x7f0a015d

    .line 289
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_5:Landroid/widget/ImageView;

    const v0, 0x7f0a0163

    .line 291
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_start_ly:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->exitDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 131
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->exitDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 769
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 771
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_a6

    goto/16 :goto_a4

    .line 789
    :sswitch_e
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 790
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a4

    .line 793
    :sswitch_18
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a4

    .line 781
    :sswitch_22
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 782
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a4

    .line 785
    :sswitch_2c
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 786
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a4

    .line 773
    :sswitch_35
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a4

    .line 812
    :sswitch_3e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myCommentBadge:Lq/rorbin/badgeview/Badge;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lq/rorbin/badgeview/Badge;->hide(Z)V

    .line 813
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->fiveStarCommentWebDialog:Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    if-eqz p1, :cond_a4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_a4

    .line 814
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->fiveStarCommentWebDialog:Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->show()V

    goto :goto_a4

    .line 777
    :sswitch_54
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 778
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a4

    .line 797
    :sswitch_5d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_backer_info:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const-wide/16 v0, 0x12c

    const/4 v2, 0x2

    const-string v3, "rotation"

    if-nez p1, :cond_88

    .line 798
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_ety:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_backer_info:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_backer_btn:Landroid/widget/ImageButton;

    new-array v2, v2, [F

    fill-array-data v2, :array_c8

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 801
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 802
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_a4

    .line 804
    :cond_88
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_badge_ety:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 805
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_backer_info:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 806
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->activity_scout_backer_btn:Landroid/widget/ImageButton;

    new-array v2, v2, [F

    fill-array-data v2, :array_d0

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 807
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 808
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_a4
    :goto_a4
    return-void

    nop

    :sswitch_data_a6
    .sparse-switch
        0x7f0a0156 -> :sswitch_5d
        0x7f0a0161 -> :sswitch_54
        0x7f0a0163 -> :sswitch_3e
        0x7f0a0164 -> :sswitch_35
        0x7f0a04c7 -> :sswitch_2c
        0x7f0a05ae -> :sswitch_22
        0x7f0a05ca -> :sswitch_18
        0x7f0a05cb -> :sswitch_e
    .end sparse-switch

    :array_c8
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data

    :array_d0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 113
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 621
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 622
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 623
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 625
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$LocationReceiver;

    if-eqz v0, :cond_1b

    .line 626
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 628
    :cond_1b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_22

    .line 629
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 631
    :cond_22
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->checkNewFirmwareDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_29

    .line 632
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_29
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 553
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 555
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$LocationReceiver;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$LocationReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$LocationReceiver;

    .line 556
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.sdk.android.push.RECEIVE"

    .line 557
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$LocationReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->initBadge()V

    .line 562
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$19;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$19;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 569
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 570
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_4d
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0045

    .line 118
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 4

    .line 296
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 297
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->userview_name_tv:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->QueryNotification()V

    .line 299
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->QueryAnnouncement()V

    .line 300
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->initBackerBadge()V

    .line 301
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->checkNewFirmware()V

    .line 302
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->checkQuestionNaire()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 124
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->initView()V

    .line 125
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->initEvent()V

    return-void
.end method
