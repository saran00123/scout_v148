.class public Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MPS:ThreadPoolFactory"

.field private static final integer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static logger:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field private static volatile scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "MPS:ThreadPoolFactory"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->logger:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->integer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->logger:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "ThreadPoolExecutorFactory execute"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method public static getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 6

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_2d

    const-class v0, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_28

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory$a;

    const-string v3, "MPS:ThreadPoolFactory"

    invoke-direct {v2, v3}, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory$a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    sget-object v1, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1

    :cond_2d
    :goto_2d
    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->scheduleThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

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

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception p0

    sget-object p1, Lcom/alibaba/sdk/android/push/common/util/ThreadPoolFactory;->logger:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "ThreadPoolExecutorFactory schedule"

    invoke-virtual {p1, p2, p0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method
