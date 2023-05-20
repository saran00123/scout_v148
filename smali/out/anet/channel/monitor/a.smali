.class public Lanet/channel/monitor/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Lanet/channel/monitor/a;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/monitor/INetworkQualityChangeListener;",
            "Lanet/channel/monitor/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lanet/channel/monitor/f;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/monitor/a;->b:Ljava/util/Map;

    .line 16
    new-instance v0, Lanet/channel/monitor/f;

    invoke-direct {v0}, Lanet/channel/monitor/f;-><init>()V

    iput-object v0, p0, Lanet/channel/monitor/a;->c:Lanet/channel/monitor/f;

    return-void
.end method

.method public static a()Lanet/channel/monitor/a;
    .registers 2

    .line 22
    sget-object v0, Lanet/channel/monitor/a;->a:Lanet/channel/monitor/a;

    if-nez v0, :cond_17

    .line 23
    const-class v0, Lanet/channel/monitor/a;

    monitor-enter v0

    .line 24
    :try_start_7
    sget-object v1, Lanet/channel/monitor/a;->a:Lanet/channel/monitor/a;

    if-nez v1, :cond_12

    .line 25
    new-instance v1, Lanet/channel/monitor/a;

    invoke-direct {v1}, Lanet/channel/monitor/a;-><init>()V

    sput-object v1, Lanet/channel/monitor/a;->a:Lanet/channel/monitor/a;

    .line 27
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 29
    :cond_17
    :goto_17
    sget-object v0, Lanet/channel/monitor/a;->a:Lanet/channel/monitor/a;

    return-object v0
.end method


# virtual methods
.method public a(D)V
    .registers 8

    .line 51
    iget-object v0, p0, Lanet/channel/monitor/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/monitor/INetworkQualityChangeListener;

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/monitor/f;

    if-eqz v2, :cond_a

    if-nez v1, :cond_27

    goto :goto_a

    .line 58
    :cond_27
    invoke-virtual {v1}, Lanet/channel/monitor/f;->b()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_a

    .line 61
    :cond_2e
    invoke-virtual {v1, p1, p2}, Lanet/channel/monitor/f;->a(D)Z

    move-result v3

    .line 1013
    iget-boolean v4, v1, Lanet/channel/monitor/f;->a:Z

    if-eq v4, v3, :cond_a

    .line 1017
    iput-boolean v3, v1, Lanet/channel/monitor/f;->a:Z

    if-eqz v3, :cond_3d

    .line 64
    sget-object v1, Lanet/channel/monitor/NetworkSpeed;->Slow:Lanet/channel/monitor/NetworkSpeed;

    goto :goto_3f

    :cond_3d
    sget-object v1, Lanet/channel/monitor/NetworkSpeed;->Fast:Lanet/channel/monitor/NetworkSpeed;

    .line 65
    :goto_3f
    invoke-interface {v2, v1}, Lanet/channel/monitor/INetworkQualityChangeListener;->onNetworkQualityChanged(Lanet/channel/monitor/NetworkSpeed;)V

    goto :goto_a

    :cond_43
    return-void
.end method

.method public a(Lanet/channel/monitor/INetworkQualityChangeListener;)V
    .registers 3

    .line 47
    iget-object v0, p0, Lanet/channel/monitor/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lanet/channel/monitor/INetworkQualityChangeListener;Lanet/channel/monitor/f;)V
    .registers 5

    if-nez p1, :cond_e

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 34
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "BandWidthListenerHelp"

    const-string v1, "listener is null"

    invoke-static {v0, v1, p1, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_e
    if-nez p2, :cond_20

    .line 38
    iget-object p2, p0, Lanet/channel/monitor/a;->c:Lanet/channel/monitor/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lanet/channel/monitor/f;->b:J

    .line 39
    iget-object p2, p0, Lanet/channel/monitor/a;->b:Ljava/util/Map;

    iget-object v0, p0, Lanet/channel/monitor/a;->c:Lanet/channel/monitor/f;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 41
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lanet/channel/monitor/f;->b:J

    .line 42
    iget-object v0, p0, Lanet/channel/monitor/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2b
    return-void
.end method
