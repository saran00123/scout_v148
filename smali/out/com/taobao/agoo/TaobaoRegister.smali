.class public final Lcom/taobao/agoo/TaobaoRegister;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/agoo/TaobaoRegister$g;,
        Lcom/taobao/agoo/TaobaoRegister$h;,
        Lcom/taobao/agoo/TaobaoRegister$f;,
        Lcom/taobao/agoo/TaobaoRegister$e;,
        Lcom/taobao/agoo/TaobaoRegister$d;,
        Lcom/taobao/agoo/TaobaoRegister$a;,
        Lcom/taobao/agoo/TaobaoRegister$c;,
        Lcom/taobao/agoo/TaobaoRegister$b;
    }
.end annotation


# static fields
.field private static final EVENT_ID:I = 0x101d1

.field static final PREFERENCES:Ljava/lang/String; = "Agoo_AppStore"

.field static final PROPERTY_APP_NOTIFICATION_CUSTOM_SOUND:Ljava/lang/String; = "app_notification_custom_sound"

.field static final PROPERTY_APP_NOTIFICATION_ICON:Ljava/lang/String; = "app_notification_icon"

.field static final PROPERTY_APP_NOTIFICATION_SOUND:Ljava/lang/String; = "app_notification_sound"

.field static final PROPERTY_APP_NOTIFICATION_VIBRATE:Ljava/lang/String; = "app_notification_vibrate"

.field private static final SERVICEID:Ljava/lang/String; = "agooSend"

.field protected static final TAG:Ljava/lang/String; = "TaobaoRegister"

.field private static mRequestListener:Lcom/taobao/agoo/a/b;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Lcom/taobao/agoo/a/b;
    .registers 1

    .line 43
    sget-object v0, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    return-object v0
.end method

.method static synthetic access$002(Lcom/taobao/agoo/a/b;)Lcom/taobao/agoo/a/b;
    .registers 1

    .line 43
    sput-object p0, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    .registers 4

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/util/Map;Lcom/taobao/agoo/ICallback;)V
    .registers 3

    .line 43
    invoke-static {p0, p1, p2}, Lcom/taobao/agoo/TaobaoRegister;->removeAliasInList(Landroid/content/Context;Ljava/util/Map;Lcom/taobao/agoo/ICallback;)V

    return-void
.end method

