.class public Lanet/channel/heartbeat/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/heartbeat/IHeartbeat;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lanet/channel/Session;

.field private volatile b:Z

.field private volatile c:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lanet/channel/heartbeat/c;->a:Lanet/channel/Session;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lanet/channel/heartbeat/c;->b:Z

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/heartbeat/c;->c:J

    return-void
.end method


# virtual methods
.method public reSchedule()V
    .registers 5

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xafc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lanet/channel/heartbeat/c;->c:J

    return-void
.end method

.method public run()V
    .registers 7

    .line 41
    iget-boolean v0, p0, Lanet/channel/heartbeat/c;->b:Z

    if-eqz v0, :cond_5

    return-void

    .line 45
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    iget-wide v2, p0, Lanet/channel/heartbeat/c;->c:J

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1b

    .line 47
    iget-wide v2, p0, Lanet/channel/heartbeat/c;->c:J

    sub-long/2addr v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v2, v3, v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    return-void

    .line 51
    :cond_1b
    iget-object v0, p0, Lanet/channel/heartbeat/c;->a:Lanet/channel/Session;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lanet/channel/Session;->close(Z)V

    return-void
.end method

.method public start(Lanet/channel/Session;)V
    .registers 6

    if-eqz p1, :cond_14

    .line 24
    iput-object p1, p0, Lanet/channel/heartbeat/c;->a:Lanet/channel/Session;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xafc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lanet/channel/heartbeat/c;->c:J

    .line 26
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v2, v3, p1}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    return-void

    .line 22
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "session is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lanet/channel/heartbeat/c;->b:Z

    return-void
.end method
