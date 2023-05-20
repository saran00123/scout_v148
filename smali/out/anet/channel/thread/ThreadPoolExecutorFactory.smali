.class public Lanet/channel/thread/ThreadPoolExecutorFactory;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/thread/ThreadPoolExecutorFactory$a;,
        Lanet/channel/thread/ThreadPoolExecutorFactory$b;,
        Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static h:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 18
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lanet/channel/thread/ThreadPoolExecutorFactory$b;

    const-string v2, "AWCN Scheduler"

    invoke-direct {v1, v2}, Lanet/channel/thread/ThreadPoolExecutorFactory$b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 19
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v10, Lanet/channel/thread/ThreadPoolExecutorFactory$b;

    const-string v1, "AWCN Worker(H)"

    invoke-direct {v10, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory$b;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-wide/16 v6, 0x3c

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    new-instance v0, Lanet/channel/thread/a;

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v17, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v1, Lanet/channel/thread/ThreadPoolExecutorFactory$b;

    const-string v3, "AWCN Worker(M)"

    invoke-direct {v1, v3}, Lanet/channel/thread/ThreadPoolExecutorFactory$b;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x10

    const/16 v13, 0x10

    const-wide/16 v14, 0x3c

    move-object v11, v0

    move-object/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Lanet/channel/thread/a;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 21
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v10, Lanet/channel/thread/ThreadPoolExecutorFactory$b;

    const-string v1, "AWCN Worker(L)"

    invoke-direct {v10, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory$b;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v17, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v1, Lanet/channel/thread/ThreadPoolExecutorFactory$b;

    const-string v3, "AWCN Worker(Backup)"

    invoke-direct {v1, v3}, Lanet/channel/thread/ThreadPoolExecutorFactory$b;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x20

    const/16 v13, 0x20

    move-object v11, v0

    move-object/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v10, Lanet/channel/thread/ThreadPoolExecutorFactory$b;

    const-string v1, "AWCN Detector"

    invoke-direct {v10, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory$b;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x1e

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 24
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v17, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v1, Lanet/channel/thread/ThreadPoolExecutorFactory$b;

    const-string v3, "AWCN HR"

    invoke-direct {v1, v3}, Lanet/channel/thread/ThreadPoolExecutorFactory$b;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v14, 0x1e

    move-object v11, v0

    move-object/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 25
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v10, Lanet/channel/thread/ThreadPoolExecutorFactory$b;

    const-string v1, "AWCN Cookie"

    invoke-direct {v10, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory$b;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 28
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 29
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 30
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 31
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 32
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 33
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 34
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeScheduleTask(Ljava/lang/Runnable;)V
    .registers 2

    .line 66
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static declared-synchronized setNormalExecutorPoolSize(I)V
    .registers 3

    const-class v0, Lanet/channel/thread/ThreadPoolExecutorFactory;

    monitor-enter v0

    const/4 v1, 0x6

    if-ge p0, v1, :cond_7

    move p0, v1

    .line 132
    :cond_7
    :try_start_7
    sget-object v1, Lanet/channel/thread/ThreadPoolExecutorFactory;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 133
    sget-object v1, Lanet/channel/thread/ThreadPoolExecutorFactory;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    .line 134
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static submitBackupTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 87
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitCookieMonitor(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 99
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitDetectTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 91
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitHRTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 95
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 71
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 72
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "priority"

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "awcn.ThreadPoolExecutorFactory"

    const-string/jumbo v3, "submit priority task"

    invoke-static {v0, v3, v1, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_1e
    sget v0, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    if-lt p1, v0, :cond_26

    sget v0, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    if-le p1, v0, :cond_28

    .line 75
    :cond_26
    sget p1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    .line 77
    :cond_28
    sget v0, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    if-ne p1, v0, :cond_33

    .line 78
    sget-object p1, Lanet/channel/thread/ThreadPoolExecutorFactory;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 79
    :cond_33
    sget v0, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->LOW:I

    if-ne p1, v0, :cond_3e

    .line 80
    sget-object p1, Lanet/channel/thread/ThreadPoolExecutorFactory;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 82
    :cond_3e
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lanet/channel/thread/ThreadPoolExecutorFactory$a;

    invoke-direct {v1, p0, p1}, Lanet/channel/thread/ThreadPoolExecutorFactory$a;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 58
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 62
    sget-object v0, Lanet/channel/thread/ThreadPoolExecutorFactory;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method
