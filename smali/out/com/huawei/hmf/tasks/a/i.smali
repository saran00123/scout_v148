.class public final Lcom/huawei/hmf/tasks/a/i;
.super Lcom/huawei/hmf/tasks/Task;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/huawei/hmf/tasks/Task<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private volatile c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hmf/tasks/ExecuteResult<",
            "TTResult;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/huawei/hmf/tasks/Task;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->f:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/huawei/hmf/tasks/ExecuteResult;)Lcom/huawei/hmf/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hmf/tasks/ExecuteResult<",
            "TTResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/huawei/hmf/tasks/a/i;->isComplete()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/huawei/hmf/tasks/a/i;->f:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    if-eqz v1, :cond_14

    invoke-interface {p1, p0}, Lcom/huawei/hmf/tasks/ExecuteResult;->onComplete(Lcom/huawei/hmf/tasks/Task;)V

    :cond_14
    return-object p0

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/huawei/hmf/tasks/a/i;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hmf/tasks/ExecuteResult;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_27

    :try_start_15
    invoke-interface {v2, p0}, Lcom/huawei/hmf/tasks/ExecuteResult;->onComplete(Lcom/huawei/hmf/tasks/Task;)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_27

    goto :goto_9

    :catch_19
    move-exception v1

    :try_start_1a
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_20
    move-exception v1

    throw v1

    :cond_22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/hmf/tasks/a/i;->f:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_27

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/huawei/hmf/tasks/a/i;->b:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/hmf/tasks/a/i;->b:Z

    iput-object p1, p0, Lcom/huawei/hmf/tasks/a/i;->e:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    invoke-direct {p0}, Lcom/huawei/hmf/tasks/a/i;->b()V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/huawei/hmf/tasks/a/i;->b:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/hmf/tasks/a/i;->b:Z

    iput-object p1, p0, Lcom/huawei/hmf/tasks/a/i;->d:Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    invoke-direct {p0}, Lcom/huawei/hmf/tasks/a/i;->b()V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public final a()Z
    .registers 4

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/huawei/hmf/tasks/a/i;->b:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/hmf/tasks/a/i;->b:Z

    iput-boolean v1, p0, Lcom/huawei/hmf/tasks/a/i;->c:Z

    iget-object v2, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    invoke-direct {p0}, Lcom/huawei/hmf/tasks/a/i;->b()V

    monitor-exit v0

    return v1

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final addOnCanceledListener(Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnCanceledListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/huawei/hmf/tasks/OnCanceledListener;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/b;

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/huawei/hmf/tasks/a/b;-><init>(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnCanceledListener;)V

    invoke-static {p1, v0}, Lcom/huawei/hmf/tasks/a/g;->a(Landroid/app/Activity;Lcom/huawei/hmf/tasks/ExecuteResult;)V

    invoke-direct {p0, v0}, Lcom/huawei/hmf/tasks/a/i;->a(Lcom/huawei/hmf/tasks/ExecuteResult;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnCanceledListener(Lcom/huawei/hmf/tasks/OnCanceledListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hmf/tasks/OnCanceledListener;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hmf/tasks/a/i;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnCanceledListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnCanceledListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/huawei/hmf/tasks/OnCanceledListener;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/b;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hmf/tasks/a/b;-><init>(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnCanceledListener;)V

    invoke-direct {p0, v0}, Lcom/huawei/hmf/tasks/a/i;->a(Lcom/huawei/hmf/tasks/ExecuteResult;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnCompleteListener(Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/huawei/hmf/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/d;

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/huawei/hmf/tasks/a/d;-><init>(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnCompleteListener;)V

    invoke-static {p1, v0}, Lcom/huawei/hmf/tasks/a/g;->a(Landroid/app/Activity;Lcom/huawei/hmf/tasks/ExecuteResult;)V

    invoke-direct {p0, v0}, Lcom/huawei/hmf/tasks/a/i;->a(Lcom/huawei/hmf/tasks/ExecuteResult;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnCompleteListener(Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hmf/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hmf/tasks/a/i;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/huawei/hmf/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/d;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hmf/tasks/a/d;-><init>(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnCompleteListener;)V

    invoke-direct {p0, v0}, Lcom/huawei/hmf/tasks/a/i;->a(Lcom/huawei/hmf/tasks/ExecuteResult;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnFailureListener(Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/huawei/hmf/tasks/OnFailureListener;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/f;

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/huawei/hmf/tasks/a/f;-><init>(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    invoke-static {p1, v0}, Lcom/huawei/hmf/tasks/a/g;->a(Landroid/app/Activity;Lcom/huawei/hmf/tasks/ExecuteResult;)V

    invoke-direct {p0, v0}, Lcom/huawei/hmf/tasks/a/i;->a(Lcom/huawei/hmf/tasks/ExecuteResult;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hmf/tasks/OnFailureListener;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hmf/tasks/a/i;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/huawei/hmf/tasks/OnFailureListener;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/f;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hmf/tasks/a/f;-><init>(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnFailureListener;)V

    invoke-direct {p0, v0}, Lcom/huawei/hmf/tasks/a/i;->a(Lcom/huawei/hmf/tasks/ExecuteResult;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnSuccessListener(Landroid/app/Activity;Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/huawei/hmf/tasks/OnSuccessListener<",
            "TTResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/h;

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/huawei/hmf/tasks/a/h;-><init>(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnSuccessListener;)V

    invoke-static {p1, v0}, Lcom/huawei/hmf/tasks/a/g;->a(Landroid/app/Activity;Lcom/huawei/hmf/tasks/ExecuteResult;)V

    invoke-direct {p0, v0}, Lcom/huawei/hmf/tasks/a/i;->a(Lcom/huawei/hmf/tasks/ExecuteResult;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hmf/tasks/OnSuccessListener<",
            "TTResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hmf/tasks/a/i;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/huawei/hmf/tasks/OnSuccessListener<",
            "TTResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/h;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hmf/tasks/a/h;-><init>(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnSuccessListener;)V

    invoke-direct {p0, v0}, Lcom/huawei/hmf/tasks/a/i;->a(Lcom/huawei/hmf/tasks/ExecuteResult;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final continueWith(Lcom/huawei/hmf/tasks/Continuation;)Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hmf/tasks/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hmf/tasks/a/i;->continueWith(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/Continuation;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final continueWith(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/Continuation;)Lcom/huawei/hmf/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/huawei/hmf/tasks/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/i;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/a/i;-><init>()V

    new-instance v1, Lcom/huawei/hmf/tasks/a/i$5;

    invoke-direct {v1, p0, v0, p2}, Lcom/huawei/hmf/tasks/a/i$5;-><init>(Lcom/huawei/hmf/tasks/a/i;Lcom/huawei/hmf/tasks/a/i;Lcom/huawei/hmf/tasks/Continuation;)V

    invoke-virtual {p0, p1, v1}, Lcom/huawei/hmf/tasks/a/i;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;

    return-object v0
.end method

.method public final continueWithTask(Lcom/huawei/hmf/tasks/Continuation;)Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hmf/tasks/Continuation<",
            "TTResult;",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hmf/tasks/a/i;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/Continuation;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final continueWithTask(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/Continuation;)Lcom/huawei/hmf/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/huawei/hmf/tasks/Continuation<",
            "TTResult;",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/i;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/a/i;-><init>()V

    new-instance v1, Lcom/huawei/hmf/tasks/a/i$4;

    invoke-direct {v1, p0, p2, v0}, Lcom/huawei/hmf/tasks/a/i$4;-><init>(Lcom/huawei/hmf/tasks/a/i;Lcom/huawei/hmf/tasks/Continuation;Lcom/huawei/hmf/tasks/a/i;)V

    invoke-virtual {p0, p1, v1}, Lcom/huawei/hmf/tasks/a/i;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;

    return-object v0
.end method

.method public final getException()Ljava/lang/Exception;
    .registers 3

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/huawei/hmf/tasks/a/i;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final getResult()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/huawei/hmf/tasks/a/i;->e:Ljava/lang/Exception;

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/huawei/hmf/tasks/a/i;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/huawei/hmf/tasks/a/i;->e:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public final getResultThrowException(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)TTResult;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_17

    :try_start_5
    iget-object v1, p0, Lcom/huawei/hmf/tasks/a/i;->e:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_17

    :cond_e
    iget-object v1, p0, Lcom/huawei/hmf/tasks/a/i;->e:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_17
    :goto_17
    iget-object p1, p0, Lcom/huawei/hmf/tasks/a/i;->e:Ljava/lang/Exception;

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/huawei/hmf/tasks/a/i;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/huawei/hmf/tasks/a/i;->e:Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public final isCanceled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/huawei/hmf/tasks/a/i;->c:Z

    return v0
.end method

.method public final isComplete()Z
    .registers 3

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/huawei/hmf/tasks/a/i;->b:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isSuccessful()Z
    .registers 3

    iget-object v0, p0, Lcom/huawei/hmf/tasks/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/huawei/hmf/tasks/a/i;->b:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/huawei/hmf/tasks/a/i;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/huawei/hmf/tasks/a/i;->e:Ljava/lang/Exception;

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final onSuccessTask(Lcom/huawei/hmf/tasks/SuccessContinuation;)Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hmf/tasks/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hmf/tasks/a/i;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/SuccessContinuation;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final onSuccessTask(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/SuccessContinuation;)Lcom/huawei/hmf/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/huawei/hmf/tasks/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hmf/tasks/a/i;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/a/i;-><init>()V

    new-instance v1, Lcom/huawei/hmf/tasks/a/i$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/huawei/hmf/tasks/a/i$1;-><init>(Lcom/huawei/hmf/tasks/a/i;Lcom/huawei/hmf/tasks/SuccessContinuation;Lcom/huawei/hmf/tasks/a/i;)V

    invoke-virtual {p0, p1, v1}, Lcom/huawei/hmf/tasks/a/i;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    new-instance p1, Lcom/huawei/hmf/tasks/a/i$2;

    invoke-direct {p1, p0, v0}, Lcom/huawei/hmf/tasks/a/i$2;-><init>(Lcom/huawei/hmf/tasks/a/i;Lcom/huawei/hmf/tasks/a/i;)V

    invoke-virtual {p0, p1}, Lcom/huawei/hmf/tasks/a/i;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    new-instance p1, Lcom/huawei/hmf/tasks/a/i$3;

    invoke-direct {p1, p0, v0}, Lcom/huawei/hmf/tasks/a/i$3;-><init>(Lcom/huawei/hmf/tasks/a/i;Lcom/huawei/hmf/tasks/a/i;)V

    invoke-virtual {p0, p1}, Lcom/huawei/hmf/tasks/a/i;->addOnCanceledListener(Lcom/huawei/hmf/tasks/OnCanceledListener;)Lcom/huawei/hmf/tasks/Task;

    return-object v0
.end method
