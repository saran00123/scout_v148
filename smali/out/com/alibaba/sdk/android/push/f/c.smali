.class public Lcom/alibaba/sdk/android/push/f/c;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;


# instance fields
.field a:Ljava/util/concurrent/locks/Lock;

.field b:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MPS:SyncTool"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/f/c;->c:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/f/c;->a:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/f/c;->b:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/f/c;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/f/c;->b:Ljava/util/concurrent/locks/Condition;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_d} :catch_15
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    :goto_d
    iget-object p1, p0, Lcom/alibaba/sdk/android/push/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1e

    :catchall_13
    move-exception p1

    goto :goto_1f

    :catch_15
    move-exception p1

    :try_start_16
    sget-object v0, Lcom/alibaba/sdk/android/push/f/c;->c:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "await error:"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    goto :goto_d

    :goto_1e
    return-void

    :goto_1f
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/f/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
