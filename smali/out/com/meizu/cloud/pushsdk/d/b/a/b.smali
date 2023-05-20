.class public Lcom/meizu/cloud/pushsdk/d/b/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService; = null

.field private static b:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .registers 2

    const-class v0, Lcom/meizu/cloud/pushsdk/d/b/a/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/meizu/cloud/pushsdk/d/b/a/b;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_f

    sget v1, Lcom/meizu/cloud/pushsdk/d/b/a/b;->b:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/meizu/cloud/pushsdk/d/b/a/b;->a:Ljava/util/concurrent/ExecutorService;

    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    sget-object v0, Lcom/meizu/cloud/pushsdk/d/b/a/b;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 2

    invoke-static {}, Lcom/meizu/cloud/pushsdk/d/b/a/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/meizu/cloud/pushsdk/d/b/a/b;->b:I

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {}, Lcom/meizu/cloud/pushsdk/d/b/a/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
