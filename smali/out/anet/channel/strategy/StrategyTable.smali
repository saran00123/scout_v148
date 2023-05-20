.class Lanet/channel/strategy/StrategyTable;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyTable$HostLruCache;
    }
.end annotation


# static fields
.field protected static e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lanet/channel/strategy/StrategyCollection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field protected volatile b:Ljava/lang/String;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected transient d:Z

.field private f:Lanet/channel/strategy/StrategyTable$HostLruCache;

.field private volatile transient g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Lanet/channel/strategy/o;

    invoke-direct {v0}, Lanet/channel/strategy/o;-><init>()V

    sput-object v0, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyTable;->d:Z

    .line 91
    iput-object p1, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyTable;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 222
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 223
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-direct {p0, v0}, Lanet/channel/strategy/StrategyTable;->a(Ljava/util/Set;)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6c

    .line 247
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6c

    .line 251
    :cond_9
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-wide v0, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1d

    :cond_17
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 252
    :cond_1d
    iget-object p1, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "awcn.StrategyTable"

    const-string v2, "app in background or no network"

    invoke-static {v1, v2, p1, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 256
    :cond_2a
    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->getAmdcLimitLevel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_32

    return-void

    .line 261
    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 262
    iget-object v3, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v3

    .line 263
    :try_start_39
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 264
    iget-object v6, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v6, v5}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lanet/channel/strategy/StrategyCollection;

    if-eqz v5, :cond_3d

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v1

    .line 266
    iput-wide v6, v5, Lanet/channel/strategy/StrategyCollection;->b:J

    goto :goto_3d

    .line 269
    :cond_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_69

    if-nez v0, :cond_5f

    .line 272
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->b(Ljava/util/Set;)V

    .line 275
    :cond_5f
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    iget v1, p0, Lanet/channel/strategy/StrategyTable;->g:I

    invoke-virtual {v0, p1, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->sendAmdcRequest(Ljava/util/Set;I)V

    return-void

    :catchall_69
    move-exception p1

    .line 269
    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p1

    :cond_6c
    :goto_6c
    return-void
.end method

.method private b()V
    .registers 5

    .line 96
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->isInitHostsChanged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 100
    :cond_d
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInitHosts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    new-instance v3, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v3, v1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lanet/channel/strategy/StrategyTable$HostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_30
    return-void
.end method

.method private b(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lanet/channel/strategy/StrategyTable;->e:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 280
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v1

    .line 281
    :try_start_a
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyTable$HostLruCache;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 282
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_42

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 284
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 285
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/StrategyCollection;

    .line 287
    invoke-virtual {v3}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v5, 0x28

    if-ge v4, v5, :cond_41

    const-wide/16 v4, 0x7530

    add-long/2addr v4, v1

    .line 288
    iput-wide v4, v3, Lanet/channel/strategy/StrategyCollection;->b:J

    .line 289
    iget-object v3, v3, Lanet/channel/strategy/StrategyCollection;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_41
    return-void

    :catchall_42
    move-exception p1

    .line 282
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method private c()V
    .registers 7

    .line 298
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->isInitHostsChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_4f

    .line 301
    :try_start_10
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInitHosts()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v4, v3}, Lanet/channel/strategy/StrategyTable$HostLruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 303
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    new-instance v5, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v5, v3}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lanet/channel/strategy/StrategyTable$HostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_41

    .line 305
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 307
    :cond_41
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 310
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_4c

    if-eqz v0, :cond_5c

    .line 312
    :try_start_48
    invoke-direct {p0, v0}, Lanet/channel/strategy/StrategyTable;->a(Ljava/util/Set;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4f

    goto :goto_5c

    :catchall_4c
    move-exception v0

    .line 310
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception v0

    .line 316
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "awcn.StrategyTable"

    const-string v4, "checkInitHost failed"

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 6

    .line 106
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    if-nez v0, :cond_10

    .line 107
    new-instance v0, Lanet/channel/strategy/StrategyTable$HostLruCache;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyTable$HostLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    .line 108
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->b()V

    .line 110
    :cond_10
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyTable$HostLruCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    .line 111
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->checkInit()V

    goto :goto_1a

    :cond_2a
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 114
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "size"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v4}, Lanet/channel/strategy/StrategyTable$HostLruCache;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "awcn.StrategyTable"

    const-string/jumbo v4, "strategy map"

    invoke-static {v3, v4, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_51

    :cond_50
    const/4 v2, -0x1

    :goto_51
    iput v2, p0, Lanet/channel/strategy/StrategyTable;->g:I

    .line 118
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->c:Ljava/util/Map;

    if-nez v0, :cond_5e

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->c:Ljava/util/Map;

    :cond_5e
    return-void
.end method

.method a(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .registers 13

    const/4 v0, 0x1

    .line 324
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_29

    const/4 v1, 0x6

    .line 325
    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "Host"

    aput-object v7, v1, v5

    aput-object p1, v1, v0

    const-string v7, "IConnStrategy"

    aput-object v7, v1, v4

    aput-object p2, v1, v3

    const-string v7, "ConnEvent"

    aput-object v7, v1, v2

    const/4 v7, 0x5

    aput-object p3, v1, v7

    const-string v7, "awcn.StrategyTable"

    const-string v8, "[notifyConnEvent]"

    invoke-static {v7, v8, v6, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :cond_29
    invoke-interface {p2}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v1

    iget-object v1, v1, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v7, "http3"

    .line 330
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    const-string v7, "http3plain"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 331
    :cond_3f
    iget-boolean v1, p3, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    invoke-static {v1}, Lanet/channel/e/a;->a(Z)V

    .line 332
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v7, "uniqueId"

    aput-object v7, v1, v5

    iget-object v7, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    aput-object v7, v1, v0

    const-string v7, "enable"

    aput-object v7, v1, v4

    iget-boolean v7, p3, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v1, v3

    const-string v7, "awcn.StrategyTable"

    const-string v8, "enable http3"

    invoke-static {v7, v8, v6, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    :cond_62
    iget-boolean v1, p3, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    if-nez v1, :cond_95

    invoke-interface {p2}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 336
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->c:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "uniqueId"

    aput-object v2, v1, v5

    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "host"

    aput-object v0, v1, v4

    aput-object p1, v1, v3

    const-string v0, "awcn.StrategyTable"

    const-string v2, "disable ipv6"

    invoke-static {v0, v2, v6, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    :cond_95
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0

    .line 342
    :try_start_98
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/StrategyCollection;

    .line 343
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_a7

    if-eqz p1, :cond_a6

    .line 345
    invoke-virtual {p1, p2, p3}, Lanet/channel/strategy/StrategyCollection;->notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    :cond_a6
    return-void

    :catchall_a7
    move-exception p1

    .line 343
    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw p1
.end method

.method protected a(Ljava/lang/String;Z)V
    .registers 9

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 233
    :cond_7
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0

    .line 234
    :try_start_a
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    if-nez v1, :cond_1e

    .line 236
    new-instance v1, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v1, p1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v2, p1, v1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_39

    if-nez p2, :cond_35

    .line 241
    iget-wide v2, v1, Lanet/channel/strategy/StrategyCollection;->b:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_35

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->getAmdcLimitLevel()I

    move-result p2

    if-nez p2, :cond_38

    .line 242
    :cond_35
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;)V

    :cond_38
    return-void

    :catchall_39
    move-exception p1

    .line 239
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method a(Ljava/lang/String;J)Z
    .registers 8

    .line 350
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 353
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1f

    .line 354
    iget-object p2, p0, Lanet/channel/strategy/StrategyTable;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1f
    const/4 p1, 0x1

    return p1
.end method

.method public getCnameByHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 153
    :cond_8
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0

    .line 154
    :try_start_b
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v2, p1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/StrategyCollection;

    .line 155
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_2a

    if-eqz v2, :cond_25

    .line 156
    invoke-virtual {v2}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->getAmdcLimitLevel()I

    move-result v0

    if-nez v0, :cond_25

    .line 157
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;)V

    :cond_25
    if-eqz v2, :cond_29

    .line 160
    iget-object v1, v2, Lanet/channel/strategy/StrategyCollection;->c:Ljava/lang/String;

    :cond_29
    return-object v1

    :catchall_2a
    move-exception p1

    .line 155
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public queryByHost(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-static {p1}, Lanet/channel/strategy/utils/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_47

    .line 132
    :cond_d
    invoke-direct {p0}, Lanet/channel/strategy/StrategyTable;->c()V

    .line 135
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0

    .line 136
    :try_start_13
    iget-object v1, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyCollection;

    if-nez v1, :cond_27

    .line 138
    new-instance v1, Lanet/channel/strategy/StrategyCollection;

    invoke-direct {v1, p1}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v2, p1, v1}, Lanet/channel/strategy/StrategyTable$HostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_44

    .line 142
    iget-wide v2, v1, Lanet/channel/strategy/StrategyCollection;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3c

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->getAmdcLimitLevel()I

    move-result v0

    if-nez v0, :cond_3f

    .line 143
    :cond_3c
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;)V

    .line 145
    :cond_3f
    invoke-virtual {v1}, Lanet/channel/strategy/StrategyCollection;->queryStrategyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_44
    move-exception p1

    .line 141
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1

    .line 129
    :cond_47
    :goto_47
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public update(Lanet/channel/strategy/l$d;)V
    .registers 9

    .line 168
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "awcn.StrategyTable"

    const-string/jumbo v4, "update strategyTable with httpDns response"

    invoke-static {v3, v4, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :try_start_d
    iget-object v0, p1, Lanet/channel/strategy/l$d;->a:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/strategy/StrategyTable;->b:Ljava/lang/String;

    .line 171
    iget v0, p1, Lanet/channel/strategy/l$d;->f:I

    iput v0, p0, Lanet/channel/strategy/StrategyTable;->g:I

    .line 172
    iget-object p1, p1, Lanet/channel/strategy/l$d;->b:[Lanet/channel/strategy/l$b;

    if-nez p1, :cond_1a

    return-void

    .line 177
    :cond_1a
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1d} :catch_5b

    move v2, v1

    .line 178
    :goto_1e
    :try_start_1e
    array-length v3, p1

    if-ge v2, v3, :cond_56

    .line 179
    aget-object v3, p1, v2

    if-eqz v3, :cond_53

    .line 180
    iget-object v4, v3, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    if-nez v4, :cond_2a

    goto :goto_53

    .line 184
    :cond_2a
    iget-boolean v4, v3, Lanet/channel/strategy/l$b;->j:Z

    if-eqz v4, :cond_36

    .line 185
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    iget-object v3, v3, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lanet/channel/strategy/StrategyTable$HostLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 189
    :cond_36
    iget-object v4, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    iget-object v5, v3, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lanet/channel/strategy/StrategyTable$HostLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/StrategyCollection;

    if-nez v4, :cond_50

    .line 191
    new-instance v4, Lanet/channel/strategy/StrategyCollection;

    iget-object v5, v3, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Lanet/channel/strategy/StrategyCollection;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v5, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    iget-object v6, v3, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lanet/channel/strategy/StrategyTable$HostLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_50
    invoke-virtual {v4, v3}, Lanet/channel/strategy/StrategyCollection;->update(Lanet/channel/strategy/l$b;)V

    :cond_53
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 197
    :cond_56
    monitor-exit v0

    goto :goto_67

    :catchall_58
    move-exception p1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1e .. :try_end_5a} :catchall_58

    :try_start_5a
    throw p1
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception p1

    .line 199
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "awcn.StrategyTable"

    const-string v4, "fail to update strategyTable"

    invoke-static {v3, v4, v0, p1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_67
    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lanet/channel/strategy/StrategyTable;->d:Z

    .line 204
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "uniqueId : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n-------------------------domains:------------------------------------"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "awcn.StrategyTable"

    invoke-static {v4, v0, v3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    monitor-enter v0

    .line 209
    :try_start_91
    iget-object v2, p0, Lanet/channel/strategy/StrategyTable;->f:Lanet/channel/strategy/StrategyTable$HostLruCache;

    invoke-virtual {v2}, Lanet/channel/strategy/StrategyTable$HostLruCache;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 210
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 211
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/StrategyCollection;

    invoke-virtual {v4}, Lanet/channel/strategy/StrategyCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "awcn.StrategyTable"

    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9b

    .line 214
    :cond_d1
    monitor-exit v0

    goto :goto_d6

    :catchall_d3
    move-exception p1

    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_91 .. :try_end_d5} :catchall_d3

    throw p1

    :cond_d6
    :goto_d6
    return-void
.end method
