.class public Lanet/channel/strategy/utils/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lanet/channel/strategy/utils/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 5

    .line 21
    sget-object v0, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_2c

    .line 22
    const-class v0, Lanet/channel/strategy/utils/a;

    monitor-enter v0

    .line 23
    :try_start_7
    sget-object v1, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_27

    .line 24
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x2

    new-instance v3, Lanet/channel/strategy/utils/b;

    invoke-direct {v3}, Lanet/channel/strategy/utils/b;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 33
    sget-object v1, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 34
    sget-object v1, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 36
    :cond_27
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1

    .line 38
    :cond_2c
    :goto_2c
    sget-object v0, Lanet/channel/strategy/utils/a;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 5

    .line 43
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/utils/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_15

    :catch_8
    move-exception p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "awcn.AmdcThreadPoolExecutor"

    const-string/jumbo v3, "submit task failed"

    invoke-static {v2, v3, v0, p0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_15
    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .registers 5

    .line 51
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/utils/a;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_16

    :catch_a
    move-exception p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 53
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "awcn.AmdcThreadPoolExecutor"

    const-string v1, "schedule task failed"

    invoke-static {v0, v1, p1, p0, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_16
    return-void
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 14
    sget-object v0, Lanet/channel/strategy/utils/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method
