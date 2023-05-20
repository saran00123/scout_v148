.class Lanet/channel/heartbeat/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/heartbeat/IHeartbeat;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lanet/channel/Session;

.field private volatile b:J

.field private volatile c:Z

.field private d:J


# direct methods
.method constructor <init>()V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lanet/channel/heartbeat/b;->b:J

    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p0, Lanet/channel/heartbeat/b;->c:Z

    .line 19
    iput-wide v0, p0, Lanet/channel/heartbeat/b;->d:J

    return-void
.end method

.method private a(J)V
    .registers 6

    .line 77
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lanet/channel/heartbeat/b;->b:J

    const-wide/16 v0, 0x32

    add-long/2addr p1, v0

    .line 78
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2, v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_1f

    :catch_10
    move-exception p1

    .line 80
    iget-object p2, p0, Lanet/channel/heartbeat/b;->a:Lanet/channel/Session;

    iget-object p2, p2, Lanet/channel/Session;->p:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "awcn.DefaultHeartbeatImpl"

    const-string v2, "Submit heartbeat task failed."

    invoke-static {v1, v2, p2, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1f
    return-void
.end method


# virtual methods
.method public reSchedule()V
    .registers 5

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanet/channel/heartbeat/b;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lanet/channel/heartbeat/b;->b:J

    return-void
.end method

.method public run()V
    .registers 7

    .line 51
    iget-boolean v0, p0, Lanet/channel/heartbeat/b;->c:Z

    if-eqz v0, :cond_5

    return-void

    .line 55
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    iget-wide v2, p0, Lanet/channel/heartbeat/b;->b:J

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_19

    .line 57
    iget-wide v2, p0, Lanet/channel/heartbeat/b;->b:J

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lanet/channel/heartbeat/b;->a(J)V

    return-void

    .line 61
    :cond_19
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    const-string v1, "session"

    const/4 v2, 0x2

    const-string v3, "awcn.DefaultHeartbeatImpl"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_48

    .line 63
    invoke-static {v5}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 64
    iget-object v0, p0, Lanet/channel/heartbeat/b;->a:Lanet/channel/Session;

    iget-object v0, v0, Lanet/channel/Session;->p:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    iget-object v1, p0, Lanet/channel/heartbeat/b;->a:Lanet/channel/Session;

    aput-object v1, v2, v5

    const-string v1, "heartbeat"

    invoke-static {v3, v1, v0, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_3d
    iget-object v0, p0, Lanet/channel/heartbeat/b;->a:Lanet/channel/Session;

    invoke-virtual {v0, v5}, Lanet/channel/Session;->ping(Z)V

    .line 67
    iget-wide v0, p0, Lanet/channel/heartbeat/b;->d:J

    invoke-direct {p0, v0, v1}, Lanet/channel/heartbeat/b;->a(J)V

    return-void

    .line 69
    :cond_48
    iget-object v0, p0, Lanet/channel/heartbeat/b;->a:Lanet/channel/Session;

    iget-object v0, v0, Lanet/channel/Session;->p:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    iget-object v1, p0, Lanet/channel/heartbeat/b;->a:Lanet/channel/Session;

    aput-object v1, v2, v5

    const-string v1, "close session in background"

    invoke-static {v3, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lanet/channel/heartbeat/b;->a:Lanet/channel/Session;

    invoke-virtual {v0, v4}, Lanet/channel/Session;->close(Z)V

    return-void
.end method

.method public start(Lanet/channel/Session;)V
    .registers 6

    if-eqz p1, :cond_44

    .line 26
    iput-object p1, p0, Lanet/channel/heartbeat/b;->a:Lanet/channel/Session;

    .line 27
    invoke-virtual {p1}, Lanet/channel/Session;->getConnStrategy()Lanet/channel/strategy/IConnStrategy;

    move-result-object v0

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getHeartbeat()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lanet/channel/heartbeat/b;->d:J

    .line 28
    iget-wide v0, p0, Lanet/channel/heartbeat/b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1c

    const-wide/32 v0, 0xafc8

    .line 29
    iput-wide v0, p0, Lanet/channel/heartbeat/b;->d:J

    .line 31
    :cond_1c
    iget-object v0, p1, Lanet/channel/Session;->p:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "session"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "interval"

    aput-object v2, v1, p1

    const/4 p1, 0x3

    iget-wide v2, p0, Lanet/channel/heartbeat/b;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "awcn.DefaultHeartbeatImpl"

    const-string v2, "heartbeat start"

    invoke-static {p1, v2, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-wide v0, p0, Lanet/channel/heartbeat/b;->d:J

    invoke-direct {p0, v0, v1}, Lanet/channel/heartbeat/b;->a(J)V

    return-void

    .line 24
    :cond_44
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "session is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop()V
    .registers 6

    .line 37
    iget-object v0, p0, Lanet/channel/heartbeat/b;->a:Lanet/channel/Session;

    if-nez v0, :cond_5

    return-void

    .line 40
    :cond_5
    iget-object v0, v0, Lanet/channel/Session;->p:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "session"

    aput-object v3, v1, v2

    iget-object v2, p0, Lanet/channel/heartbeat/b;->a:Lanet/channel/Session;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "awcn.DefaultHeartbeatImpl"

    const-string v4, "heartbeat stop"

    invoke-static {v2, v4, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-boolean v3, p0, Lanet/channel/heartbeat/b;->c:Z

    return-void
.end method
