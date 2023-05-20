.class Lanet/channel/SessionRequest$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/SessionRequest$IConnCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lanet/channel/SessionRequest;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanet/channel/entity/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lanet/channel/entity/a;


# direct methods
.method constructor <init>(Lanet/channel/SessionRequest;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lanet/channel/entity/a;",
            ">;",
            "Lanet/channel/entity/a;",
            ")V"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 293
    iput-boolean p1, p0, Lanet/channel/SessionRequest$a;->a:Z

    .line 288
    iput-object p2, p0, Lanet/channel/SessionRequest$a;->c:Landroid/content/Context;

    .line 289
    iput-object p3, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    .line 290
    iput-object p4, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    return-void
.end method

.method static synthetic a(Lanet/channel/SessionRequest$a;)Landroid/content/Context;
    .registers 1

    .line 281
    iget-object p0, p0, Lanet/channel/SessionRequest$a;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onDisConnect(Lanet/channel/Session;JI)V
    .registers 11

    .line 410
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result p2

    .line 411
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {p3}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x8

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "session"

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const/4 v2, 0x1

    aput-object p1, p4, v2

    const/4 v3, 0x2

    const-string v4, "host"

    aput-object v4, p4, v3

    iget-object v4, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v4}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, p4, v5

    const/4 v4, 0x4

    const-string v5, "appIsBg"

    aput-object v5, p4, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, p4, v5

    const/4 v4, 0x6

    const-string v5, "isHandleFinish"

    aput-object v5, p4, v4

    iget-boolean v4, p0, Lanet/channel/SessionRequest$a;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, p4, v5

    const-string v4, "awcn.SessionRequest"

    const-string v5, "Connect Disconnect"

    invoke-static {v4, v5, p3, p4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 21060
    iget-object p3, p3, Lanet/channel/SessionRequest;->b:Lanet/channel/e;

    .line 412
    iget-object p4, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {p3, p4, p1}, Lanet/channel/e;->b(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    .line 414
    iget-boolean p3, p0, Lanet/channel/SessionRequest$a;->a:Z

    if-eqz p3, :cond_53

    return-void

    .line 417
    :cond_53
    iput-boolean v2, p0, Lanet/channel/SessionRequest$a;->a:Z

    .line 419
    iget-boolean p3, p1, Lanet/channel/Session;->t:Z

    if-nez p3, :cond_5a

    return-void

    :cond_5a
    if-eqz p2, :cond_82

    .line 422
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 22060
    iget-object p2, p2, Lanet/channel/SessionRequest;->c:Lanet/channel/SessionInfo;

    if-eqz p2, :cond_70

    .line 422
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 23060
    iget-object p2, p2, Lanet/channel/SessionRequest;->c:Lanet/channel/SessionInfo;

    .line 422
    iget-boolean p2, p2, Lanet/channel/SessionInfo;->isAccs:Z

    if-eqz p2, :cond_70

    invoke-static {}, Lanet/channel/AwcnConfig;->isAccsSessionCreateForbiddenInBg()Z

    move-result p2

    if-eqz p2, :cond_82

    .line 423
    :cond_70
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {p2}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v0, p3, v1

    aput-object p1, p3, v2

    const-string p1, "[onDisConnect]app background, don\'t Recreate"

    invoke-static {v4, p1, p2, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 426
    :cond_82
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result p2

    if-nez p2, :cond_9a

    .line 427
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {p2}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v0, p3, v1

    aput-object p1, p3, v2

    const-string p1, "[onDisConnect]no network, don\'t Recreate"

    invoke-static {v4, p1, p2, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_9a
    :try_start_9a
    const-string p2, "session disconnected, try to recreate session"

    .line 431
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {p3}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {v4, p2, p3, p4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x2710

    .line 433
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 24060
    iget-object p3, p3, Lanet/channel/SessionRequest;->c:Lanet/channel/SessionInfo;

    if-eqz p3, :cond_bb

    .line 433
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 25060
    iget-object p3, p3, Lanet/channel/SessionRequest;->c:Lanet/channel/SessionInfo;

    .line 433
    iget-boolean p3, p3, Lanet/channel/SessionInfo;->isAccs:Z

    if-eqz p3, :cond_bb

    .line 434
    invoke-static {}, Lanet/channel/AwcnConfig;->getAccsReconnectionDelayPeriod()I

    move-result p2

    .line 436
    :cond_bb
    new-instance p3, Lanet/channel/i;

    invoke-direct {p3, p0, p1}, Lanet/channel/i;-><init>(Lanet/channel/SessionRequest$a;Lanet/channel/Session;)V

    .line 444
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double p1, p2

    mul-double/2addr v0, p1

    double-to-long p1, v0

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 436
    invoke-static {p3, p1, p2, p4}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_cc} :catch_cc

    :catch_cc
    return-void
.end method

.method public onFailed(Lanet/channel/Session;JII)V
    .registers 11

    const/4 p2, 0x1

    .line 297
    invoke-static {p2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_3a

    .line 298
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {p3}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "session"

    aput-object v3, v2, v1

    aput-object p1, v2, p2

    const-string v3, "host"

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v4, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v4}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "isHandleFinish"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, p0, Lanet/channel/SessionRequest$a;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "awcn.SessionRequest"

    const-string v4, "Connect failed"

    invoke-static {v3, v4, p3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :cond_3a
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-boolean p3, p3, Lanet/channel/SessionRequest;->f:Z

    if-eqz p3, :cond_45

    .line 302
    iget-object p1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iput-boolean v1, p1, Lanet/channel/SessionRequest;->f:Z

    return-void

    .line 306
    :cond_45
    iget-boolean p3, p0, Lanet/channel/SessionRequest$a;->a:Z

    if-eqz p3, :cond_4a

    return-void

    .line 309
    :cond_4a
    iput-boolean p2, p0, Lanet/channel/SessionRequest$a;->a:Z

    .line 311
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 1060
    iget-object p3, p3, Lanet/channel/SessionRequest;->b:Lanet/channel/e;

    .line 311
    iget-object v2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {p3, v2, p1}, Lanet/channel/e;->b(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    .line 313
    iget-boolean p3, p1, Lanet/channel/Session;->u:Z

    if-eqz p3, :cond_160

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_160

    iget-object p3, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_69

    goto/16 :goto_160

    .line 331
    :cond_69
    invoke-static {p2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p3

    if-eqz p3, :cond_8b

    .line 332
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {p3}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "host"

    aput-object v2, v0, v1

    iget-object v2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v2}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p2

    const-string v2, "awcn.SessionRequest"

    const-string/jumbo v3, "use next connInfo to create session"

    invoke-static {v2, v3, p3, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_8b
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    iget p3, p3, Lanet/channel/entity/a;->b:I

    iget-object v0, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    iget v0, v0, Lanet/channel/entity/a;->c:I

    if-ne p3, v0, :cond_c3

    const/16 p3, -0x7d3

    if-eq p5, p3, :cond_9d

    const/16 p3, -0x96a

    if-ne p5, p3, :cond_c3

    .line 338
    :cond_9d
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p3

    .line 339
    :cond_a3
    :goto_a3
    invoke-interface {p3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 340
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/entity/a;

    .line 341
    invoke-virtual {p1}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lanet/channel/entity/a;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 342
    invoke-interface {p3}, Ljava/util/ListIterator;->remove()V

    goto :goto_a3

    .line 348
    :cond_c3
    invoke-virtual {p1}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_ef

    .line 349
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p3

    .line 350
    :cond_d3
    :goto_d3
    invoke-interface {p3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 351
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/entity/a;

    .line 352
    iget-object v0, v0, Lanet/channel/entity/a;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 353
    invoke-interface {p3}, Ljava/util/ListIterator;->remove()V

    goto :goto_d3

    .line 359
    :cond_ef
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_145

    .line 360
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 7060
    invoke-virtual {p3}, Lanet/channel/SessionRequest;->c()V

    .line 361
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 8060
    invoke-virtual {p3, p1, p4, p5}, Lanet/channel/SessionRequest;->a(Lanet/channel/Session;II)V

    .line 362
    iget-object p1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 9060
    iget-object p1, p1, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 362
    monitor-enter p1

    .line 363
    :try_start_106
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 10060
    iget-object p3, p3, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 363
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_112
    :goto_112
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_139

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 364
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lanet/channel/SessionRequest$c;

    .line 365
    iget-object v0, p5, Lanet/channel/SessionRequest$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 366
    invoke-static {p5}, Lanet/channel/thread/ThreadPoolExecutorFactory;->removeScheduleTask(Ljava/lang/Runnable;)V

    .line 367
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lanet/channel/SessionGetCallback;

    invoke-interface {p4}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V

    goto :goto_112

    .line 370
    :cond_139
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 11060
    iget-object p2, p2, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 370
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 371
    monitor-exit p1

    return-void

    :catchall_142
    move-exception p2

    monitor-exit p1
    :try_end_144
    .catchall {:try_start_106 .. :try_end_144} :catchall_142

    throw p2

    .line 375
    :cond_145
    iget-object p1, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/entity/a;

    .line 376
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-object p3, p0, Lanet/channel/SessionRequest$a;->c:Landroid/content/Context;

    new-instance p4, Lanet/channel/SessionRequest$a;

    iget-object p5, p0, Lanet/channel/SessionRequest$a;->d:Ljava/util/List;

    invoke-direct {p4, p2, p3, p5, p1}, Lanet/channel/SessionRequest$a;-><init>(Lanet/channel/SessionRequest;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/a;)V

    invoke-virtual {p1}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p3, p1, p4, p5}, Lanet/channel/SessionRequest;->a(Lanet/channel/SessionRequest;Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V

    return-void

    .line 314
    :cond_160
    :goto_160
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 2060
    invoke-virtual {p3}, Lanet/channel/SessionRequest;->c()V

    .line 316
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 3060
    invoke-virtual {p3, p1, p4, p5}, Lanet/channel/SessionRequest;->a(Lanet/channel/Session;II)V

    .line 318
    iget-object p1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 4060
    iget-object p1, p1, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 318
    monitor-enter p1

    .line 319
    :try_start_16f
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 5060
    iget-object p3, p3, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 319
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_17b
    :goto_17b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1a2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 320
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lanet/channel/SessionRequest$c;

    .line 321
    iget-object v0, p5, Lanet/channel/SessionRequest$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 322
    invoke-static {p5}, Lanet/channel/thread/ThreadPoolExecutorFactory;->removeScheduleTask(Ljava/lang/Runnable;)V

    .line 323
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lanet/channel/SessionGetCallback;

    invoke-interface {p4}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V

    goto :goto_17b

    .line 326
    :cond_1a2
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 6060
    iget-object p2, p2, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 326
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 327
    monitor-exit p1

    return-void

    :catchall_1ab
    move-exception p2

    monitor-exit p1
    :try_end_1ad
    .catchall {:try_start_16f .. :try_end_1ad} :catchall_1ab

    throw p2
.end method

.method public onSuccess(Lanet/channel/Session;J)V
    .registers 9

    .line 381
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {p2}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "session"

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-object p1, p3, v1

    const/4 v2, 0x2

    const-string v3, "host"

    aput-object v3, p3, v2

    iget-object v2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {v2}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, p3, v3

    const-string v2, "awcn.SessionRequest"

    const-string v3, "Connect Success"

    invoke-static {v2, v3, p2, p3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :try_start_26
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iget-boolean p2, p2, Lanet/channel/SessionRequest;->f:Z

    if-eqz p2, :cond_39

    .line 384
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    iput-boolean v0, p2, Lanet/channel/SessionRequest;->f:Z

    .line 385
    invoke-virtual {p1, v0}, Lanet/channel/Session;->close(Z)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_92
    .catchall {:try_start_26 .. :try_end_33} :catchall_90

    .line 404
    iget-object p1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 12060
    invoke-virtual {p1}, Lanet/channel/SessionRequest;->c()V

    return-void

    .line 389
    :cond_39
    :try_start_39
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 13060
    iget-object p2, p2, Lanet/channel/SessionRequest;->b:Lanet/channel/e;

    .line 389
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    invoke-virtual {p2, p3, p1}, Lanet/channel/e;->a(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    .line 390
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 14060
    invoke-virtual {p2, p1}, Lanet/channel/SessionRequest;->a(Lanet/channel/Session;)V

    .line 391
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 15060
    iget-object p2, p2, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 391
    monitor-enter p2
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4c} :catch_92
    .catchall {:try_start_39 .. :try_end_4c} :catchall_90

    .line 392
    :try_start_4c
    iget-object p3, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 16060
    iget-object p3, p3, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 392
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_58
    :goto_58
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 393
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/SessionRequest$c;

    .line 394
    iget-object v4, v3, Lanet/channel/SessionRequest$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 395
    invoke-static {v3}, Lanet/channel/thread/ThreadPoolExecutorFactory;->removeScheduleTask(Ljava/lang/Runnable;)V

    .line 396
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/SessionGetCallback;

    invoke-interface {v2, p1}, Lanet/channel/SessionGetCallback;->onSessionGetSuccess(Lanet/channel/Session;)V

    goto :goto_58

    .line 399
    :cond_7f
    iget-object p1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 17060
    iget-object p1, p1, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 399
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 400
    monitor-exit p2
    :try_end_87
    .catchall {:try_start_4c .. :try_end_87} :catchall_8d

    .line 404
    iget-object p1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 18060
    invoke-virtual {p1}, Lanet/channel/SessionRequest;->c()V

    goto :goto_a7

    :catchall_8d
    move-exception p1

    .line 400
    :try_start_8e
    monitor-exit p2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw p1
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_90} :catch_92
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    :catchall_90
    move-exception p1

    goto :goto_a8

    :catch_92
    move-exception p1

    :try_start_93
    const-string p2, "awcn.SessionRequest"

    const-string p3, "[onSuccess]:"

    .line 402
    iget-object v1, p0, Lanet/channel/SessionRequest$a;->e:Lanet/channel/entity/a;

    invoke-virtual {v1}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, v1, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_a2
    .catchall {:try_start_93 .. :try_end_a2} :catchall_90

    .line 404
    iget-object p1, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 19060
    invoke-virtual {p1}, Lanet/channel/SessionRequest;->c()V

    :goto_a7
    return-void

    .line 404
    :goto_a8
    iget-object p2, p0, Lanet/channel/SessionRequest$a;->b:Lanet/channel/SessionRequest;

    .line 20060
    invoke-virtual {p2}, Lanet/channel/SessionRequest;->c()V

    .line 405
    throw p1
.end method
