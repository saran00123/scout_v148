.class public Lanetwork/channel/http/NetworkSdkSetting;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static CURRENT_ENV:Lanet/channel/entity/ENV; = null

.field private static final TAG:Ljava/lang/String; = "anet.NetworkSdkSetting"

.field private static context:Landroid/content/Context;

.field private static initParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static isInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->CURRENT_ENV:Lanet/channel/entity/ENV;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->initParams:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 79
    sget-object v0, Lanetwork/channel/http/NetworkSdkSetting;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/app/Application;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "ttid"

    .line 58
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    invoke-static {v1}, Lanet/channel/GlobalAppRuntimeInfo;->setTtid(Ljava/lang/String;)V

    const-string v1, "deviceId"

    .line 60
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    invoke-static {v1}, Lanet/channel/GlobalAppRuntimeInfo;->setUtdid(Ljava/lang/String;)V

    const-string v1, "process"

    .line 62
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 64
    invoke-static {v1}, Lanet/channel/GlobalAppRuntimeInfo;->setCurrentProcess(Ljava/lang/String;)V

    .line 66
    :cond_29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lanetwork/channel/http/NetworkSdkSetting;->initParams:Ljava/util/HashMap;

    .line 67
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lanetwork/channel/http/NetworkSdkSetting;->init(Landroid/content/Context;)V

    .line 68
    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->initParams:Ljava/util/HashMap;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3a

    goto :goto_45

    :catch_3a
    move-exception p0

    const/4 p1, 0x0

    .line 70
    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "anet.NetworkSdkSetting"

    const-string v2, "Network SDK initial failed!"

    invoke-static {v1, v2, v0, p0, p1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_45
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 6

    const-string v0, "anet.NetworkSdkSetting"

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38
    :try_start_7
    sget-object v3, Lanetwork/channel/http/NetworkSdkSetting;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "NetworkSdkSetting init"

    .line 39
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sput-object p0, Lanetwork/channel/http/NetworkSdkSetting;->context:Landroid/content/Context;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lanet/channel/GlobalAppRuntimeInfo;->setInitTime(J)V

    .line 42
    invoke-static {p0}, Lanet/channel/GlobalAppRuntimeInfo;->setContext(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->init()V

    .line 44
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->initTaobaoAdapter()V

    .line 45
    invoke-static {}, Lanetwork/channel/monitor/Monitor;->init()V

    .line 46
    invoke-static {}, Lanet/channel/AwcnConfig;->isTbNextLaunch()Z

    move-result v3

    if-nez v3, :cond_35

    .line 47
    invoke-static {p0}, Lanetwork/channel/cookie/CookieManager;->setup(Landroid/content/Context;)V

    .line 49
    :cond_35
    invoke-static {p0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_38} :catch_39

    goto :goto_41

    :catch_39
    move-exception p0

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Network SDK initial failed!"

    invoke-static {v0, v3, v1, p0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_41
    :goto_41
    return-void
.end method

.method private static initTaobaoAdapter()V
    .registers 9

    const-string v0, "anet.NetworkSdkSetting"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_5
    const-string v4, "anet.channel.TaobaoNetworkAdapter"

    const-string v5, "init"

    const/4 v6, 0x2

    .line 84
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    const-class v8, Ljava/util/HashMap;

    aput-object v8, v7, v2

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v8, Lanetwork/channel/http/NetworkSdkSetting;->context:Landroid/content/Context;

    aput-object v8, v6, v3

    sget-object v8, Lanetwork/channel/http/NetworkSdkSetting;->initParams:Ljava/util/HashMap;

    aput-object v8, v6, v2

    invoke-static {v4, v5, v7, v6}, Lanet/channel/util/Utils;->invokeStaticMethodThrowException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "init taobao adapter success"

    .line 85
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v1, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_33

    :catch_29
    move-exception v4

    .line 87
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    const-string v3, "initTaobaoAdapter failed. maybe not taobao app"

    invoke-static {v0, v3, v1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_33
    return-void
.end method

.method public static setTtid(Ljava/lang/String;)V
    .registers 1

    .line 75
    invoke-static {p0}, Lanet/channel/GlobalAppRuntimeInfo;->setTtid(Ljava/lang/String;)V

    return-void
.end method
