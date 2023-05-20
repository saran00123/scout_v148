.class public Lanetwork/channel/config/NetworkConfigCenter;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final SERVICE_OPTIMIZE:Ljava/lang/String; = "SERVICE_OPTIMIZE"

.field public static final SESSION_ASYNC_OPTIMIZE:Ljava/lang/String; = "SESSION_ASYNC_OPTIMIZE"

.field private static volatile a:Z = true

.field private static volatile b:Z = true

.field private static volatile c:Z = true

.field private static volatile d:I = 0x5

.field private static volatile e:Z = true

.field private static volatile f:Z = true

.field private static volatile g:Z = false

.field private static volatile h:J = 0x0L

.field private static volatile i:Z = false

.field private static volatile j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m:I

.field private static volatile n:Z

.field private static volatile o:Z

.field private static volatile p:I

.field private static volatile q:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile r:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile s:Z

.field private static volatile t:Z

.field private static volatile u:Z

.field private static volatile v:Z

.field private static volatile w:Z

.field private static volatile x:Lanetwork/channel/config/IRemoteConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lanetwork/channel/config/NetworkConfigCenter;->l:Ljava/util/List;

    const/16 v0, 0x2710

    .line 55
    sput v0, Lanetwork/channel/config/NetworkConfigCenter;->m:I

    const/4 v0, 0x1

    .line 56
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->n:Z

    const/4 v1, 0x0

    .line 57
    sput-boolean v1, Lanetwork/channel/config/NetworkConfigCenter;->o:Z

    const v2, 0xea60

    .line 58
    sput v2, Lanetwork/channel/config/NetworkConfigCenter;->p:I

    const/4 v2, 0x0

    .line 59
    sput-object v2, Lanetwork/channel/config/NetworkConfigCenter;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    sput-object v2, Lanetwork/channel/config/NetworkConfigCenter;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->s:Z

    .line 62
    sput-boolean v1, Lanetwork/channel/config/NetworkConfigCenter;->t:Z

    .line 63
    sput-boolean v1, Lanetwork/channel/config/NetworkConfigCenter;->u:Z

    .line 64
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->v:Z

    .line 65
    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->w:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableNetworkSdkOptimizeTest(Z)V
    .registers 1

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    .line 460
    invoke-static {p0}, Lanetwork/channel/config/NetworkConfigCenter;->setGetSessionAsyncEnable(Z)V

    const/16 p0, 0x10

    .line 461
    invoke-static {p0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->setNormalExecutorPoolSize(I)V

    const-string p0, "[{\"host\":\"trade-acs.m.taobao.com\", \"protocol\":\"http2\", \"rtt\":\"0rtt\", \"publicKey\": \"acs\", \"isKeepAlive\":true}]"

    .line 463
    invoke-static {p0}, Lanet/channel/AwcnConfig;->registerPresetSessions(Ljava/lang/String;)V

    goto :goto_19

    :cond_11
    const/4 p0, 0x0

    .line 465
    invoke-static {p0}, Lanetwork/channel/config/NetworkConfigCenter;->setGetSessionAsyncEnable(Z)V

    const/4 p0, 0x6

    .line 466
    invoke-static {p0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->setNormalExecutorPoolSize(I)V

    :goto_19
    return-void
.end method

.method public static getBgForbidRequestThreshold()I
    .registers 1

    .line 325
    sget v0, Lanetwork/channel/config/NetworkConfigCenter;->p:I

    return v0
.end method

.method public static getRequestStatisticSampleRate()I
    .registers 1

    .line 271
    sget v0, Lanetwork/channel/config/NetworkConfigCenter;->m:I

    return v0
.end method

.method public static getServiceBindWaitTime()I
    .registers 1

    .line 101
    sget v0, Lanetwork/channel/config/NetworkConfigCenter;->d:I

    return v0
.end method

.method public static init()V
    .registers 4

    .line 70
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Cache.Flag"

    const-wide/16 v2, 0x0

    .line 71
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    const-string v1, "CHANNEL_LOCAL_INSTANCE_ENABLE"

    const/4 v2, 0x0

    .line 72
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lanetwork/channel/config/NetworkConfigCenter;->u:Z

    const-string v1, "ALLOW_SPDY_WHEN_BIND_SERVICE_FAILED"

    const/4 v2, 0x1

    .line 73
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->v:Z

    return-void
.end method

.method public static isAllowHttpIpRetry()Z
    .registers 1

    .line 130
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->e:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->g:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isAllowSpdyWhenBindServiceFailed()Z
    .registers 1

    .line 505
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->v:Z

    return v0
.end method

.method public static isBgRequestForbidden()Z
    .registers 1

    .line 279
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->i:Z

    return v0
.end method

.method public static isBindServiceOptimize()Z
    .registers 1

    .line 479
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->t:Z

    return v0
.end method

.method public static isBizInWhiteList(Ljava/lang/String;)Z
    .registers 4

    .line 253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 256
    :cond_8
    sget-object v0, Lanetwork/channel/config/NetworkConfigCenter;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 257
    sget-object v2, Lanetwork/channel/config/NetworkConfigCenter;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_f

    return v1

    .line 261
    :cond_f
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_27
    return v1
.end method

.method public static isChannelLocalInstanceEnable()Z
    .registers 1

    .line 494
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->u:Z

    return v0
.end method

.method public static isCookieEnable()Z
    .registers 1

    .line 513
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->w:Z

    return v0
.end method

.method public static isGetSessionAsyncEnable()Z
    .registers 1

    .line 317
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->o:Z

    return v0
.end method

.method public static isHttpCacheEnable()Z
    .registers 1

    .line 138
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->f:Z

    return v0
.end method

.method public static isHttpSessionEnable()Z
    .registers 1

    .line 122
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->e:Z

    return v0
.end method

.method public static isRemoteNetworkServiceEnable()Z
    .registers 1

    .line 108
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->c:Z

    return v0
.end method

.method public static isRequestDelayRetryForNoNetwork()Z
    .registers 1

    .line 471
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->s:Z

    return v0
.end method

.method public static isRequestInMonitorList(Lanet/channel/statist/RequestStatistic;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 369
    :cond_4
    sget-object v1, Lanetwork/channel/config/NetworkConfigCenter;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_9

    return v0

    .line 373
    :cond_9
    iget-object v2, p0, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v0

    .line 376
    :cond_12
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 377
    iget-object v3, p0, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_2c
    return v0
.end method

.method public static isResponseBufferEnable()Z
    .registers 1

    .line 309
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->n:Z

    return v0
.end method

.method public static isSSLEnabled()Z
    .registers 1

    .line 81
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->a:Z

    return v0
.end method

.method public static isSpdyEnabled()Z
    .registers 1

    .line 89
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->b:Z

    return v0
.end method

.method public static isUrlInDegradeList(Lanet/channel/util/HttpUrl;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 434
    :cond_4
    sget-object v1, Lanetwork/channel/config/NetworkConfigCenter;->r:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_9

    return v0

    .line 439
    :cond_9
    invoke-virtual {p0}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_16

    return v0

    .line 442
    :cond_16
    sget-object v2, Lanetwork/channel/config/NetworkConfigCenter;->l:Ljava/util/List;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1c

    return v3

    .line 445
    :cond_1c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 446
    invoke-virtual {p0}, Lanet/channel/util/HttpUrl;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    return v3

    :cond_37
    return v0
.end method

.method public static isUrlInWhiteList(Lanet/channel/util/HttpUrl;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 232
    :cond_4
    sget-object v1, Lanetwork/channel/config/NetworkConfigCenter;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_9

    return v0

    .line 237
    :cond_9
    invoke-virtual {p0}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_16

    return v0

    .line 240
    :cond_16
    sget-object v2, Lanetwork/channel/config/NetworkConfigCenter;->l:Ljava/util/List;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1c

    return v3

    .line 243
    :cond_1c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lanet/channel/util/HttpUrl;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    return v3

    :cond_37
    return v0
.end method

.method public static setAllowHttpIpRetry(Z)V
    .registers 1

    .line 134
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->g:Z

    return-void
.end method

.method public static setAllowSpdyWhenBindServiceFailed(Z)V
    .registers 3

    .line 498
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->v:Z

    .line 499
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 500
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->v:Z

    const-string v1, "ALLOW_SPDY_WHEN_BIND_SERVICE_FAILED"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 501
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAmdcPresetHosts(Ljava/lang/String;)V
    .registers 7

    .line 287
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 292
    :try_start_8
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    .line 294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v0

    :goto_17
    if-ge v3, p0, :cond_29

    .line 297
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-static {v4}, Lanet/channel/strategy/utils/c;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 299
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 302
    :cond_29
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Lanet/channel/strategy/dispatch/HttpDispatcher;->addHosts(Ljava/util/List;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_30} :catch_31

    goto :goto_3c

    :catch_31
    move-exception p0

    const/4 v1, 0x0

    .line 304
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "anet.NetworkConfigCenter"

    const-string v3, "parse hosts failed"

    invoke-static {v2, v3, v1, p0, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3c
    return-void
.end method

.method public static setBgForbidRequestThreshold(I)V
    .registers 1

    .line 329
    sput p0, Lanetwork/channel/config/NetworkConfigCenter;->p:I

    return-void
.end method

.method public static setBgRequestForbidden(Z)V
    .registers 1

    .line 283
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->i:Z

    return-void
.end method

.method public static setBindServiceOptimize(Z)V
    .registers 1

    .line 483
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->t:Z

    return-void
.end method

.method public static setCacheFlag(J)V
    .registers 7

    .line 146
    sget-wide v0, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 147
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "old"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-wide v3, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "new"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "anet.NetworkConfigCenter"

    const-string v3, "set cache flag"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    sput-wide p0, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    .line 149
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 150
    sget-wide v0, Lanetwork/channel/config/NetworkConfigCenter;->h:J

    const-string p1, "Cache.Flag"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    invoke-static {}, Lanetwork/channel/cache/CacheManager;->clearAllCache()V

    :cond_46
    return-void
.end method

.method public static setChannelLocalInstanceEnable(Z)V
    .registers 3

    .line 487
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->u:Z

    .line 488
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 489
    sget-boolean v0, Lanetwork/channel/config/NetworkConfigCenter;->u:Z

    const-string v1, "CHANNEL_LOCAL_INSTANCE_ENABLE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 490
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setCookieEnable(Z)V
    .registers 1

    .line 509
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->w:Z

    return-void
.end method

.method public static setDegradeRequestList(Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x2

    .line 386
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const-string v2, "anet.NetworkConfigCenter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_19

    .line 387
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Degrade List"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string v1, "setDegradeRequestList"

    invoke-static {v2, v1, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    :cond_19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 391
    sput-object v4, Lanetwork/channel/config/NetworkConfigCenter;->r:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    .line 395
    :cond_22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 397
    :try_start_27
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 399
    :catch_30
    :cond_30
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 400
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 401
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_40} :catch_7a

    :try_start_40
    const-string v7, "*"

    .line 403
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 404
    sget-object v6, Lanetwork/channel/config/NetworkConfigCenter;->l:Ljava/util/List;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 405
    :cond_4e
    instance-of v7, v6, Lorg/json/JSONArray;

    if-eqz v7, :cond_30

    .line 406
    check-cast v6, Lorg/json/JSONArray;

    .line 407
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 408
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v3

    :goto_5e
    if-ge v9, v7, :cond_70

    .line 410
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 411
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_6d

    .line 412
    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    add-int/lit8 v9, v9, 0x1

    goto :goto_5e

    .line 415
    :cond_70
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_30

    .line 416
    invoke-virtual {v0, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_79} :catch_30

    goto :goto_30

    :catch_7a
    move-exception p0

    .line 424
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "parse jsonObject failed"

    invoke-static {v2, v3, v4, p0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 426
    :cond_82
    sput-object v0, Lanetwork/channel/config/NetworkConfigCenter;->r:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static setGetSessionAsyncEnable(Z)V
    .registers 1

    .line 321
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->o:Z

    return-void
.end method

.method public static setHttpCacheEnable(Z)V
    .registers 1

    .line 142
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->f:Z

    return-void
.end method

.method public static setHttpSessionEnable(Z)V
    .registers 1

    .line 126
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->e:Z

    return-void
.end method

.method public static setHttpsValidationEnabled(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setMonitorRequestList(Ljava/lang/String;)V
    .registers 8

    .line 337
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 338
    sput-object v1, Lanetwork/channel/config/NetworkConfigCenter;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_9
    const/4 v0, 0x0

    .line 342
    :try_start_a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "host"

    .line 343
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 345
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move v4, v0

    :goto_1f
    if-ge v4, v2, :cond_31

    .line 348
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 349
    invoke-static {v5}, Lanet/channel/strategy/utils/c;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 350
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 353
    :cond_31
    sput-object v3, Lanetwork/channel/config/NetworkConfigCenter;->q:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_33} :catch_34

    goto :goto_3e

    :catch_34
    move-exception p0

    .line 355
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "anet.NetworkConfigCenter"

    const-string v3, "parse hosts failed"

    invoke-static {v2, v3, v1, p0, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3e
    return-void
.end method

.method public static setRemoteConfig(Lanetwork/channel/config/IRemoteConfig;)V
    .registers 2

    .line 112
    sget-object v0, Lanetwork/channel/config/NetworkConfigCenter;->x:Lanetwork/channel/config/IRemoteConfig;

    if-eqz v0, :cond_9

    .line 113
    sget-object v0, Lanetwork/channel/config/NetworkConfigCenter;->x:Lanetwork/channel/config/IRemoteConfig;

    invoke-interface {v0}, Lanetwork/channel/config/IRemoteConfig;->unRegister()V

    :cond_9
    if-eqz p0, :cond_e

    .line 116
    invoke-interface {p0}, Lanetwork/channel/config/IRemoteConfig;->register()V

    .line 118
    :cond_e
    sput-object p0, Lanetwork/channel/config/NetworkConfigCenter;->x:Lanetwork/channel/config/IRemoteConfig;

    return-void
.end method

.method public static setRemoteNetworkServiceEnable(Z)V
    .registers 1

    .line 105
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->c:Z

    return-void
.end method

.method public static setRequestDelayRetryForNoNetwork(Z)V
    .registers 1

    .line 475
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->s:Z

    return-void
.end method

.method public static setRequestStatisticSampleRate(I)V
    .registers 1

    .line 275
    sput p0, Lanetwork/channel/config/NetworkConfigCenter;->m:I

    return-void
.end method

.method public static setResponseBufferEnable(Z)V
    .registers 1

    .line 313
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->n:Z

    return-void
.end method

.method public static setSSLEnabled(Z)V
    .registers 5

    const/4 v0, 0x2

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "enable"

    aput-object v2, v0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "anet.NetworkConfigCenter"

    const-string v2, "[setSSLEnabled]"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->a:Z

    return-void
.end method

.method public static setServiceBindWaitTime(I)V
    .registers 1

    .line 97
    sput p0, Lanetwork/channel/config/NetworkConfigCenter;->d:I

    return-void
.end method

.method public static setSpdyEnabled(Z)V
    .registers 5

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "enable"

    aput-object v2, v0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "anet.NetworkConfigCenter"

    const-string v2, "[setSpdyEnabled]"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sput-boolean p0, Lanetwork/channel/config/NetworkConfigCenter;->b:Z

    return-void
.end method

.method public static updateBizWhiteList(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x2

    .line 201
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const-string v2, "anet.NetworkConfigCenter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1a

    .line 202
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "White List"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string/jumbo v1, "updateRequestWhiteList"

    invoke-static {v2, v1, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_1a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 205
    sput-object v4, Lanetwork/channel/config/NetworkConfigCenter;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void

    .line 210
    :cond_23
    :try_start_23
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    .line 212
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move v5, v3

    :goto_32
    if-ge v5, p0, :cond_44

    .line 215
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_41

    .line 217
    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 220
    :cond_44
    sput-object v1, Lanetwork/channel/config/NetworkConfigCenter;->k:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_46} :catch_47

    goto :goto_4f

    :catch_47
    move-exception p0

    .line 222
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "parse bizId failed"

    invoke-static {v2, v1, v4, p0, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4f
    return-void
.end method

.method public static updateWhiteListMap(Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x2

    .line 157
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const-string v2, "anet.NetworkConfigCenter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1a

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "White List"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string/jumbo v1, "updateWhiteUrlList"

    invoke-static {v2, v1, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_1a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 162
    sput-object v4, Lanetwork/channel/config/NetworkConfigCenter;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    .line 166
    :cond_23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 168
    :try_start_28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 170
    :catch_31
    :cond_31
    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 172
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_41} :catch_7b

    :try_start_41
    const-string v7, "*"

    .line 174
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 175
    sget-object v6, Lanetwork/channel/config/NetworkConfigCenter;->l:Ljava/util/List;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 176
    :cond_4f
    instance-of v7, v6, Lorg/json/JSONArray;

    if-eqz v7, :cond_31

    .line 177
    check-cast v6, Lorg/json/JSONArray;

    .line 178
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 179
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v3

    :goto_5f
    if-ge v9, v7, :cond_71

    .line 181
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 182
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_6e

    .line 183
    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 186
    :cond_71
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_31

    .line 187
    invoke-virtual {v0, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_7a} :catch_31

    goto :goto_31

    :catch_7b
    move-exception p0

    .line 195
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "parse jsonObject failed"

    invoke-static {v2, v3, v4, p0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 197
    :cond_83
    sput-object v0, Lanetwork/channel/config/NetworkConfigCenter;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
