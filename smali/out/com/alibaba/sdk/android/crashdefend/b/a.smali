.class public Lcom/alibaba/sdk/android/crashdefend/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/ThreadFactory;

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/crashdefend/b/a$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/crashdefend/b/a$1;-><init>(Lcom/alibaba/sdk/android/crashdefend/b/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/crashdefend/b/a;->a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/crashdefend/b/a;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iget-object v8, p0, Lcom/alibaba/sdk/android/crashdefend/b/a;->a:Ljava/util/concurrent/ThreadFactory;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/crashdefend/b/a;->b:Ljava/util/concurrent/ExecutorService;

    :cond_1c
    iget-object v0, p0, Lcom/alibaba/sdk/android/crashdefend/b/a;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
