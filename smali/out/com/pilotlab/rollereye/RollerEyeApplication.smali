.class public Lcom/pilotlab/rollereye/RollerEyeApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "RollerEyeApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/RollerEyeApplication$CrashHandler;
    }
.end annotation


# static fields
.field private static Tag:Ljava/lang/String; = "RollerEyeApplication"

.field private static activitiyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _instance:Lcom/pilotlab/rollereye/RollerEyeApplication;

.field private disposable:Lio/reactivex/disposables/Disposable;

.field private stopServiceSign:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->activitiyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication;->stopServiceSign:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 46
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/RollerEyeApplication;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication;->disposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/RollerEyeApplication;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/pilotlab/rollereye/RollerEyeApplication;->disposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/RollerEyeApplication;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->initService()V

    return-void
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/RollerEyeApplication;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->releaseService()V

    return-void
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/RollerEyeApplication;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication;->stopServiceSign:Z

    return p0
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/RollerEyeApplication;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/RollerEyeApplication;->stopServiceSign:Z

    return p1
.end method

.method public static addActivity(Landroid/app/Activity;)V
    .registers 4

    .line 293
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->activitiyList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createNotificationChannel()V
    .registers 6

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_39

    const-string v0, "notification"

    .line 110
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x4

    .line 118
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "1"

    const-string v4, "Moorebot Scout"

    invoke-direct {v2, v3, v4, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "Notification"

    .line 120
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v3, -0x10000

    .line 123
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 124
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 126
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/16 v1, 0x9

    .line 127
    new-array v1, v1, [J

    fill-array-data v1, :array_3a

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 129
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_39
    return-void

    :array_3a
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x190
        0x12c
        0xc8
        0x190
    .end array-data
.end method

.method public static finishActivity()V
    .registers 5

    .line 299
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->activitiyList:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 300
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activitiyList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pilotlab/rollereye/RollerEyeApplication;->activitiyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_20
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->activitiyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 304
    sget-object v2, Lcom/pilotlab/rollereye/RollerEyeApplication;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_26

    .line 309
    :cond_50
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->activitiyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5d

    .line 310
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->activitiyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5d
    return-void
.end method

.method private initCloudChannel(Landroid/content/Context;)V
    .registers 5

    .line 85
    invoke-direct {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->createNotificationChannel()V

    .line 86
    invoke-static {p1}, Lcom/alibaba/sdk/android/push/noonesdk/PushServiceFactory;->init(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/alibaba/sdk/android/push/noonesdk/PushServiceFactory;->getCloudPushService()Lcom/alibaba/sdk/android/push/CloudPushService;

    move-result-object v0

    const/4 v1, 0x2

    .line 88
    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/push/CloudPushService;->setLogLevel(I)V

    .line 89
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08017b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/push/CloudPushService;->setNotificationLargeIcon(Landroid/graphics/Bitmap;)V

    const v1, 0x7f08017c

    .line 90
    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/push/CloudPushService;->setNotificationSmallIcon(I)V

    .line 91
    new-instance v1, Lcom/pilotlab/rollereye/RollerEyeApplication$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/RollerEyeApplication$1;-><init>(Lcom/pilotlab/rollereye/RollerEyeApplication;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/sdk/android/push/CloudPushService;->register(Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    .line 102
    invoke-direct {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->initOrtherPusth()V

    return-void
.end method

.method private initListener()V
    .registers 3

    .line 187
    new-instance v0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;-><init>()V

    .line 188
    new-instance v1, Lcom/pilotlab/rollereye/RollerEyeApplication$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/RollerEyeApplication$4;-><init>(Lcom/pilotlab/rollereye/RollerEyeApplication;)V

    invoke-virtual {v0, p0, v1}, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;->register(Landroid/app/Application;Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;)V

    return-void
.end method

.method private initOrtherPusth()V
    .registers 3

    .line 178
    invoke-static {p0}, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;->register(Landroid/app/Application;)Z

    const-string v0, "5171832480007"

    const-string v1, "oluvcPf69o4FtTOW7PbY7g=="

    .line 179
    invoke-static {p0, v0, v1}, Lcom/alibaba/sdk/android/push/register/MiPushRegister;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "192021545645"

    const-string v1, "1:192021545645:android:0b25afec38ed67e3753c24"

    .line 183
    invoke-static {p0, v0, v1}, Lcom/alibaba/sdk/android/push/register/GcmRegister;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private initRxdownload()V
    .registers 3

    .line 262
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->Companion:Lzlc/season/rxdownload3/core/DownloadConfig$Builder$Companion;

    invoke-virtual {v0, p0}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder$Companion;->create(Landroid/content/Context;)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 263
    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableDb(Z)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->setDebug(Z)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableNotification(Z)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;

    move-result-object v0

    const-class v1, Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    .line 266
    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->addExtension(Ljava/lang/Class;)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;

    move-result-object v0

    const-class v1, Lzlc/season/rxdownload3/extension/ApkOpenExtension;

    .line 267
    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->addExtension(Ljava/lang/Class;)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;

    move-result-object v0

    .line 269
    sget-object v1, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-virtual {v1, v0}, Lzlc/season/rxdownload3/core/DownloadConfig;->init(Lzlc/season/rxdownload3/core/DownloadConfig$Builder;)V

    return-void
.end method

.method private initService()V
    .registers 4

    .line 212
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication;->stopServiceSign:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 213
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->Tag:Ljava/lang/String;

    const-string v1, "initService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1d

    .line 216
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_20

    .line 218
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_20
    :goto_20
    return-void
.end method

.method private releaseService()V
    .registers 4

    .line 224
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

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

    new-instance v1, Lcom/pilotlab/rollereye/RollerEyeApplication$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/RollerEyeApplication$5;-><init>(Lcom/pilotlab/rollereye/RollerEyeApplication;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static removeActivity(Landroid/app/Activity;)V
    .registers 2

    .line 316
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->activitiyList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 287
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 288
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 289
    new-instance p1, Lcom/pilotlab/rollereye/RollerEyeApplication$CrashHandler;

    invoke-direct {p1, p0}, Lcom/pilotlab/rollereye/RollerEyeApplication$CrashHandler;-><init>(Lcom/pilotlab/rollereye/RollerEyeApplication;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public bindAccount()V
    .registers 4

    .line 137
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->Tag:Ljava/lang/String;

    const-string v1, "\u7ed1\u5b9a\u8d26\u53f7"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_54

    .line 141
    :cond_22
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ed1\u5b9a\u8d26\u53f7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/alibaba/sdk/android/push/noonesdk/PushServiceFactory;->getCloudPushService()Lcom/alibaba/sdk/android/push/CloudPushService;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/RollerEyeApplication$2;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/RollerEyeApplication$2;-><init>(Lcom/pilotlab/rollereye/RollerEyeApplication;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/push/CloudPushService;->bindAccount(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public getInstance()Lcom/pilotlab/rollereye/RollerEyeApplication;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication;->_instance:Lcom/pilotlab/rollereye/RollerEyeApplication;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .line 64
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 65
    iput-object p0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication;->_instance:Lcom/pilotlab/rollereye/RollerEyeApplication;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication;->stopServiceSign:Z

    .line 68
    sget-object v0, Lcom/pilotlab/rollereye/RollerEyeApplication;->Tag:Ljava/lang/String;

    const-string v1, "init Application"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->initRxdownload()V

    .line 70
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->setContext(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->initListener()V

    .line 73
    invoke-direct {p0, p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->initCloudChannel(Landroid/content/Context;)V

    return-void
.end method

.method public unbindAccount()V
    .registers 3

    .line 158
    invoke-static {}, Lcom/alibaba/sdk/android/push/noonesdk/PushServiceFactory;->getCloudPushService()Lcom/alibaba/sdk/android/push/CloudPushService;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/RollerEyeApplication$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/RollerEyeApplication$3;-><init>(Lcom/pilotlab/rollereye/RollerEyeApplication;)V

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/push/CloudPushService;->unbindAccount(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method
