.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "PathChoiseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_path_cloud:Landroid/widget/LinearLayout;

.field private activity_path_local:Landroid/widget/LinearLayout;

.field private center_title:Landroid/widget/TextView;

.field private isVIP:Z

.field private layout_left:Landroid/widget/LinearLayout;

.field private mDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "PathChoiseActivity"

    .line 39
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->isVIP:Z

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->isVIP:Z

    return p1
.end method

.method private querUserInfo()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 148
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

    .line 149
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;->getTag()I

    move-result p1

    const/16 v0, 0x101

    if-eq p1, v0, :cond_15

    const/16 v0, 0x102

    if-eq p1, v0, :cond_11

    goto :goto_18

    :cond_11
    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->isVIP:Z

    goto :goto_18

    :cond_15
    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->isVIP:Z

    :goto_18
    return-void
.end method

.method protected initEvent()V
    .registers 2

    .line 69
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 70
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->activity_path_local:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->activity_path_cloud:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 57
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0448

    .line 58
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0120

    .line 59
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->activity_path_local:Landroid/widget/LinearLayout;

    const v0, 0x7f0a011f

    .line 60
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->activity_path_cloud:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 61
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->center_title:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f11002f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_5c

    goto :goto_5b

    .line 116
    :sswitch_8
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->finish()V

    goto :goto_5b

    .line 137
    :sswitch_c
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 138
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5b

    .line 119
    :sswitch_1a
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_3e

    .line 120
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 121
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->isVIP:Z

    if-eqz v0, :cond_35

    .line 122
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3a

    .line 124
    :cond_35
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    :goto_3a
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5b

    :cond_3e
    const p1, 0x7f1102ac

    .line 128
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_5b
    return-void

    :sswitch_data_5c
    .sparse-switch
        0x7f0a011f -> :sswitch_1a
        0x7f0a0120 -> :sswitch_c
        0x7f0a0448 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .line 88
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 90
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 96
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d003b

    .line 45
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 77
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 81
    :cond_14
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_23

    .line 82
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->querUserInfo()V

    :cond_23
    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 50
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpView()V

    .line 51
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->initView()V

    .line 52
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PathChoiseActivity;->initEvent()V

    return-void
.end method
