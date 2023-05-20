.class public Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "BaseStateActivity.java"


# instance fields
.field protected customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

.field protected isConnected:Z

.field protected myWiFiDisposable:Lio/reactivex/disposables/Disposable;

.field protected p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

.field protected systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->isConnected:Z

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 141
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    goto :goto_36

    .line 146
    :pswitch_c
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initP2PClient()V

    goto :goto_36

    .line 149
    :pswitch_10
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_1d

    goto :goto_36

    .line 152
    :cond_1d
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultP2PClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_36
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x22
        :pswitch_10
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_d0

    .line 116
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 117
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 118
    sget-object v1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->getId()I

    move-result v1

    if-ne v0, v1, :cond_d0

    .line 119
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/SystemStatus;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    .line 121
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getPercentage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Global;->setBattery(I)V

    .line 122
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Global;->setBatteryCharge(I)V

    .line 123
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getPercentage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->setBattery(I)V

    .line 124
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->setBatteryCharge(I)V

    .line 125
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_b7

    .line 126
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getWifi()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;->getSignal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Global;->setWifiSignal(I)V

    .line 127
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getWifi()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;->getSignal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->setWiFi(I)V

    goto :goto_d0

    .line 129
    :cond_b7
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->checkWifiState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Global;->setWifiSignal(I)V

    .line 130
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->checkWifiState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->setWiFi(I)V
    :try_end_cb
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception p1

    .line 134
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_d0
    :goto_d0
    return-void
.end method

.method protected getConnectStatus()V
    .registers 6

    .line 166
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x7d0

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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected initEvent()V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected initP2PClient()V
    .registers 2

    .line 100
    monitor-enter p0

    .line 101
    :try_start_1
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 102
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected initView()V
    .registers 2

    const v0, 0x7f0a0245

    .line 75
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    return-void
.end method

.method public isConnected()Z
    .registers 2

    .line 161
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->isConnected:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->fullScreen()V

    .line 49
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 107
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->myWiFiDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 109
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 93
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 94
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->fullScreen()V

    .line 95
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initP2PClient()V

    .line 96
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->getConnectStatus()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 1

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initP2PClient()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    return-void
.end method
