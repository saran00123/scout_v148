.class final Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;
.super Lio/reactivex/observers/DisposableObserver;
.source "BlockingObservableNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/BlockingObservableNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DisposableObserver<",
        "Lio/reactivex/Notification<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final buf:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lio/reactivex/Notification<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final waiting:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 132
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    .line 133
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 143
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Lio/reactivex/Notification;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Notification<",
            "TT;>;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lio/reactivex/Notification;->isOnNext()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 151
    :cond_10
    :goto_10
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Notification;

    if-eqz v0, :cond_10

    .line 155
    invoke-virtual {v0}, Lio/reactivex/Notification;->isOnNext()Z

    move-result v1

    if-nez v1, :cond_10

    move-object p1, v0

    goto :goto_10

    :cond_2a
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 132
    check-cast p1, Lio/reactivex/Notification;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->onNext(Lio/reactivex/Notification;)V

    return-void
.end method

.method setWaiting()V
    .registers 3

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public takeNext()Lio/reactivex/Notification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Notification<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->setWaiting()V

    .line 165
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 166
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Notification;

    return-object v0
.end method
