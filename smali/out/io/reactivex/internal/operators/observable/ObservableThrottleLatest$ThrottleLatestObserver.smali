.class final Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableThrottleLatest.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableThrottleLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThrottleLatestObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7323c2cdbcdaca16L


# instance fields
.field volatile cancelled:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final emitLast:Z

.field error:Ljava/lang/Throwable;

.field final latest:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field volatile timerFired:Z

.field timerRunning:Z

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Lio/reactivex/disposables/Disposable;

.field final worker:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler$Worker;",
            "Z)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 91
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->downstream:Lio/reactivex/Observer;

    .line 92
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timeout:J

    .line 93
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 94
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->worker:Lio/reactivex/Scheduler$Worker;

    .line 95
    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->emitLast:Z

    .line 96
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->cancelled:Z

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 130
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_19

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method drain()V
    .registers 9

    .line 148
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 154
    :cond_7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    .line 155
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->downstream:Lio/reactivex/Observer;

    const/4 v2, 0x1

    move v3, v2

    .line 160
    :cond_d
    :goto_d
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->cancelled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_16

    .line 161
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_16
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->done:Z

    if-eqz v4, :cond_2c

    .line 167
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->error:Ljava/lang/Throwable;

    if-eqz v6, :cond_2c

    .line 168
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->error:Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 170
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    .line 174
    :cond_2c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_35

    move v6, v2

    goto :goto_36

    :cond_35
    move v6, v7

    :goto_36
    if-eqz v4, :cond_4e

    .line 178
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_45

    .line 179
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->emitLast:Z

    if-eqz v2, :cond_45

    .line 180
    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 182
    :cond_45
    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 183
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->worker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :cond_4e
    if-eqz v6, :cond_59

    .line 188
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerFired:Z

    if-eqz v4, :cond_62

    .line 189
    iput-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerRunning:Z

    .line 190
    iput-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerFired:Z

    goto :goto_62

    .line 195
    :cond_59
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerRunning:Z

    if-eqz v4, :cond_6a

    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerFired:Z

    if-eqz v4, :cond_62

    goto :goto_6a

    :cond_62
    :goto_62
    neg-int v3, v3

    .line 207
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_d

    return-void

    .line 196
    :cond_6a
    :goto_6a
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 197
    invoke-interface {v1, v4}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 199
    iput-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerFired:Z

    .line 200
    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerRunning:Z

    .line 201
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->worker:Lio/reactivex/Scheduler$Worker;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timeout:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p0, v5, v6, v7}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    goto :goto_d
.end method

.method public isDisposed()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .registers 2

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->done:Z

    .line 123
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->done:Z

    .line 117
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->drain()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 103
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_f
    return-void
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->timerFired:Z

    .line 144
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver;->drain()V

    return-void
.end method
