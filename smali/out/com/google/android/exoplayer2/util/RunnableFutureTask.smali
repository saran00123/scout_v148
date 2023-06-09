.class public abstract Lcom/google/android/exoplayer2/util/RunnableFutureTask;
.super Ljava/lang/Object;
.source "RunnableFutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final cancelLock:Ljava/lang/Object;

.field private canceled:Z

.field private exception:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private result:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final started:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private workThread:Ljava/lang/Thread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 48
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .registers 3
    .annotation build Lcom/google/android/exoplayer2/util/UnknownNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 167
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    if-nez v0, :cond_11

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_b

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->result:Ljava/lang/Object;

    return-object v0

    .line 170
    :cond_b
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 168
    :cond_11
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final blockUntilFinished()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    return-void
.end method

.method public final blockUntilStarted()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    return-void
.end method

.method public final cancel(Z)Z
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2c

    :cond_10
    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    .line 89
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelWork()V

    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    if-eqz v2, :cond_20

    if-eqz p1, :cond_2a

    .line 93
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2a

    .line 96
    :cond_20
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 97
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 99
    :cond_2a
    :goto_2a
    monitor-exit v0

    return v1

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    .line 86
    monitor-exit v0

    return p1

    :catchall_2f
    move-exception p1

    .line 100
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method protected cancelWork()V
    .registers 1

    return-void
.end method

.method protected abstract doWork()Ljava/lang/Object;
    .annotation build Lcom/google/android/exoplayer2/util/UnknownNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/google/android/exoplayer2/util/UnknownNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    .line 68
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation build Lcom/google/android/exoplayer2/util/UnknownNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 76
    iget-object p3, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block(J)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 79
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 77
    :cond_13
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

.method public final isCancelled()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    return v0
.end method

.method public final isDone()Z
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->canceled:Z

    if-eqz v1, :cond_9

    .line 119
    monitor-exit v0

    return-void

    .line 121
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 122
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_57

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->started:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    const/4 v0, 0x0

    .line 125
    :try_start_16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->doWork()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->result:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_30
    .catchall {:try_start_16 .. :try_end_1c} :catchall_2e

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_1f
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 132
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 135
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 136
    monitor-exit v1

    goto :goto_41

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw v0

    :catchall_2e
    move-exception v1

    goto :goto_45

    :catch_30
    move-exception v1

    .line 128
    :try_start_31
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->exception:Ljava/lang/Exception;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_2e

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_36
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 132
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 135
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 136
    monitor-exit v1

    :goto_41
    return-void

    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_42

    throw v0

    .line 130
    :goto_45
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_48
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->finished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 132
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->workThread:Ljava/lang/Thread;

    .line 135
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 136
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_54

    .line 137
    throw v1

    :catchall_54
    move-exception v0

    .line 136
    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0

    :catchall_57
    move-exception v1

    .line 122
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method
