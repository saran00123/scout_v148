.class public Lcom/pilotlab/rollereye/Services/NetWorkBacService;
.super Landroid/app/Service;
.source "NetWorkBacService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;,
        Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private current_connect_wifi_ip:Ljava/lang/String;

.field private current_connect_wifi_ssid:Ljava/lang/String;

.field private isStart:Z

.field private networkCallback:Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;

.field private networkChangeReceive:Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;

.field private notificationId:Ljava/lang/String;

.field private notificationName:Ljava/lang/String;

.field private p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

.field private socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "NetWorkBacService"

    .line 65
    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    const-string v0, "123"

    .line 67
    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->notificationId:Ljava/lang/String;

    const-string v0, "Moorebot Scout"

    .line 68
    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->notificationName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->current_connect_wifi_ssid:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->current_connect_wifi_ip:Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->isStart:Z

    return-void
.end method

.method private RegisterWifiRecever()V
    .registers 3

    .line 280
    new-instance v0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;-><init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->networkChangeReceive:Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->networkChangeReceive:Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Landroid/net/ConnectivityManager;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/P2P/P2PService;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/Services/SocketServices;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->sendSocketCommand()V

    return-void
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->initP2PClinets()V

    return-void
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->current_connect_wifi_ip:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/pilotlab/rollereye/Services/NetWorkBacService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->current_connect_wifi_ip:Ljava/lang/String;

    return-object p1
.end method

.method private getNotification()Landroid/app/Notification;
    .registers 4

    .line 262
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 264
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_10

    .line 265
    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->notificationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 268
    :cond_10
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08017b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f08017c

    .line 269
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f1101ee

    .line 270
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f110240

    .line 271
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 272
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 274
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private initP2PClinets()V
    .registers 10

    .line 492
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->getDevices()Ljava/util/List;

    move-result-object v0

    .line 493
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "sn"

    .line 494
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v2, "uid"

    .line 495
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "username"

    .line 496
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    const-string v3, "password"

    .line 497
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const-string v3, "p2pkey"

    .line 498
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 499
    new-instance v1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-object v3, v1

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/pilotlab/rollereye/P2P/P2PClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v3, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v2, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-virtual {v2, v1}, Lcom/pilotlab/rollereye/P2P/P2PService;->addClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    goto :goto_d

    .line 504
    :cond_68
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->test()V

    return-void
.end method

.method private sendSocketCommand()V
    .registers 3

    .line 390
    new-instance v0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService$2;-><init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 411
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Services/NetWorkBacService$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService$1;-><init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private startForegroundService()V
    .registers 6

    const-string v0, "notification"

    .line 248
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 250
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1f

    .line 251
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->notificationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->notificationName:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    .line 252
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1f
    const/4 v0, 0x1

    .line 256
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private test()V
    .registers 1

    return-void
.end method

.method private testSocketCommand()V
    .registers 4

    .line 440
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Services/NetWorkBacService$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService$3;-><init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private wifiIsEnable()Z
    .registers 8

    .line 378
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 379
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 380
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_28

    aget-object v5, v1, v4

    .line 381
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_25

    const/4 v0, 0x1

    return v0

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_28
    return v3
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "body"

    .line 466
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v1

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->SOCKET_TYPE:I

    if-ne v1, v2, :cond_76

    .line 467
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 468
    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :try_start_13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 471
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x3ef

    if-eq p1, v2, :cond_23

    goto :goto_76

    .line 473
    :cond_23
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "p2p"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 474
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "uid"

    .line 475
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    .line 476
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "passwd"

    .line 477
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "key"

    .line 478
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 479
    new-instance p1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/pilotlab/rollereye/P2P/P2PClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->addClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception p1

    .line 485
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_76
    :goto_76
    return-void
.end method

.method public getTime()J
    .registers 3

    .line 515
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 516
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()V
    .registers 7

    const-string v0, "connectivity"

    .line 238
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 239
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 241
    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yyy-type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return-void
.end method

.method public getWIFISSID()Ljava/lang/String;
    .registers 6

    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "\""

    const-string v2, ""

    const/16 v3, 0x1a

    if-le v0, v3, :cond_37

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-le v0, v3, :cond_11

    goto :goto_37

    .line 569
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v3, :cond_36

    const-string v0, "connectivity"

    .line 570
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 571
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 574
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 575
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    return-object v2

    .line 560
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 562
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 564
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_52

    .line 565
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 567
    :cond_52
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiIp()Ljava/lang/String;
    .registers 3

    .line 526
    :try_start_0
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 527
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 529
    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->int2Ip(I)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 92
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->startForegroundService()V

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    const-string v1, "\u521d\u59cb\u5316P2P"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

    .line 96
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    .line 98
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 99
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_32
    const-string v0, "connectivity"

    .line 102
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 103
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 104
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;-><init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;Lcom/pilotlab/rollereye/Services/NetWorkBacService$1;)V

    iput-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->networkCallback:Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;

    .line 106
    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_56

    .line 107
    iget-object v2, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->networkCallback:Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 110
    :cond_56
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->isStart:Z

    if-nez v0, :cond_78

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->isStart:Z

    .line 112
    new-instance v1, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;

    invoke-direct {v1}, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;-><init>()V

    .line 113
    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;->setTag(I)V

    .line 114
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    const-string v2, "init service"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;

    invoke-direct {v2, v1}, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_78
    return-void
.end method

.method public onDestroy()V
    .registers 4

    const/4 v0, 0x1

    .line 590
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->stopForeground(Z)V

    .line 591
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 593
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    const-string v1, "destroy on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->isStart:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->isStart:Z

    .line 597
    new-instance v0, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;-><init>()V

    const/4 v1, 0x2

    .line 598
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;->setTag(I)V

    .line 599
    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    const-string v2, "stop service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;

    invoke-direct {v2, v0}, Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ServiceMessageEvent$Message;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 603
    :cond_31
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->networkChangeReceive:Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;

    if-eqz v0, :cond_38

    .line 604
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 605
    :cond_38
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->TAG:Ljava/lang/String;

    const-string v1, "destroy finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_4e

    const/4 v1, 0x0

    .line 607
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 608
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->networkCallback:Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 611
    :cond_4e
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 612
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 615
    :cond_5f
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->destroyGlobal()V

    return-void
.end method

.method public stopService(Landroid/content/Intent;)Z
    .registers 2

    .line 584
    invoke-super {p0, p1}, Landroid/app/Service;->stopService(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
