.class public final Lcom/huawei/hmf/tasks/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hmf/tasks/ExecuteResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/ExecuteResult<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/huawei/hmf/tasks/OnFailureListener;

.field private b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnFailureListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hmf/tasks/a/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/huawei/hmf/tasks/a/f;->a:Lcom/huawei/hmf/tasks/OnFailureListener;

    iput-object p1, p0, Lcom/huawei/hmf/tasks/a/f;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hmf/tasks/a/f;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/huawei/hmf/tasks/a/f;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/huawei/hmf/tasks/a/f;)Lcom/huawei/hmf/tasks/OnFailureListener;
    .registers 1

    iget-object p0, p0, Lcom/huawei/hmf/tasks/a/f;->a:Lcom/huawei/hmf/tasks/OnFailureListener;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/f;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/huawei/hmf/tasks/a/f;->a:Lcom/huawei/hmf/tasks/OnFailureListener;

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final onComplete(Lcom/huawei/hmf/tasks/Task;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/f;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/huawei/hmf/tasks/a/f$1;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hmf/tasks/a/f$1;-><init>(Lcom/huawei/hmf/tasks/a/f;Lcom/huawei/hmf/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method
