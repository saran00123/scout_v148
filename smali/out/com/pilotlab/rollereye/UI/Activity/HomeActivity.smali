.class public Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "HomeActivity.java"


# instance fields
.field private btn_download:Landroid/widget/Button;

.field private btn_logout:Landroid/widget/Button;

.field private btn_scratch:Landroid/widget/Button;

.field private btn_video:Landroid/widget/Button;

.field private btn_wifi:Landroid/widget/Button;

.field private ly_container:Landroid/widget/RelativeLayout;

.field private myDisposable:Lio/reactivex/disposables/Disposable;

.field private p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

.field private socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

.field private tag:Ljava/lang/String;

.field private tv_connect_mode:Landroid/widget/TextView;

.field private tv_connect_on_off:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "HomeActivity"

    .line 45
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->tag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    return-object p0
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;)Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Landroid/widget/TextView;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->tv_connect_on_off:Landroid/widget/TextView;

    return-object p0
.end method

.method private getStatus()V
    .registers 6

    .line 216
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    const-wide/16 v3, 0x3e8

    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_video:Landroid/widget/Button;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_wifi:Landroid/widget/Button;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_logout:Landroid/widget/Button;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_download:Landroid/widget/Button;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_scratch:Landroid/widget/Button;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPermission()V
    .registers 1

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a045f

    .line 124
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->ly_container:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01f8

    .line 125
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_video:Landroid/widget/Button;

    const v0, 0x7f0a01f9

    .line 126
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_wifi:Landroid/widget/Button;

    const v0, 0x7f0a05bd

    .line 127
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->tv_connect_mode:Landroid/widget/TextView;

    const v0, 0x7f0a05be

    .line 128
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->tv_connect_on_off:Landroid/widget/TextView;

    const v0, 0x7f0a01f5

    .line 129
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_logout:Landroid/widget/Button;

    const v0, 0x7f0a01f3

    .line 130
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_download:Landroid/widget/Button;

    const v0, 0x7f0a01f6

    .line 131
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_scratch:Landroid/widget/Button;

    .line 134
    new-instance v0, Lq/rorbin/badgeview/QBadgeView;

    invoke-direct {v0, p0}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->btn_video:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lq/rorbin/badgeview/QBadgeView;->bindTarget(Landroid/view/View;)Lq/rorbin/badgeview/Badge;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lq/rorbin/badgeview/Badge;->setBadgeText(Ljava/lang/String;)Lq/rorbin/badgeview/Badge;

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 262
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result p1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_19

    const/16 v0, 0x21

    if-eq p1, v0, :cond_11

    goto :goto_20

    .line 267
    :cond_11
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->tv_connect_mode:Landroid/widget/TextView;

    const-string v0, "WIFICONFIG_WIFI \u76f4\u8fde"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 264
    :cond_19
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->tv_connect_mode:Landroid/widget/TextView;

    const-string v0, "P2P_INFO \u8fde\u63a5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_20
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 251
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_16

    .line 252
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->ly_container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_16
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/VideoFrameMessage;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 246
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 155
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    .line 156
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 159
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 160
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1b
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 140
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 141
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 142
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 144
    :cond_14
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_28

    .line 145
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->tv_connect_mode:Landroid/widget/TextView;

    const-string v1, "P2P_INFO \u8fde\u63a5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    .line 146
    :cond_28
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_3b

    .line 147
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->tv_connect_mode:Landroid/widget/TextView;

    const-string v1, "WIFICONFIG_WIFI \u76f4\u8fde"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->getStatus()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d002f

    .line 60
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 4

    .line 183
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$6;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->initView()V

    .line 66
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->initEvent()V

    return-void
.end method
