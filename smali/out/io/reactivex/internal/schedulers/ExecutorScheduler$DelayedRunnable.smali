.class final Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/schedulers/SchedulerRunnableIntrospection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/ExecutorScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelayedRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/schedulers/SchedulerRunnableIntrospection;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x38eadf8da9d2b4ecL


# instance fields
.field final direct:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final timed:Lio/reactivex/internal/disposables/SequentialDisposable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 303
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 304
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->timed:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 305
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->direct:Lio/reactivex/internal/disposables/SequentialDisposable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 330
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->timed:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 331
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->direct:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    :cond_11
    return-void
.end method

.method public getWrappedRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 337
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    goto :goto_b

    .line 338
    :cond_9
    sget-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    :goto_b
    return-object v0
.end method

.method public isDisposed()Z
    .registers 2

    .line 324
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public run()V
    .registers 4

    .line 310
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_31

    const/4 v1, 0x0

    .line 313
    :try_start_9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1e

    .line 315
    invoke-virtual {p0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->lazySet(Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->timed:Lio/reactivex/internal/disposables/SequentialDisposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->lazySet(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->direct:Lio/reactivex/internal/disposables/SequentialDisposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->lazySet(Ljava/lang/Object;)V

    goto :goto_31

    :catchall_1e
    move-exception v0

    .line 315
    invoke-virtual {p0, v1}, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->lazySet(Ljava/lang/Object;)V

    .line 316
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->timed:Lio/reactivex/internal/disposables/SequentialDisposable;

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v1, v2}, Lio/reactivex/internal/disposables/SequentialDisposable;->lazySet(Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->direct:Lio/reactivex/internal/disposables/SequentialDisposable;

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {v1, v2}, Lio/reactivex/internal/disposables/SequentialDisposable;->lazySet(Ljava/lang/Object;)V

    throw v0

    :cond_31
    :goto_31
    return-void
.end method
