.class public Lcom/taobao/accs/common/ThreadPoolExecutorFactory;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/common/ThreadPoolExecutorFactory$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadPoolExecutorFactory"

.field private static final integer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static volatile sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 16
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 4

    .line 67
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_13

    :catch_8
    move-exception p0

    const/4 v0, 0x0

    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ThreadPoolExecutorFactory"

    const-string v2, "ThreadPoolExecutorFactory execute"

    invoke-static {v1, v2, p0, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_13
    return-void
.end method

.method public static getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 6

    .line 38
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_2d

    .line 39
    const-class v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;

    monitor-enter v0

    .line 40
    :try_start_7
    sget-object v1, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_28

    .line 41
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/common/ThreadPoolExecutorFactory$a;

    const-string v3, "ACCS"

    invoke-direct {v2, v3}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory$a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 42
    sget-object v1, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 43
    sget-object v1, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 45
    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1

    .line 47
    :cond_2d
    :goto_2d
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 6

    .line 79
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_2d

    .line 80
    const-class v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;

    monitor-enter v0

    .line 81
    :try_start_7
    sget-object v1, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_28

    .line 82
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/common/ThreadPoolExecutorFactory$a;

    const-string v3, "ACCS-SEND"

    invoke-direct {v2, v3}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory$a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 83
    sget-object v1, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 84
    sget-object v1, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 86
    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1

    .line 88
    :cond_2d
    :goto_2d
    sget-object v0, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->sendThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 53
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_15

    :catch_9
    move-exception p0

    const/4 p1, 0x0

    .line 55
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ThreadPoolExecutorFactory"

    const-string p3, "ThreadPoolExecutorFactory schedule"

    invoke-static {p2, p3, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_15
    return-object p0
.end method
