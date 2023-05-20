.class public abstract Lanet/channel/Session;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/Session$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lanet/channel/Session;",
        ">;"
    }
.end annotation


# static fields
.field static v:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public a:Landroid/content/Context;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/entity/EventCb;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Lanet/channel/entity/ConnType;

.field public k:Lanet/channel/strategy/IConnStrategy;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:I

.field protected o:Ljava/lang/Runnable;

.field public final p:Ljava/lang/String;

.field public final q:Lanet/channel/statist/SessionStatistic;

.field public r:I

.field public s:I

.field public t:Z

.field protected u:Z

.field private w:Z

.field private x:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 258
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lanet/channel/Session;->v:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lanet/channel/entity/a;)V
    .registers 8

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/Session;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lanet/channel/Session;->w:Z

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lanet/channel/Session;->l:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lanet/channel/Session;->m:Z

    const/4 v2, 0x6

    .line 64
    iput v2, p0, Lanet/channel/Session;->n:I

    .line 73
    iput-boolean v0, p0, Lanet/channel/Session;->t:Z

    const/4 v2, 0x1

    .line 74
    iput-boolean v2, p0, Lanet/channel/Session;->u:Z

    .line 76
    iput-object v1, p0, Lanet/channel/Session;->y:Ljava/util/List;

    const-wide/16 v3, 0x0

    .line 77
    iput-wide v3, p0, Lanet/channel/Session;->z:J

    .line 109
    iput-object p1, p0, Lanet/channel/Session;->a:Landroid/content/Context;

    .line 110
    invoke-virtual {p2}, Lanet/channel/entity/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->e:Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lanet/channel/Session;->e:Ljava/lang/String;

    iput-object p1, p0, Lanet/channel/Session;->f:Ljava/lang/String;

    .line 112
    invoke-virtual {p2}, Lanet/channel/entity/a;->b()I

    move-result p1

    iput p1, p0, Lanet/channel/Session;->g:I

    .line 113
    invoke-virtual {p2}, Lanet/channel/entity/a;->c()Lanet/channel/entity/ConnType;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->j:Lanet/channel/entity/ConnType;

    .line 114
    invoke-virtual {p2}, Lanet/channel/entity/a;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    .line 115
    iget-object p1, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->d:Ljava/lang/String;

    .line 116
    invoke-virtual {p2}, Lanet/channel/entity/a;->e()I

    move-result p1

    iput p1, p0, Lanet/channel/Session;->s:I

    .line 117
    invoke-virtual {p2}, Lanet/channel/entity/a;->d()I

    move-result p1

    iput p1, p0, Lanet/channel/Session;->r:I

    .line 118
    iget-object p1, p2, Lanet/channel/entity/a;->a:Lanet/channel/strategy/IConnStrategy;

    iput-object p1, p0, Lanet/channel/Session;->k:Lanet/channel/strategy/IConnStrategy;

    .line 119
    iget-object p1, p0, Lanet/channel/Session;->k:Lanet/channel/strategy/IConnStrategy;

    if-eqz p1, :cond_6a

    invoke-interface {p1}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6a

    move v0, v2

    :cond_6a
    iput-boolean v0, p0, Lanet/channel/Session;->m:Z

    .line 120
    invoke-virtual {p2}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->p:Ljava/lang/String;

    .line 121
    new-instance p1, Lanet/channel/statist/SessionStatistic;

    invoke-direct {p1, p2}, Lanet/channel/statist/SessionStatistic;-><init>(Lanet/channel/entity/a;)V

    iput-object p1, p0, Lanet/channel/Session;->q:Lanet/channel/statist/SessionStatistic;

    .line 122
    iget-object p1, p0, Lanet/channel/Session;->q:Lanet/channel/statist/SessionStatistic;

    iget-object p2, p0, Lanet/channel/Session;->d:Ljava/lang/String;

    iput-object p2, p1, Lanet/channel/statist/SessionStatistic;->host:Ljava/lang/String;

    return-void
.end method

