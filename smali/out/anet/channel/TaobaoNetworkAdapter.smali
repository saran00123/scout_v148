.class public Lanet/channel/TaobaoNetworkAdapter;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static isInited:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lanet/channel/TaobaoNetworkAdapter;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;ZZ)V
    .registers 12

    .line 164
    invoke-static {}, Lanet/channel/strategy/StrategyTemplate;->getInstance()Lanet/channel/strategy/StrategyTemplate;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lanet/channel/strategy/StrategyTemplate;->registerConnProtocol(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    if-eqz p3, :cond_5a

    if-nez p4, :cond_30

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p3

    .line 168
    invoke-static/range {v1 .. v6}, Lanet/channel/SessionInfo;->create(Ljava/lang/String;ZZLanet/channel/IAuth;Lanet/channel/heartbeat/IHeartbeat;Lanet/channel/DataFrameCb;)Lanet/channel/SessionInfo;

    move-result-object p0

    .line 169
    new-instance p2, Lanet/channel/Config$Builder;

    invoke-direct {p2}, Lanet/channel/Config$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object p1

    sget-object p2, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    invoke-virtual {p1, p2}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object p1

    .line 170
    invoke-static {p1}, Lanet/channel/SessionCenter;->getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lanet/channel/SessionCenter;->registerSessionInfo(Lanet/channel/SessionInfo;)V

    goto :goto_5a

    .line 173
    :cond_30
    new-instance p2, Lanet/channel/Config$Builder;

    invoke-direct {p2}, Lanet/channel/Config$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object p1

    sget-object p2, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    invoke-virtual {p1, p2}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object p1

    const-string p2, "https"

    const-string p3, "://"

    .line 174
    invoke-static {p2, p3, p0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-static {p1}, Lanet/channel/SessionCenter;->getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;

    move-result-object p1

    invoke-static {p0}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object p0

    sget p2, Lanet/channel/entity/c;->a:I

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p0, p2, p3, p4}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;

    :cond_5a
    :goto_5a
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "0rtt"

    const-string v1, "http2"

    const-string v2, "isNextLaunch"

    .line 49
    sget-object v3, Lanet/channel/TaobaoNetworkAdapter;->isInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_158

    const-string v3, "com.taobao.taobao"

    const-string v6, "process"

    if-eqz p1, :cond_3e

    .line 52
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 54
    invoke-static {v4}, Lanet/channel/AwcnConfig;->setAccsSessionCreateForbiddenInBg(Z)V

    .line 57
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const-string v8, "liveng-bfrtc.alibabausercontent.com"

    .line 58
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v8, "livecb-bfrtc.alibabausercontent.com"

    .line 59
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v8, "liveca-bfrtc.alibabausercontent.com"

    .line 60
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lanet/channel/AwcnConfig;->setHttpDnsNotifyWhiteList(Ljava/lang/String;)V

    :cond_3e
    const/4 v7, 0x0

    const-string v8, "awcn.TaobaoNetworkAdapter"

    if-eqz p1, :cond_5f

    .line 64
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "com.taobao.taobao:channel"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isChannelLocalInstanceEnable()Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 65
    new-array v9, v5, [Ljava/lang/Object;

    const-string v10, "channelLocalInstanceEnable"

    invoke-static {v8, v10, v7, v9}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {v5}, Lanetwork/channel/config/NetworkConfigCenter;->setRemoteNetworkServiceEnable(Z)V

    .line 70
    :cond_5f
    new-instance v9, Lanet/channel/d/a;

    invoke-direct {v9}, Lanet/channel/d/a;-><init>()V

    invoke-static {v9}, Lanet/channel/util/ALog;->setLog(Lanet/channel/util/ALog$ILog;)V

    .line 73
    new-instance v9, Lanet/channel/c/a;

    invoke-direct {v9}, Lanet/channel/c/a;-><init>()V

    invoke-static {v9}, Lanetwork/channel/config/NetworkConfigCenter;->setRemoteConfig(Lanetwork/channel/config/IRemoteConfig;)V

    .line 76
    new-instance v9, Lanet/channel/appmonitor/a;

    invoke-direct {v9}, Lanet/channel/appmonitor/a;-><init>()V

    invoke-static {v9}, Lanet/channel/appmonitor/AppMonitor;->setInstance(Lanet/channel/appmonitor/IAppMonitor;)V

    .line 79
    new-instance v9, Lanet/channel/a/b;

    invoke-direct {v9}, Lanet/channel/a/b;-><init>()V

    invoke-static {v9}, Lanet/channel/flow/NetworkAnalysis;->setInstance(Lanet/channel/flow/INetworkAnalysis;)V

    .line 82
    new-instance v9, Lanet/channel/a/a;

    invoke-direct {v9}, Lanet/channel/a/a;-><init>()V

    invoke-static {v9}, Lanet/channel/fulltrace/a;->a(Lanet/channel/fulltrace/IFullTraceAnalysis;)V

    .line 85
    new-instance v9, Lanet/channel/j;

    invoke-direct {v9}, Lanet/channel/j;-><init>()V

    sget v10, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->NORMAL:I

    invoke-static {v9, v10}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    if-eqz p1, :cond_c5

    .line 104
    :try_start_93
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c5

    const-string v9, "isDebuggable"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c5

    const-string v9, "com.taobao.android.request.analysis.RequestRecorder"

    const-string v10, "init"

    .line 106
    new-array v11, v4, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v5

    new-array v12, v4, [Ljava/lang/Object;

    aput-object p0, v12, v5

    invoke-static {v9, v10, v11, v12}, Lanet/channel/util/Utils;->invokeStaticMethodThrowException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_bc} :catch_bd

    goto :goto_c5

    :catch_bd
    move-exception v9

    .line 110
    new-array v10, v5, [Ljava/lang/Object;

    const-string v11, "RequestRecorder error."

    invoke-static {v8, v11, v7, v9, v10}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_c5
    :goto_c5
    if-eqz p1, :cond_e5

    .line 117
    :try_start_c7
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e1

    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "NEXT_LAUNCH_FORBID"

    .line 119
    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_e1

    const-string/jumbo v9, "true"

    .line 121
    invoke-static {v2, v9}, Lanet/channel/GlobalAppRuntimeInfo;->addBucketInfo(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto :goto_e2

    :cond_e1
    move v2, v5

    .line 124
    :goto_e2
    invoke-static {v2}, Lanet/channel/AwcnConfig;->setTbNextLaunch(Z)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e5} :catch_e5

    .line 130
    :catch_e5
    :cond_e5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "HTTP3_ENABLE"

    .line 131
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 132
    invoke-static {v2}, Lanet/channel/AwcnConfig;->setHttp3OrangeEnable(Z)V

    if-eqz v2, :cond_10a

    if-eqz p1, :cond_10a

    .line 133
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 134
    invoke-static {v4}, Lanet/channel/AwcnConfig;->setHttp3Enable(Z)V

    .line 135
    new-array v2, v5, [Ljava/lang/Object;

    const-string v9, "http3 enabled."

    invoke-static {v8, v9, v7, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10a
    if-eqz p1, :cond_158

    .line 140
    :try_start_10c
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "ngLaunch"

    .line 141
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_158

    const-string v2, "SERVICE_OPTIMIZE"

    .line 144
    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_130

    .line 145
    invoke-static {v4}, Lanetwork/channel/config/NetworkConfigCenter;->setBindServiceOptimize(Z)V

    const-string p0, "bindservice optimize enabled."

    .line 146
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v8, p0, v7, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_130
    const-string p0, "onlineAppKey"

    .line 150
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "guide-acs.m.taobao.com"

    const-string v2, "acs"

    .line 151
    invoke-static {v1, v0, v2}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    invoke-static {p1, p0, v2, v4, v6}, Lanet/channel/TaobaoNetworkAdapter;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;ZZ)V

    const-string p1, "cdn"

    .line 152
    invoke-static {v1, v0, p1}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object p1

    const-string v0, "gw.alicdn.com"

    .line 153
    invoke-static {v0, p0, p1, v5, v6}, Lanet/channel/TaobaoNetworkAdapter;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;ZZ)V

    const-string v0, "dorangesource.alicdn.com"

    .line 154
    invoke-static {v0, p0, p1, v5, v6}, Lanet/channel/TaobaoNetworkAdapter;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;ZZ)V

    const-string v0, "ossgw.alicdn.com"

    .line 155
    invoke-static {v0, p0, p1, v5, v6}, Lanet/channel/TaobaoNetworkAdapter;->a(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;ZZ)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_158} :catch_158

    :catch_158
    :cond_158
    return-void
.end method