.method public static declared-synchronized addAlias(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/agoo/ICallback;)V
    .registers 9

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    :try_start_3
    const-string v1, "TaobaoRegister"

    const-string v2, "addAlias"

    const/4 v3, 0x2

    .line 556
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "alias"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-static {p2}, Lcom/taobao/agoo/TaobaoRegister;->checkNull(Lcom/taobao/agoo/ICallback;)Lcom/taobao/agoo/ICallback;

    move-result-object p2

    if-eqz p0, :cond_2b

    if-nez p1, :cond_1e

    goto :goto_2b

    :cond_1e
    const-string v1, "addAlias"

    .line 563
    new-instance v2, Lcom/taobao/agoo/TaobaoRegister$a;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/taobao/agoo/TaobaoRegister$a;-><init>(Ljava/lang/String;Lcom/taobao/agoo/b;)V

    invoke-static {v1, p0, p2, v2}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_34

    .line 564
    monitor-exit v0

    return-void

    :cond_2b
    :goto_2b
    :try_start_2b
    const-string p0, "504.1"

    const-string p1, "input params null!!"

    .line 559
    invoke-virtual {p2, p0, p1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_34

    .line 561
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static bindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V
    .registers 4

    const/4 v0, 0x1

    .line 766
    invoke-static {p0, p1, v0}, Lcom/taobao/agoo/TaobaoRegister;->sendSwitch(Landroid/content/Context;Lcom/taobao/agoo/ICallback;Z)V

    .line 767
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object p1

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x101d1

    const-string v1, "bindAgoo"

    invoke-virtual {p1, v0, v1, p0}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static bindAgoo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/common/CallBack;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    .line 703
    invoke-static {p0, p1}, Lcom/taobao/agoo/TaobaoRegister;->bindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V

    return-void
.end method

.method private static checkNull(Lcom/taobao/agoo/ICallback;)Lcom/taobao/agoo/ICallback;
    .registers 1

    if-nez p0, :cond_7

    .line 395
    new-instance p0, Lcom/taobao/agoo/TaobaoRegister$3;

    invoke-direct {p0}, Lcom/taobao/agoo/TaobaoRegister$3;-><init>()V

    :cond_7
    return-object p0
.end method

.method public static clearNotificationCreatedByAliyun(Landroid/content/Context;)V
    .registers 2

    .line 964
    invoke-static {}, Lcom/aliyun/ams/emas/push/a/a;->a()Lcom/aliyun/ams/emas/push/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aliyun/ams/emas/push/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static clickMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 789
    invoke-static {p0}, Lorg/android/agoo/control/AgooFactory;->getInstance(Landroid/content/Context;)Lorg/android/agoo/control/AgooFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/android/agoo/control/AgooFactory;->clickMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static clickMessage(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V
    .registers 1

    .line 942
    invoke-static {p0}, Lcom/aliyun/ams/emas/push/h;->a(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V

    return-void
.end method

.method public static dismissMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 800
    invoke-static {p0}, Lorg/android/agoo/control/AgooFactory;->getInstance(Landroid/content/Context;)Lorg/android/agoo/control/AgooFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/android/agoo/control/AgooFactory;->dismissMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dismissMessage(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V
    .registers 1

    .line 952
    invoke-static {p0}, Lcom/aliyun/ams/emas/push/h;->b(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V

    return-void
.end method

.method private static doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    .registers 13

    const-string v0, "AgooDeviceCmd"

    const/4 v1, 0x0

    .line 313
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TaobaoRegister"

    invoke-static {v3, p0, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-static {p1}, Lorg/android/agoo/common/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {p1}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "504.1"

    if-nez v5, :cond_80

    .line 317
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_80

    if-nez p1, :cond_23

    goto :goto_80

    .line 329
    :cond_23
    :try_start_23
    sget-object v5, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    if-nez v5, :cond_32

    .line 330
    new-instance v5, Lcom/taobao/agoo/a/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/taobao/agoo/a/b;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    .line 332
    :cond_32
    invoke-static {p1}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v5

    .line 333
    sget-object v7, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/taobao/agoo/a/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 334
    sget-object v7, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    invoke-interface {v5, p1, v0, v7}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 335
    invoke-interface {p3, v4, v2}, Lcom/taobao/agoo/TaobaoRegister$b;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    .line 336
    new-instance v2, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0, p3, v4}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 337
    invoke-interface {v5, p1, v2}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_67

    if-eqz p2, :cond_7f

    const-string p1, "accs channel disabled!"

    .line 340
    invoke-virtual {p2, v6, p1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    :cond_67
    if-eqz p2, :cond_7f

    .line 344
    sget-object p3, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    iget-object p3, p3, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    :cond_71
    if-eqz p2, :cond_7f

    const-string p1, "bindApp first!!"

    .line 350
    invoke-virtual {p2, v6, p1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_78} :catch_79

    goto :goto_7f

    :catch_79
    move-exception p1

    .line 354
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7f
    :goto_7f
    return-void

    :cond_80
    :goto_80
    if-eqz p2, :cond_87

    const-string p3, "input params null!!"

    .line 320
    invoke-virtual {p2, v6, p3}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " param null"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x6

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "appkey"

    aput-object p3, p2, v1

    const/4 p3, 0x1

    aput-object v4, p2, p3

    const/4 p3, 0x2

    const-string v0, "deviceId"

    aput-object v0, p2, p3

    const/4 p3, 0x3

    aput-object v2, p2, p3

    const/4 p3, 0x4

    const-string v0, "context"

    aput-object v0, p2, p3

    const/4 p3, 0x5

    aput-object p1, p2, p3

    invoke-static {v3, p0, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static isPushApi()Z
    .registers 2

    .line 869
    const-class v0, Lcom/aliyun/ams/emas/push/AgooInnerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAgooCustomServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized listAlias(Landroid/content/Context;Lcom/taobao/agoo/IListAliasCallback;)V
    .registers 6

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    :try_start_3
    const-string v1, "TaobaoRegister"

    const-string v2, "listAlias"

    const/4 v3, 0x0

    .line 535
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->checkNull(Lcom/taobao/agoo/ICallback;)Lcom/taobao/agoo/ICallback;

    move-result-object p1

    if-nez p0, :cond_1c

    const-string p0, "504.1"

    const-string v1, "input params null!!"

    .line 538
    invoke-virtual {p1, p0, v1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_29

    .line 540
    monitor-exit v0

    return-void

    :cond_1c
    :try_start_1c
    const-string v1, "listAlias"

    .line 542
    new-instance v2, Lcom/taobao/agoo/TaobaoRegister$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/taobao/agoo/TaobaoRegister$c;-><init>(Lcom/taobao/agoo/b;)V

    invoke-static {v1, p0, p1, v2}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_29

    .line 543
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static pingApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 804
    invoke-static {p0}, Lorg/android/agoo/control/AgooFactory;->getInstance(Landroid/content/Context;)Lorg/android/agoo/control/AgooFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/android/agoo/control/AgooFactory;->getNotifyManager()Lorg/android/agoo/control/NotifManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/android/agoo/control/NotifManager;->pingApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/IRegister;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 94
    :try_start_9
    invoke-static/range {v1 .. v6}, Lcom/taobao/agoo/TaobaoRegister;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/IRegister;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    .line 95
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/IRegister;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object/from16 v7, p3

    const-class v8, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v8

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v9, 0x2

    if-eqz v0, :cond_87

    .line 111
    :try_start_f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_87

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1d

    goto/16 :goto_87

    :cond_1d
    const-string v10, "TaobaoRegister"

    const-string v11, "register"

    .line 115
    new-array v5, v5, [Ljava/lang/Object;

    const-string v12, "appKey"

    aput-object v12, v5, v4

    aput-object v6, v5, v3

    const-string v3, "configTag"

    aput-object v3, v5, v9

    aput-object v1, v5, v2

    invoke-static {v10, v11, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 117
    sput-object v1, Lorg/android/agoo/common/Config;->a:Ljava/lang/String;

    .line 118
    invoke-static {p0, p2}, Lorg/android/agoo/common/Config;->setAgooAppKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    sput-object v7, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mAgooAppSecret:Ljava/lang/String;

    .line 120
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 121
    sput v9, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mSecurityType:I

    .line 123
    :cond_45
    invoke-static {p0}, Lcom/aliyun/ams/emas/push/h;->a(Landroid/content/Context;)V

    .line 124
    invoke-static {p1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v2

    if-nez v2, :cond_63

    .line 126
    new-instance v2, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v2}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    .line 127
    invoke-virtual {v2, p2}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v7}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppSecret(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2, p1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    goto :goto_69

    .line 132
    :cond_63
    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAuthCode:Ljava/lang/String;

    .line 135
    :goto_69
    invoke-static {p0, p2, p1}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v9

    .line 137
    new-instance v11, Lcom/taobao/agoo/b;

    move-object v0, v11

    move-object/from16 v1, p5

    move-object v2, v10

    move-object v3, v9

    move-object v4, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/agoo/b;-><init>(Lcom/taobao/agoo/IRegister;Landroid/content/Context;Lcom/taobao/accs/IACCSManager;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    move-object v1, v10

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v11

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/IACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    :try_end_85
    .catchall {:try_start_f .. :try_end_85} :catchall_9e

    .line 206
    monitor-exit v8

    return-void

    :cond_87
    :goto_87
    :try_start_87
    const-string v0, "TaobaoRegister"

    const-string v7, "register params null"

    .line 112
    new-array v5, v5, [Ljava/lang/Object;

    const-string v10, "appkey"

    aput-object v10, v5, v4

    aput-object v6, v5, v3

    const-string v3, "configTag"

    aput-object v3, v5, v9

    aput-object v1, v5, v2

    invoke-static {v0, v7, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9c
    .catchall {:try_start_87 .. :try_end_9c} :catchall_9e

    .line 113
    monitor-exit v8

    return-void

    :catchall_9e
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized removeAlias(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V
    .registers 6

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    :try_start_3
    const-string v1, "TaobaoRegister"

    const-string v2, "removeAlias"

    const/4 v3, 0x0

    .line 478
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->checkNull(Lcom/taobao/agoo/ICallback;)Lcom/taobao/agoo/ICallback;

    move-result-object p1

    if-nez p0, :cond_1c

    const-string p0, "504.1"

    const-string v1, "input params null!!"

    .line 481
    invoke-virtual {p1, p0, v1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2e

    .line 483
    monitor-exit v0

    return-void

    :cond_1c
    :try_start_1c
    const-string v1, "removeAllAlias"

    .line 492
    new-instance v2, Lcom/taobao/agoo/TaobaoRegister$5;

    invoke-direct {v2, p1, p0}, Lcom/taobao/agoo/TaobaoRegister$5;-><init>(Lcom/taobao/agoo/ICallback;Landroid/content/Context;)V

    new-instance p1, Lcom/taobao/agoo/TaobaoRegister$e;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Lcom/taobao/agoo/TaobaoRegister$e;-><init>(Lcom/taobao/agoo/b;)V

    invoke-static {v1, p0, v2, p1}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2e

    .line 525
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeAlias(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/agoo/ICallback;)V
    .registers 7

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    :try_start_3
    const-string v1, "TaobaoRegister"

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAlias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    invoke-static {p2}, Lcom/taobao/agoo/TaobaoRegister;->checkNull(Lcom/taobao/agoo/ICallback;)Lcom/taobao/agoo/ICallback;

    move-result-object p2

    if-eqz p0, :cond_37

    if-nez p1, :cond_25

    goto :goto_37

    :cond_25
    const-string v1, "removeAlias"

    .line 592
    new-instance v2, Lcom/taobao/agoo/TaobaoRegister$6;

    invoke-direct {v2, p2, p0, p1}, Lcom/taobao/agoo/TaobaoRegister$6;-><init>(Lcom/taobao/agoo/ICallback;Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/taobao/agoo/TaobaoRegister$d;

    const/4 v3, 0x0

    invoke-direct {p2, p1, v3, v3}, Lcom/taobao/agoo/TaobaoRegister$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/b;)V

    invoke-static {v1, p0, v2, p2}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_40

    .line 618
    monitor-exit v0

    return-void

    :cond_37
    :goto_37
    :try_start_37
    const-string p0, "504.1"

    const-string p1, "input params null!!"

    .line 581
    invoke-virtual {p2, p0, p1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_40

    .line 583
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static removeAliasInList(Landroid/content/Context;Ljava/util/Map;Lcom/taobao/agoo/ICallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/agoo/ICallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_44

    .line 367
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_44

    .line 371
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 372
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 373
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 374
    new-instance v4, Lcom/taobao/agoo/TaobaoRegister$2;

    invoke-direct {v4, v0, v3, v1, p2}, Lcom/taobao/agoo/TaobaoRegister$2;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/taobao/agoo/ICallback;)V

    new-instance v5, Lcom/taobao/agoo/TaobaoRegister$d;

    .line 389
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v3, v6, v7}, Lcom/taobao/agoo/TaobaoRegister$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/b;)V

    const-string v3, "removeAlias"

    .line 374
    invoke-static {v3, p0, v4, v5}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V

    goto :goto_20

    :cond_43
    return-void

    .line 368
    :cond_44
    :goto_44
    invoke-virtual {p2}, Lcom/taobao/agoo/ICallback;->onSuccess()V

    return-void
.end method

.method public static declared-synchronized removeAllAliasOnCurrentDevice(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V
    .registers 6

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    :try_start_3
    const-string v1, "TaobaoRegister"

    const-string v2, "removeAllAliasOnCurrentDevice "

    const/4 v3, 0x0

    .line 627
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->checkNull(Lcom/taobao/agoo/ICallback;)Lcom/taobao/agoo/ICallback;

    move-result-object p1

    if-nez p0, :cond_1c

    const-string p0, "504.1"

    const-string v1, "input params null!!"

    .line 630
    invoke-virtual {p1, p0, v1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_29

    .line 632
    monitor-exit v0

    return-void

    :cond_1c
    :try_start_1c
    const-string v1, "removeAllAliasOnCurrentDevice"

    .line 634
    new-instance v2, Lcom/taobao/agoo/TaobaoRegister$e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/taobao/agoo/TaobaoRegister$e;-><init>(Lcom/taobao/agoo/b;)V

    invoke-static {v1, p0, p1, v2}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_29

    .line 635
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeAllAliasOnCurrentDeviceAndAddThisAlias(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/agoo/ICallback;)V
    .registers 7

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    :try_start_3
    const-string v1, "TaobaoRegister"

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAllAliasOnCurrentDeviceAndAddThisAlias alias : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    invoke-static {p2}, Lcom/taobao/agoo/TaobaoRegister;->checkNull(Lcom/taobao/agoo/ICallback;)Lcom/taobao/agoo/ICallback;

    move-result-object p2

    if-eqz p0, :cond_31

    if-nez p1, :cond_25

    goto :goto_31

    :cond_25
    const-string v1, "removeAllAliasOnCurrentDeviceAndAddThisAlias"

    .line 671
    new-instance v2, Lcom/taobao/agoo/TaobaoRegister$h;

    invoke-direct {v2, p1}, Lcom/taobao/agoo/TaobaoRegister$h;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0, p2, v2}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3a

    .line 672
    monitor-exit v0

    return-void

    :cond_31
    :goto_31
    :try_start_31
    const-string p0, "504.1"

    const-string p1, "input params null!!"

    .line 667
    invoke-virtual {p2, p0, p1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3a

    .line 669
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeAllDeviceOnThisAliasAndBindCurrentDevice(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/agoo/ICallback;)V
    .registers 7

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    :try_start_3
    const-string v1, "TaobaoRegister"

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAllDeviceOnThisAliasAndBindCurrentDevice alias : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    invoke-static {p2}, Lcom/taobao/agoo/TaobaoRegister;->checkNull(Lcom/taobao/agoo/ICallback;)Lcom/taobao/agoo/ICallback;

    move-result-object p2

    if-eqz p0, :cond_31

    if-nez p1, :cond_25

    goto :goto_31

    :cond_25
    const-string v1, "removeAllDeviceOnThisAliasAndBindCurrentDevice"

    .line 652
    new-instance v2, Lcom/taobao/agoo/TaobaoRegister$f;

    invoke-direct {v2, p1}, Lcom/taobao/agoo/TaobaoRegister$f;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0, p2, v2}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3a

    .line 653
    monitor-exit v0

    return-void

    :cond_31
    :goto_31
    :try_start_31
    const-string p0, "504.1"

    const-string p1, "input params null!!"

    .line 648
    invoke-virtual {p2, p0, p1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3a

    .line 650
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized resetDeviceAndAliasToOne2One(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/agoo/ICallback;)V
    .registers 7

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    :try_start_3
    const-string v1, "TaobaoRegister"

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetDeviceAndAliasToOne2One alias : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    invoke-static {p2}, Lcom/taobao/agoo/TaobaoRegister;->checkNull(Lcom/taobao/agoo/ICallback;)Lcom/taobao/agoo/ICallback;

    move-result-object p2

    if-eqz p0, :cond_31

    if-nez p1, :cond_25

    goto :goto_31

    :cond_25
    const-string v1, "resetDeviceAndAliasToOne2One"

    .line 689
    new-instance v2, Lcom/taobao/agoo/TaobaoRegister$g;

    invoke-direct {v2, p1}, Lcom/taobao/agoo/TaobaoRegister$g;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0, p2, v2}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3a

    .line 690
    monitor-exit v0

    return-void

    :cond_31
    :goto_31
    :try_start_31
    const-string p0, "504.1"

    const-string p1, "input params null!!"

    .line 685
    invoke-virtual {p2, p0, p1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3a

    .line 687
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized sendSwitch(Landroid/content/Context;Lcom/taobao/agoo/ICallback;Z)V
    .registers 11

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    const/4 v1, 0x0

    .line 721
    :try_start_4
    invoke-static {p0}, Lorg/android/agoo/common/Config;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-static {p0}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 723
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 725
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6d

    if-eqz p0, :cond_6d

    .line 727
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_6d

    .line 735
    :cond_25
    invoke-static {p0}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v5

    .line 736
    sget-object v6, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    if-nez v6, :cond_3c

    .line 737
    new-instance v6, Lcom/taobao/agoo/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/taobao/agoo/a/b;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    :cond_3c
    const-string v6, "AgooDeviceCmd"

    .line 739
    sget-object v7, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    invoke-interface {v5, p0, v6, v7}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 741
    invoke-static {v3, v2, v4, p2}, Lcom/taobao/agoo/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p2

    .line 742
    new-instance v2, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const-string v3, "AgooDeviceCmd"

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, p2, v4}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 743
    invoke-interface {v5, p0, v2}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object p0

    .line 744
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_63

    if-eqz p1, :cond_b2

    const-string p0, "503.2"

    const-string p2, "accs channel disabled!"

    .line 746
    invoke-virtual {p1, p0, p2}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    :cond_63
    if-eqz p1, :cond_b2

    .line 750
    sget-object p2, Lcom/taobao/agoo/TaobaoRegister;->mRequestListener:Lcom/taobao/agoo/a/b;

    iget-object p2, p2, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    :cond_6d
    :goto_6d
    if-eqz p1, :cond_76

    const-string v4, "503.3"

    const-string v5, "input params null!!"

    .line 729
    invoke-virtual {p1, v4, v5}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    const-string p1, "TaobaoRegister"

    const-string v4, "sendSwitch param null"

    const/16 v5, 0x8

    .line 731
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "appkey"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v3, 0x2

    const-string v6, "deviceId"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    aput-object v2, v5, v3

    const/4 v2, 0x4

    const-string v3, "context"

    aput-object v3, v5, v2

    const/4 v2, 0x5

    aput-object p0, v5, v2

    const/4 p0, 0x6

    const-string v2, "enablePush"

    aput-object v2, v5, p0

    const/4 p0, 0x7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v5, p0

    invoke-static {p1, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_a4} :catch_a8
    .catchall {:try_start_4 .. :try_end_a4} :catchall_a6

    .line 732
    monitor-exit v0

    return-void

    :catchall_a6
    move-exception p0

    goto :goto_b4

    :catch_a8
    move-exception p0

    :try_start_a9
    const-string p1, "TaobaoRegister"

    const-string p2, "sendSwitch"

    .line 754
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_a6

    .line 757
    :cond_b2
    :goto_b2
    monitor-exit v0

    return-void

    :goto_b4
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setAccsConfigTag(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    .line 68
    :try_start_3
    sput-object p1, Lorg/android/agoo/common/Config;->a:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object p1

    if-eqz p1, :cond_43

    const-string v1, "TaobaoRegister"

    const-string v2, "setAccsConfigTag"

    const/4 v3, 0x2

    .line 73
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "config"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAuthCode:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/android/agoo/common/Config;->setAgooAppKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mAgooAppSecret:Ljava/lang/String;

    .line 77
    sget-object p1, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mAgooAppSecret:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 78
    sput v3, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mSecurityType:I

    .line 80
    :cond_3e
    invoke-static {p0}, Lcom/aliyun/ams/emas/push/h;->a(Landroid/content/Context;)V
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_4b

    .line 81
    monitor-exit v0

    return-void

    .line 71
    :cond_43
    :try_start_43
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "accs config not exist!! please set accs config first!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setAgooMsgReceiveService(Ljava/lang/String;)V
    .registers 1

    .line 821
    sput-object p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAgooCustomServiceName:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized setAlias(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/agoo/ICallback;)V
    .registers 7

    const-class v0, Lcom/taobao/agoo/TaobaoRegister;

    monitor-enter v0

    :try_start_3
    const-string v1, "TaobaoRegister"

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    invoke-static {p2}, Lcom/taobao/agoo/TaobaoRegister;->checkNull(Lcom/taobao/agoo/ICallback;)Lcom/taobao/agoo/ICallback;

    move-result-object p2

    if-eqz p0, :cond_37

    if-nez p1, :cond_25

    goto :goto_37

    :cond_25
    const-string v1, "listAlias"

    .line 443
    new-instance v2, Lcom/taobao/agoo/TaobaoRegister$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/taobao/agoo/TaobaoRegister$4;-><init>(Landroid/content/Context;Lcom/taobao/agoo/ICallback;Ljava/lang/String;)V

    new-instance p1, Lcom/taobao/agoo/TaobaoRegister$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/taobao/agoo/TaobaoRegister$c;-><init>(Lcom/taobao/agoo/b;)V

    invoke-static {v1, p0, v2, p1}, Lcom/taobao/agoo/TaobaoRegister;->doAliasOperation(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_40

    .line 466
    monitor-exit v0

    return-void

    :cond_37
    :goto_37
    :try_start_37
    const-string p0, "504.1"

    const-string p1, "input params null!!"

    .line 428
    invoke-virtual {p2, p0, p1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_40

    .line 430
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setBuilderSound(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setDoNotDisturb(IIIILcom/aliyun/ams/emas/push/CommonCallback;)V
    .registers 5

    .line 932
    invoke-static {p0, p1, p2, p3, p4}, Lcom/aliyun/ams/emas/push/h;->a(IIIILcom/aliyun/ams/emas/push/CommonCallback;)V

    return-void
.end method

.method public static setDoNotDisturbMode(Z)V
    .registers 1

    .line 915
    invoke-static {p0}, Lcom/aliyun/ams/emas/push/h;->a(Z)V

    return-void
.end method

.method public static setEnv(Landroid/content/Context;I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
        .end annotation
    .end param

    .line 832
    invoke-static {p0, p1}, Lcom/taobao/accs/ACCSClient;->setEnvironment(Landroid/content/Context;I)V

    return-void
.end method

.method public static setNotificationIcon(Landroid/content/Context;I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setNotificationSound(Landroid/content/Context;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setNotificationVibrate(Landroid/content/Context;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setPushMsgReceiveService(Ljava/lang/Class;)V
    .registers 2

    .line 889
    const-class v0, Lcom/aliyun/ams/emas/push/AgooInnerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAgooCustomServiceName:Ljava/lang/String;

    .line 890
    invoke-static {p0}, Lcom/aliyun/ams/emas/push/h;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public static setReportPushArrive(Lcom/aliyun/ams/emas/push/IReportPushArrive;)V
    .registers 1

    .line 902
    invoke-static {p0}, Lcom/aliyun/ams/emas/push/h;->a(Lcom/aliyun/ams/emas/push/IReportPushArrive;)V

    return-void
.end method

.method public static unBindAgoo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/common/CallBack;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    .line 716
    invoke-static {p0, p1}, Lcom/taobao/agoo/TaobaoRegister;->unbindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V

    return-void
.end method

.method public static unbindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 777
    invoke-static {p0, p1, v0}, Lcom/taobao/agoo/TaobaoRegister;->sendSwitch(Landroid/content/Context;Lcom/taobao/agoo/ICallback;Z)V

    .line 778
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object p1

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x101d1

    const-string v1, "unregister"

    invoke-virtual {p1, v0, v1, p0}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static unregister(Landroid/content/Context;Lorg/android/agoo/common/CallBack;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    .line 860
    invoke-static {p0, p1}, Lcom/taobao/agoo/TaobaoRegister;->unbindAgoo(Landroid/content/Context;Lcom/taobao/agoo/ICallback;)V

    return-void
.end method