.method public static configTnetALog(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 6

    .line 147
    sget-object v0, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v1, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {p0, v0, v1}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 148
    invoke-static {}, Lorg/android/spdy/SpdyAgent;->checkLoadSucc()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lorg/android/spdy/SpdyAgent;->configLogFile(Ljava/lang/String;II)I

    goto :goto_2a

    :cond_14
    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 151
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {}, Lorg/android/spdy/SpdyAgent;->checkLoadSucc()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "agent null or configTnetALog load so fail!!!"

    const-string p3, "loadso"

    invoke-static {p2, p0, p3, p1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2a
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .line 340
    iget-object v0, p0, Lanet/channel/Session;->o:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 342
    iget-object v0, p0, Lanet/channel/Session;->x:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 343
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_c
    return-void
.end method

.method public checkAvailable()V
    .registers 2

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0}, Lanet/channel/Session;->ping(Z)V

    return-void
.end method

.method public abstract close()V
.end method

.method public close(Z)V
    .registers 2

    .line 168
    iput-boolean p1, p0, Lanet/channel/Session;->t:Z

    .line 169
    invoke-virtual {p0}, Lanet/channel/Session;->close()V

    return-void
.end method

.method public compareTo(Lanet/channel/Session;)I
    .registers 3

    .line 100
    iget-object v0, p0, Lanet/channel/Session;->j:Lanet/channel/entity/ConnType;

    iget-object p1, p1, Lanet/channel/Session;->j:Lanet/channel/entity/ConnType;

    invoke-static {v0, p1}, Lanet/channel/entity/ConnType;->compare(Lanet/channel/entity/ConnType;Lanet/channel/entity/ConnType;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 46
    check-cast p1, Lanet/channel/Session;

    invoke-virtual {p0, p1}, Lanet/channel/Session;->compareTo(Lanet/channel/Session;)I

    move-result p1

    return p1
.end method

.method public connect()V
    .registers 1

    return-void
.end method

.method public getConnStrategy()Lanet/channel/strategy/IConnStrategy;
    .registers 2

    .line 246
    iget-object v0, p0, Lanet/channel/Session;->k:Lanet/channel/strategy/IConnStrategy;

    return-object v0
.end method

.method public getConnType()Lanet/channel/entity/ConnType;
    .registers 2

    .line 234
    iget-object v0, p0, Lanet/channel/Session;->j:Lanet/channel/entity/ConnType;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Lanet/channel/Session;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 230
    iget v0, p0, Lanet/channel/Session;->g:I

    return v0
.end method

.method public getRealHost()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Lanet/channel/Session;->d:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRecvTimeOutRunnable()Ljava/lang/Runnable;
.end method

.method public getUnit()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Lanet/channel/Session;->l:Ljava/lang/String;

    return-object v0
.end method

.method public handleCallbacks(ILanet/channel/entity/b;)V
    .registers 5

    .line 260
    sget-object v0, Lanet/channel/Session;->v:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lanet/channel/b;

    invoke-direct {v1, p0, p1, p2}, Lanet/channel/b;-><init>(Lanet/channel/Session;ILanet/channel/entity/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handleResponseCode(Lanet/channel/request/Request;I)V
    .registers 9

    .line 356
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "x-pv"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/16 v0, 0x1f4

    if-lt p2, v0, :cond_72

    const/16 v0, 0x258

    if-ge p2, v0, :cond_72

    .line 362
    monitor-enter p0

    .line 363
    :try_start_17
    iget-object p2, p0, Lanet/channel/Session;->y:Ljava/util/List;

    if-nez p2, :cond_22

    .line 364
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lanet/channel/Session;->y:Ljava/util/List;

    .line 367
    :cond_22
    iget-object p2, p0, Lanet/channel/Session;->y:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x5

    if-ge p2, v0, :cond_39

    .line 368
    iget-object p1, p0, Lanet/channel/Session;->y:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 370
    :cond_39
    iget-object p2, p0, Lanet/channel/Session;->y:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0xea60

    cmp-long p2, v0, v4

    if-gtz p2, :cond_64

    .line 373
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p2

    invoke-virtual {p1}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lanet/channel/strategy/IStrategyInstance;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lanet/channel/Session;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_6d

    .line 376
    :cond_64
    iget-object p1, p0, Lanet/channel/Session;->y:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :goto_6d
    monitor-exit p0

    goto :goto_72

    :catchall_6f
    move-exception p1

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_17 .. :try_end_71} :catchall_6f

    throw p1

    :cond_72
    :goto_72
    return-void
.end method

.method public handleResponseHeaders(Lanet/channel/request/Request;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/request/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "x-switch-unit"

    .line 385
    :try_start_3
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 386
    invoke-static {p2, v0}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 387
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p2, 0x0

    .line 390
    :cond_14
    iget-object v0, p0, Lanet/channel/Session;->l:Ljava/lang/String;

    invoke-static {v0, p2}, Lanet/channel/util/StringUtils;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_38

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 392
    iget-wide v2, p0, Lanet/channel/Session;->z:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long p2, v2, v4

    if-lez p2, :cond_38

    .line 393
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p2

    invoke-virtual {p1}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lanet/channel/strategy/IStrategyInstance;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 394
    iput-wide v0, p0, Lanet/channel/Session;->z:J
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    return-void
.end method

.method public abstract isAvailable()Z
.end method

.method public declared-synchronized notifyStatus(ILanet/channel/entity/b;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v0, "awcn.Session"

    const-string v1, "notifyStatus"

    .line 290
    iget-object v2, p0, Lanet/channel/Session;->p:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Lanet/channel/Session$a;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget v0, p0, Lanet/channel/Session;->n:I

    if-ne p1, v0, :cond_2b

    const-string p1, "awcn.Session"

    const-string p2, "ignore notifyStatus"

    .line 292
    iget-object v0, p0, Lanet/channel/Session;->p:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_61

    .line 293
    monitor-exit p0

    return-void

    .line 295
    :cond_2b
    :try_start_2b
    iput p1, p0, Lanet/channel/Session;->n:I

    .line 296
    iget p1, p0, Lanet/channel/Session;->n:I

    packed-switch p1, :pswitch_data_64

    goto :goto_5f

    .line 310
    :pswitch_33
    invoke-virtual {p0}, Lanet/channel/Session;->onDisconnect()V

    .line 311
    iget-boolean p1, p0, Lanet/channel/Session;->w:Z

    if-nez p1, :cond_5f

    .line 312
    invoke-virtual {p0, v3, p2}, Lanet/channel/Session;->handleCallbacks(ILanet/channel/entity/b;)V

    goto :goto_5f

    :pswitch_3e
    const/16 p1, 0x400

    .line 322
    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->handleCallbacks(ILanet/channel/entity/b;)V

    goto :goto_5f

    .line 318
    :pswitch_44
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p1

    iget-object v0, p0, Lanet/channel/Session;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lanet/channel/strategy/IStrategyInstance;->getUnitByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->l:Ljava/lang/String;

    const/16 p1, 0x200

    .line 319
    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->handleCallbacks(ILanet/channel/entity/b;)V

    goto :goto_5f

    :pswitch_56
    const/16 p1, 0x100

    .line 306
    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->handleCallbacks(ILanet/channel/entity/b;)V

    goto :goto_5f

    .line 300
    :pswitch_5c
    invoke-virtual {p0, v7, p2}, Lanet/channel/Session;->handleCallbacks(ILanet/channel/entity/b;)V
    :try_end_5f
    .catchall {:try_start_2b .. :try_end_5f} :catchall_61

    .line 327
    :cond_5f
    :goto_5f
    :pswitch_5f
    monitor-exit p0

    return-void

    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_5f
        :pswitch_56
        :pswitch_5f
        :pswitch_44
        :pswitch_3e
        :pswitch_33
        :pswitch_5f
    .end packed-switch
.end method

.method public onDisconnect()V
    .registers 1

    return-void
.end method

.method public ping(Z)V
    .registers 2

    return-void
.end method

.method public ping(ZI)V
    .registers 3

    return-void
.end method

.method public registerEventcb(ILanet/channel/entity/EventCb;)V
    .registers 4

    .line 206
    iget-object v0, p0, Lanet/channel/Session;->b:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public abstract request(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/request/Cancelable;
.end method

.method public sendCustomFrame(I[BI)V
    .registers 4

    return-void
.end method

.method public setPingTimeout(I)V
    .registers 5

    .line 330
    iget-object v0, p0, Lanet/channel/Session;->o:Ljava/lang/Runnable;

    if-nez v0, :cond_a

    .line 331
    invoke-virtual {p0}, Lanet/channel/Session;->getRecvTimeOutRunnable()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->o:Ljava/lang/Runnable;

    .line 333
    :cond_a
    invoke-virtual {p0}, Lanet/channel/Session;->a()V

    .line 334
    iget-object v0, p0, Lanet/channel/Session;->o:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    int-to-long v1, p1

    .line 335
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->x:Ljava/util/concurrent/Future;

    :cond_1a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session@["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lanet/channel/Session;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/Session;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
