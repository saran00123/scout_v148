.class Lanet/channel/detect/ExceptionDetector;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/detect/ExceptionDetector$a;,
        Lanet/channel/detect/ExceptionDetector$LimitedQueue;
    }
.end annotation


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lanet/channel/detect/ExceptionDetector$LimitedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanet/channel/detect/ExceptionDetector$LimitedQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lanet/channel/detect/ExceptionDetector$LimitedQueue;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lanet/channel/detect/ExceptionDetector$LimitedQueue;-><init>(Lanet/channel/detect/ExceptionDetector;I)V

    iput-object v0, p0, Lanet/channel/detect/ExceptionDetector;->e:Lanet/channel/detect/ExceptionDetector$LimitedQueue;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/detect/ExceptionDetector$a;
    .registers 10

    .line 245
    new-instance v0, Lanet/channel/detect/ExceptionDetector$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lanet/channel/detect/ExceptionDetector$a;-><init>(Lanet/channel/detect/ExceptionDetector;Lanet/channel/detect/a;)V

    .line 246
    iput-object p1, v0, Lanet/channel/detect/ExceptionDetector$a;->a:Ljava/lang/String;

    .line 248
    :try_start_8
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/detect/ExceptionDetector$a;->b:Ljava/lang/String;
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_12} :catch_12

    .line 252
    :catch_12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 253
    iput-object p2, v0, Lanet/channel/detect/ExceptionDetector$a;->c:Ljava/lang/String;

    goto :goto_38

    .line 255
    :cond_1b
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p2

    invoke-interface {p2, p1}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 256
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_38

    const/4 p2, 0x0

    .line 257
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/IConnStrategy;

    invoke-interface {p1}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lanet/channel/detect/ExceptionDetector$a;->c:Ljava/lang/String;

    .line 260
    :cond_38
    :goto_38
    iget-object p1, v0, Lanet/channel/detect/ExceptionDetector$a;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, v0, Lanet/channel/detect/ExceptionDetector$a;->c:Ljava/lang/String;

    goto :goto_45

    :cond_43
    iget-object p1, v0, Lanet/channel/detect/ExceptionDetector$a;->b:Ljava/lang/String;

    .line 261
    :goto_45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_79

    .line 262
    new-instance p2, Lorg/android/netutil/PingTask;

    const/16 v3, 0x3e8

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p2}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, v0, Lanet/channel/detect/ExceptionDetector$a;->d:Ljava/util/concurrent/Future;

    .line 263
    new-instance p2, Lorg/android/netutil/PingTask;

    const/16 v5, 0x494

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p2}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, v0, Lanet/channel/detect/ExceptionDetector$a;->e:Ljava/util/concurrent/Future;

    .line 264
    new-instance p2, Lorg/android/netutil/PingTask;

    const/16 v5, 0x598

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p2}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, v0, Lanet/channel/detect/ExceptionDetector$a;->f:Ljava/util/concurrent/Future;

    :cond_79
    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, p2, :cond_69

    .line 222
    new-instance v9, Lorg/android/netutil/PingTask;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    add-int/lit8 v2, v2, 0x1

    move-object v3, v9

    move-object v4, p1

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    .line 223
    invoke-virtual {v9}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object v3

    const/4 v4, 0x0

    .line 226
    :try_start_22
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/android/netutil/PingResponse;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-object v3, v4

    .line 229
    :goto_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_61

    .line 231
    invoke-virtual {v3}, Lorg/android/netutil/PingResponse;->getLastHopIPStr()Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-virtual {v3}, Lorg/android/netutil/PingResponse;->getResults()[Lorg/android/netutil/PingEntry;

    move-result-object v6

    aget-object v6, v6, v1

    iget-wide v6, v6, Lorg/android/netutil/PingEntry;->rtt:D

    .line 233
    invoke-virtual {v3}, Lorg/android/netutil/PingResponse;->getErrcode()I

    move-result v3

    .line 234
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_49

    const-string v5, "*"

    :cond_49
    const-string v8, "hop="

    .line 237
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",rtt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ",errCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    :cond_61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_69
    return-object v0
.end method

.method private a(Lanet/channel/detect/ExceptionDetector$a;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 270
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_8a

    .line 271
    iget-object v1, p1, Lanet/channel/detect/ExceptionDetector$a;->d:Ljava/util/concurrent/Future;

    if-nez v1, :cond_d

    goto/16 :goto_8a

    .line 276
    :cond_d
    iget-object v1, p1, Lanet/channel/detect/ExceptionDetector$a;->a:Ljava/lang/String;

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    iget-object v1, p1, Lanet/channel/detect/ExceptionDetector$a;->c:Ljava/lang/String;

    const-string v2, "currentIp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    iget-object v1, p1, Lanet/channel/detect/ExceptionDetector$a;->b:Ljava/lang/String;

    const-string v2, "localIp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    iget-object v1, p1, Lanet/channel/detect/ExceptionDetector$a;->d:Ljava/util/concurrent/Future;

    invoke-direct {p0, v1}, Lanet/channel/detect/ExceptionDetector;->a(Ljava/util/concurrent/Future;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ping"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 285
    iget-object v2, p1, Lanet/channel/detect/ExceptionDetector$a;->e:Ljava/util/concurrent/Future;

    invoke-direct {p0, v2}, Lanet/channel/detect/ExceptionDetector;->a(Ljava/util/concurrent/Future;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "1200"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    iget-object v2, p1, Lanet/channel/detect/ExceptionDetector$a;->f:Ljava/util/concurrent/Future;

    invoke-direct {p0, v2}, Lanet/channel/detect/ExceptionDetector;->a(Ljava/util/concurrent/Future;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "1460"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "MTU"

    .line 288
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    iget-object v1, p1, Lanet/channel/detect/ExceptionDetector$a;->a:Ljava/lang/String;

    const-string v2, "guide-acs.m.taobao.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 292
    iget-object v1, p1, Lanet/channel/detect/ExceptionDetector$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    iget-object p1, p1, Lanet/channel/detect/ExceptionDetector$a;->c:Ljava/lang/String;

    goto :goto_64

    :cond_62
    iget-object p1, p1, Lanet/channel/detect/ExceptionDetector$a;->b:Ljava/lang/String;

    :goto_64
    const/4 v1, 0x5

    .line 293
    invoke-direct {p0, p1, v1}, Lanet/channel/detect/ExceptionDetector;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 294
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 295
    :goto_6f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_84

    add-int/lit8 v3, v2, 0x1

    .line 296
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v2, v3

    goto :goto_6f

    :cond_84
    const-string/jumbo p1, "traceRoute"

    .line 298
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8a
    :goto_8a
    return-object v0
.end method

.method private a(Ljava/util/concurrent/Future;)Lorg/json/JSONObject;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lorg/android/netutil/PingResponse;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x0

    .line 311
    :try_start_9
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/android/netutil/PingResponse;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-object p1, v1

    :goto_11
    if-nez p1, :cond_14

    return-object v0

    .line 318
    :cond_14
    invoke-virtual {p1}, Lorg/android/netutil/PingResponse;->getErrcode()I

    move-result v1

    const-string v2, "errCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 320
    invoke-virtual {p1}, Lorg/android/netutil/PingResponse;->getResults()[Lorg/android/netutil/PingEntry;

    move-result-object p1

    .line 321
    array-length v2, p1

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_59

    aget-object v4, p1, v3

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seq="

    .line 323
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lorg/android/netutil/PingEntry;->seq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",hop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lorg/android/netutil/PingEntry;->hop:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",rtt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lorg/android/netutil/PingEntry;->rtt:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_59
    const-string p1, "response"

    .line 326
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 57
    new-instance v0, Lanet/channel/detect/a;

    invoke-direct {v0, p0}, Lanet/channel/detect/a;-><init>(Lanet/channel/detect/ExceptionDetector;)V

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    return-void
.end method

.method public a(Lanet/channel/statist/RequestStatistic;)V
    .registers 5

    .line 76
    invoke-static {}, Lanet/channel/AwcnConfig;->isNetworkDetectEnable()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "anet.ExceptionDetector"

    const-string v2, "network detect closed."

    invoke-static {v1, v2, p1, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 81
    :cond_12
    new-instance v0, Lanet/channel/detect/c;

    invoke-direct {v0, p0, p1}, Lanet/channel/detect/c;-><init>(Lanet/channel/detect/ExceptionDetector;Lanet/channel/statist/RequestStatistic;)V

    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitDetectTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method b()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "anet.ExceptionDetector"

    const/4 v3, 0x0

    const-string v4, "network detect start."

    invoke-static {v2, v4, v3, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v5, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v1, v4, v5}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    .line 115
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 118
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 119
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v5

    .line 120
    invoke-virtual {v5}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "status"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "subType"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    sget-object v6, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v5, v6, :cond_71

    .line 123
    invoke-virtual {v5}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 124
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getApn()Ljava/lang/String;

    move-result-object v6

    const-string v7, "apn"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getCarrier()Ljava/lang/String;

    move-result-object v6

    const-string v7, "carrier"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_68

    .line 127
    :cond_55
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiBSSID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "bssid"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiSSID()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ssid"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :goto_68
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getProxyType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_71
    const-string v6, "NetworkInfo"

    .line 132
    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "114.114.114.114"

    .line 136
    invoke-virtual {v5}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-static {v4}, Lorg/android/netutil/NetUtils;->getDefaultGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_88

    :cond_83
    const/4 v5, 0x2

    invoke-static {v4, v5}, Lorg/android/netutil/NetUtils;->getPreferNextHop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 138
    :goto_88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 139
    new-instance v11, Lorg/android/netutil/PingTask;

    const/16 v7, 0x3e8

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v11}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object v5

    goto :goto_a0

    :cond_9f
    move-object v5, v3

    .line 143
    :goto_a0
    iget-object v6, p0, Lanet/channel/detect/ExceptionDetector;->b:Ljava/lang/String;

    const-string v7, "guide-acs.m.taobao.com"

    invoke-direct {p0, v7, v6}, Lanet/channel/detect/ExceptionDetector;->a(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/detect/ExceptionDetector$a;

    move-result-object v6

    .line 144
    iget-object v7, p0, Lanet/channel/detect/ExceptionDetector;->d:Ljava/lang/String;

    const-string v8, "gw.alicdn.com"

    invoke-direct {p0, v8, v7}, Lanet/channel/detect/ExceptionDetector;->a(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/detect/ExceptionDetector$a;

    move-result-object v7

    .line 145
    iget-object v8, p0, Lanet/channel/detect/ExceptionDetector;->c:Ljava/lang/String;

    const-string v9, "msgacs.m.taobao.com"

    invoke-direct {p0, v9, v8}, Lanet/channel/detect/ExceptionDetector;->a(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/detect/ExceptionDetector$a;

    move-result-object v8

    .line 148
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "nextHop"

    .line 149
    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-direct {p0, v5}, Lanet/channel/detect/ExceptionDetector;->a(Ljava/util/concurrent/Future;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ping"

    invoke-virtual {v9, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "LocalDetect"

    .line 151
    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 155
    invoke-direct {p0, v6}, Lanet/channel/detect/ExceptionDetector;->a(Lanet/channel/detect/ExceptionDetector$a;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 156
    invoke-direct {p0, v7}, Lanet/channel/detect/ExceptionDetector;->a(Lanet/channel/detect/ExceptionDetector$a;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 157
    invoke-direct {p0, v8}, Lanet/channel/detect/ExceptionDetector;->a(Lanet/channel/detect/ExceptionDetector$a;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v5, "InternetDetect"

    .line 158
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 162
    iget-object v5, p0, Lanet/channel/detect/ExceptionDetector;->e:Lanet/channel/detect/ExceptionDetector$LimitedQueue;

    invoke-virtual {v5}, Lanet/channel/detect/ExceptionDetector$LimitedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_110

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 163
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_fa

    :cond_110
    const-string v5, "BizDetect"

    .line 165
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    iget-object v4, p0, Lanet/channel/detect/ExceptionDetector;->e:Lanet/channel/detect/ExceptionDetector$LimitedQueue;

    invoke-virtual {v4}, Lanet/channel/detect/ExceptionDetector$LimitedQueue;->clear()V

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network detect result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method c()Z
    .registers 9

    .line 177
    iget-object v0, p0, Lanet/channel/detect/ExceptionDetector;->e:Lanet/channel/detect/ExceptionDetector$LimitedQueue;

    invoke-virtual {v0}, Lanet/channel/detect/ExceptionDetector$LimitedQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    .line 181
    :cond_c
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v3, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v3, :cond_1f

    const/4 v0, 0x0

    .line 182
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "anet.ExceptionDetector"

    const-string v4, "no network"

    invoke-static {v3, v4, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 186
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 188
    iget-wide v5, p0, Lanet/channel/detect/ExceptionDetector;->a:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2a

    return v2

    .line 192
    :cond_2a
    iget-object v0, p0, Lanet/channel/detect/ExceptionDetector;->e:Lanet/channel/detect/ExceptionDetector$LimitedQueue;

    invoke-virtual {v0}, Lanet/channel/detect/ExceptionDetector$LimitedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 193
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, -0xca

    if-eq v6, v7, :cond_59

    const/16 v7, -0x190

    if-eq v6, v7, :cond_59

    const/16 v7, -0x191

    if-eq v6, v7, :cond_59

    const/16 v7, -0x195

    if-eq v6, v7, :cond_59

    const/16 v7, -0x196

    if-ne v6, v7, :cond_31

    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_5c
    mul-int/lit8 v5, v5, 0x2

    if-le v5, v1, :cond_61

    const/4 v2, 0x1

    :cond_61
    if-eqz v2, :cond_69

    const-wide/32 v0, 0x1b7740

    add-long/2addr v3, v0

    .line 206
    iput-wide v3, p0, Lanet/channel/detect/ExceptionDetector;->a:J

    :cond_69
    return v2
.end method
