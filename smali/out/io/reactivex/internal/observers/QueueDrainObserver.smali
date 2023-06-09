.class public abstract Lio/reactivex/internal/observers/QueueDrainObserver;
.super Lio/reactivex/internal/observers/QueueDrainSubscriberPad2;
.source "QueueDrainObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/internal/util/ObservableQueueDrain;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/QueueDrainSubscriberPad2;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/internal/util/ObservableQueueDrain<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field protected volatile cancelled:Z

.field protected volatile done:Z

.field protected final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TV;>;"
        }
    .end annotation
.end field

.field protected error:Ljava/lang/Throwable;

.field protected final queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TV;>;",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TU;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/reactivex/internal/observers/QueueDrainSubscriberPad2;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/Observer;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TV;>;TU;)V"
        }
    .end annotation

    return-void
.end method

.method public final cancelled()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->cancelled:Z

    return v0
.end method

.method public final done()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->done:Z

    return v0
.end method

.method public final enter()Z
    .registers 2

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final error()Ljava/lang/Throwable;
    .registers 2

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final fastEnter()Z
    .registers 4

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1
.end method

.method protected final fastPathEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    .line 66
    iget-object v1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 68
    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 69
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->accept(Lio/reactivex/Observer;Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 70
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->leave(I)I

    move-result p1

    if-nez p1, :cond_2b

    return-void

    .line 74
    :cond_21
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result p1

    if-nez p1, :cond_2b

    return-void

    .line 79
    :cond_2b
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V

    return-void
.end method

.method protected final fastPathOrderedEmit(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/Disposable;",
            ")V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->downstream:Lio/reactivex/Observer;

    .line 90
    iget-object v1, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 92
    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 93
    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 94
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->accept(Lio/reactivex/Observer;Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 95
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/QueueDrainObserver;->leave(I)I

    move-result p1

    if-nez p1, :cond_35

    return-void

    .line 99
    :cond_27
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_35

    .line 102
    :cond_2b
    invoke-interface {v1, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0}, Lio/reactivex/internal/observers/QueueDrainObserver;->enter()Z

    move-result p1

    if-nez p1, :cond_35

    return-void

    .line 107
    :cond_35
    :goto_35
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V

    return-void
.end method

.method public final leave(I)I
    .registers 3

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/observers/QueueDrainObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method
