.class Lanet/channel/detect/d;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/l$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lanet/channel/detect/d;->a:Ljava/util/TreeMap;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lanet/channel/detect/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static a(Lanet/channel/strategy/ConnProtocol;Lanet/channel/strategy/l$e;)Lanet/channel/strategy/IConnStrategy;
    .registers 3

    .line 289
    new-instance v0, Lanet/channel/detect/j;

    invoke-direct {v0, p1, p0}, Lanet/channel/detect/j;-><init>(Lanet/channel/strategy/l$e;Lanet/channel/strategy/ConnProtocol;)V

    return-object v0
.end method

.method private a(Lanet/channel/strategy/l$c;)V
    .registers 7

    .line 133
    iget-object v0, p1, Lanet/channel/strategy/l$c;->b:[Lanet/channel/strategy/l$e;

    if-eqz v0, :cond_5c

    iget-object v0, p1, Lanet/channel/strategy/l$c;->b:[Lanet/channel/strategy/l$e;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_5c

    .line 137
    :cond_a
    iget-object v0, p1, Lanet/channel/strategy/l$c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 138
    :goto_d
    iget-object v2, p1, Lanet/channel/strategy/l$c;->b:[Lanet/channel/strategy/l$e;

    array-length v2, v2

    if-ge v1, v2, :cond_5c

    .line 139
    iget-object v2, p1, Lanet/channel/strategy/l$c;->b:[Lanet/channel/strategy/l$e;

    aget-object v2, v2, v1

    .line 140
    iget-object v3, v2, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget-object v3, v3, Lanet/channel/strategy/l$a;->b:Ljava/lang/String;

    const-string v4, "http"

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_56

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_56

    :cond_2b
    const-string v4, "http2"

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string/jumbo v4, "spdy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "quic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    goto :goto_52

    :cond_45
    const-string/jumbo v4, "tcp"

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 147
    invoke-direct {p0, v0, v2}, Lanet/channel/detect/d;->c(Ljava/lang/String;Lanet/channel/strategy/l$e;)V

    goto :goto_59

    .line 145
    :cond_52
    :goto_52
    invoke-direct {p0, v0, v2}, Lanet/channel/detect/d;->b(Ljava/lang/String;Lanet/channel/strategy/l$e;)V

    goto :goto_59

    .line 143
    :cond_56
    :goto_56
    invoke-direct {p0, v0, v2}, Lanet/channel/detect/d;->a(Ljava/lang/String;Lanet/channel/strategy/l$e;)V

    :cond_59
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_5c
    :goto_5c
    return-void
.end method

.method private a(Ljava/lang/String;Lanet/channel/statist/HorseRaceStat;)V
    .registers 10

    .line 363
    invoke-static {}, Lanet/channel/AwcnConfig;->isPing6Enable()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {p1}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_45

    .line 368
    :cond_d
    :try_start_d
    new-instance v0, Lorg/android/netutil/PingTask;

    const/16 v3, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x3

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    .line 369
    invoke-virtual {v0}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object p1

    .line 370
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/android/netutil/PingResponse;

    if-nez p1, :cond_26

    return-void

    .line 374
    :cond_26
    invoke-virtual {p1}, Lorg/android/netutil/PingResponse;->getSuccessCnt()I

    move-result v0

    iput v0, p2, Lanet/channel/statist/HorseRaceStat;->pingSuccessCount:I

    .line 375
    iget v0, p2, Lanet/channel/statist/HorseRaceStat;->pingSuccessCount:I

    rsub-int/lit8 v0, v0, 0x3

    iput v0, p2, Lanet/channel/statist/HorseRaceStat;->pingTimeoutCount:I

    .line 376
    invoke-virtual {p1}, Lorg/android/netutil/PingResponse;->getLocalIPStr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lanet/channel/statist/HorseRaceStat;->localIP:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_38} :catch_39

    goto :goto_45

    :catch_39
    move-exception p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 378
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "anet.HorseRaceDetector"

    const-string v2, "ping6 task fail."

    invoke-static {v1, v2, p2, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_45
    :goto_45
    return-void
.end method

.method private a(Ljava/lang/String;Lanet/channel/strategy/l$e;)V
    .registers 12

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p2, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget-object v1, v1, Lanet/channel/strategy/l$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "://"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lanet/channel/strategy/l$e;->c:Ljava/lang/String;

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    const/4 v1, 0x2

    .line 164
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "url"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v4, 0x0

    const-string v5, "anet.HorseRaceDetector"

    const-string/jumbo v6, "startShortLinkTask"

    invoke-static {v5, v6, v4, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    new-instance v1, Lanet/channel/request/Request$Builder;

    invoke-direct {v1}, Lanet/channel/request/Request$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lanet/channel/request/Request$Builder;->setUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    const-string v1, "Connection"

    const-string v5, "close"

    .line 167
    invoke-virtual {v0, v1, v5}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p2, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget v1, v1, Lanet/channel/strategy/l$a;->c:I

    .line 168
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setConnectTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p2, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget v1, v1, Lanet/channel/strategy/l$a;->d:I

    .line 169
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setReadTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v2}, Lanet/channel/request/Request$Builder;->setRedirectEnable(Z)Lanet/channel/request/Request$Builder;

    move-result-object v0

    new-instance v1, Lanet/channel/util/j;

    invoke-direct {v1, p1}, Lanet/channel/util/j;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HR"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanet/channel/detect/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setSeq(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v0

    .line 174
    iget-object v1, p2, Lanet/channel/strategy/l$e;->a:Ljava/lang/String;

    iget-object v5, p2, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget v5, v5, Lanet/channel/strategy/l$a;->a:I

    invoke-virtual {v0, v1, v5}, Lanet/channel/request/Request;->setDnsOptimize(Ljava/lang/String;I)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1069
    invoke-static {v0, v4}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/session/b$a;

    move-result-object v0

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 180
    new-instance v1, Lanet/channel/statist/HorseRaceStat;

    invoke-direct {v1, p1, p2}, Lanet/channel/statist/HorseRaceStat;-><init>(Ljava/lang/String;Lanet/channel/strategy/l$e;)V

    .line 181
    iput-wide v7, v1, Lanet/channel/statist/HorseRaceStat;->connTime:J

    .line 182
    iget p1, v0, Lanet/channel/session/b$a;->a:I

    if-gtz p1, :cond_a9

    .line 183
    iget p1, v0, Lanet/channel/session/b$a;->a:I

    iput p1, v1, Lanet/channel/statist/HorseRaceStat;->connErrorCode:I

    goto :goto_bc

    .line 185
    :cond_a9
    iput v3, v1, Lanet/channel/statist/HorseRaceStat;->connRet:I

    .line 186
    iget p1, v0, Lanet/channel/session/b$a;->a:I

    const/16 v4, 0xc8

    if-ne p1, v4, :cond_b2

    move v2, v3

    :cond_b2
    iput v2, v1, Lanet/channel/statist/HorseRaceStat;->reqRet:I

    .line 187
    iget p1, v0, Lanet/channel/session/b$a;->a:I

    iput p1, v1, Lanet/channel/statist/HorseRaceStat;->reqErrorCode:I

    .line 188
    iget-wide v2, v1, Lanet/channel/statist/HorseRaceStat;->connTime:J

    iput-wide v2, v1, Lanet/channel/statist/HorseRaceStat;->reqTime:J

    .line 191
    :goto_bc
    iget-object p1, p2, Lanet/channel/strategy/l$e;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lanet/channel/detect/d;->a(Ljava/lang/String;Lanet/channel/statist/HorseRaceStat;)V

    .line 192
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    invoke-interface {p1, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lanet/channel/strategy/l$e;)V
    .registers 19

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 196
    iget-object v1, v10, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    invoke-static {v1}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/l$a;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v1

    .line 197
    invoke-static {v1}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v2

    if-nez v2, :cond_13

    return-void

    :cond_13
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 202
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v5, "host"

    aput-object v5, v4, v11

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const-string v6, "ip"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v10, Lanet/channel/strategy/l$e;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "port"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, v10, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget v6, v6, Lanet/channel/strategy/l$a;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "protocol"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object v1, v4, v5

    const-string v5, "anet.HorseRaceDetector"

    const-string/jumbo v6, "startLongLinkTask"

    invoke-static {v5, v6, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lanet/channel/detect/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    new-instance v12, Lanet/channel/session/TnetSpdySession;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lanet/channel/entity/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-virtual {v2}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v2

    if-eqz v2, :cond_77

    const-string v2, "https://"

    goto :goto_79

    :cond_77
    const-string v2, "http://"

    :goto_79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v10}, Lanet/channel/detect/d;->a(Lanet/channel/strategy/ConnProtocol;Lanet/channel/strategy/l$e;)Lanet/channel/strategy/IConnStrategy;

    move-result-object v1

    invoke-direct {v4, v2, v6, v1}, Lanet/channel/entity/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V

    invoke-direct {v12, v3, v4}, Lanet/channel/session/TnetSpdySession;-><init>(Landroid/content/Context;Lanet/channel/entity/a;)V

    .line 208
    new-instance v13, Lanet/channel/statist/HorseRaceStat;

    invoke-direct {v13, v0, v10}, Lanet/channel/statist/HorseRaceStat;-><init>(Ljava/lang/String;Lanet/channel/strategy/l$e;)V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v0, 0x101

    .line 210
    new-instance v8, Lanet/channel/detect/h;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v3, v13

    move-wide v4, v14

    move-object/from16 v7, p2

    move-object v11, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lanet/channel/detect/h;-><init>(Lanet/channel/detect/d;Lanet/channel/statist/HorseRaceStat;JLjava/lang/String;Lanet/channel/strategy/l$e;Lanet/channel/session/TnetSpdySession;)V

    invoke-virtual {v12, v0, v11}, Lanet/channel/session/TnetSpdySession;->registerEventcb(ILanet/channel/entity/EventCb;)V

    .line 271
    invoke-virtual {v12}, Lanet/channel/session/TnetSpdySession;->connect()V

    .line 272
    monitor-enter v13

    .line 274
    :try_start_ad
    iget-object v0, v10, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget v0, v0, Lanet/channel/strategy/l$a;->c:I

    if-nez v0, :cond_b6

    const/16 v0, 0x2710

    goto :goto_ba

    :cond_b6
    iget-object v0, v10, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget v0, v0, Lanet/channel/strategy/l$a;->c:I

    :goto_ba
    int-to-long v0, v0

    .line 275
    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 276
    iget-wide v0, v13, Lanet/channel/statist/HorseRaceStat;->connTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_cd

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v14

    iput-wide v0, v13, Lanet/channel/statist/HorseRaceStat;->connTime:J

    .line 280
    :cond_cd
    iget-object v0, v10, Lanet/channel/strategy/l$e;->a:Ljava/lang/String;

    invoke-direct {v9, v0, v13}, Lanet/channel/detect/d;->a(Ljava/lang/String;Lanet/channel/statist/HorseRaceStat;)V

    .line 281
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, v13}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_d9
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_d9} :catch_dc
    .catchall {:try_start_ad .. :try_end_d9} :catchall_da

    goto :goto_dc

    :catchall_da
    move-exception v0

    goto :goto_e2

    .line 284
    :catch_dc
    :goto_dc
    :try_start_dc
    monitor-exit v13
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_da

    const/4 v0, 0x0

    .line 285
    invoke-virtual {v12, v0}, Lanet/channel/session/TnetSpdySession;->close(Z)V

    return-void

    .line 284
    :goto_e2
    :try_start_e2
    monitor-exit v13
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_da

    throw v0
.end method

.method private c(Ljava/lang/String;Lanet/channel/strategy/l$e;)V
    .registers 12

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/detect/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 339
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ip"

    aput-object v3, v1, v2

    iget-object v3, p2, Lanet/channel/strategy/l$e;->a:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string v5, "port"

    aput-object v5, v1, v3

    iget-object v3, p2, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget v3, v3, Lanet/channel/strategy/l$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v1, v5

    const-string v3, "anet.HorseRaceDetector"

    const-string/jumbo v5, "startTcpTask"

    invoke-static {v3, v5, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    new-instance v1, Lanet/channel/statist/HorseRaceStat;

    invoke-direct {v1, p1, p2}, Lanet/channel/statist/HorseRaceStat;-><init>(Ljava/lang/String;Lanet/channel/strategy/l$e;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 344
    :try_start_45
    new-instance p1, Ljava/net/Socket;

    iget-object v7, p2, Lanet/channel/strategy/l$e;->a:Ljava/lang/String;

    iget-object v8, p2, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget v8, v8, Lanet/channel/strategy/l$a;->a:I

    invoke-direct {p1, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 345
    iget-object v7, p2, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget v7, v7, Lanet/channel/strategy/l$a;->c:I

    if-nez v7, :cond_59

    const/16 p2, 0x2710

    goto :goto_5d

    :cond_59
    iget-object p2, p2, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    iget p2, p2, Lanet/channel/strategy/l$a;->c:I

    :goto_5d
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string/jumbo p2, "socket connect success"

    .line 346
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, p2, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iput v4, v1, Lanet/channel/statist/HorseRaceStat;->connRet:I

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    iput-wide v2, v1, Lanet/channel/statist/HorseRaceStat;->connTime:J

    .line 349
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_74} :catch_75

    goto :goto_80

    .line 351
    :catch_75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v5

    iput-wide p1, v1, Lanet/channel/statist/HorseRaceStat;->connTime:J

    const/16 p1, -0x194

    .line 352
    iput p1, v1, Lanet/channel/statist/HorseRaceStat;->connErrorCode:I

    .line 354
    :goto_80
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    invoke-interface {p1, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 7

    const/4 v0, 0x0

    .line 59
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "anet.HorseRaceDetector"

    const-string v4, "network detect thread start"

    invoke-static {v3, v4, v2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :goto_b
    iget-object v1, p0, Lanet/channel/detect/d;->a:Ljava/util/TreeMap;

    monitor-enter v1

    .line 63
    :try_start_e
    invoke-static {}, Lanet/channel/AwcnConfig;->isHorseRaceEnable()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 64
    iget-object v0, p0, Lanet/channel/detect/d;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 65
    monitor-exit v1

    goto :goto_24

    .line 67
    :cond_1b
    iget-object v3, p0, Lanet/channel/detect/d;->a:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    .line 68
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_3b

    if-nez v3, :cond_25

    :goto_24
    return-void

    .line 74
    :cond_25
    :try_start_25
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/l$c;

    .line 75
    invoke-direct {p0, v1}, Lanet/channel/detect/d;->a(Lanet/channel/strategy/l$c;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_b

    :catch_2f
    move-exception v1

    .line 77
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "anet.HorseRaceDetector"

    const-string/jumbo v5, "start hr task failed"

    invoke-static {v4, v5, v2, v1, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_b

    :catchall_3b
    move-exception v0

    .line 68
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public b()V
    .registers 3

    .line 86
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    new-instance v1, Lanet/channel/detect/e;

    invoke-direct {v1, p0}, Lanet/channel/detect/e;-><init>(Lanet/channel/detect/d;)V

    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyInstance;->registerListener(Lanet/channel/strategy/IStrategyListener;)V

    .line 105
    new-instance v0, Lanet/channel/detect/f;

    invoke-direct {v0, p0}, Lanet/channel/detect/f;-><init>(Lanet/channel/detect/d;)V

    invoke-static {v0}, Lanet/channel/util/AppLifecycle;->registerLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V

    return-void
.end method
