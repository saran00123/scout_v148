.class final Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;
.super Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;
.source "ObservableSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SampleMainEmitLast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a0bdab9530de829L


# instance fields
.field volatile done:Z

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/ObservableSource<",
            "*>;)V"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;)V

    .line 191
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method completeMain()V
    .registers 2

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->done:Z

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_13

    .line 198
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->emit()V

    .line 199
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_13
    return-void
.end method

.method completeOther()V
    .registers 2

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->done:Z

    .line 206
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_13

    .line 207
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->emit()V

    .line 208
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_13
    return-void
.end method

.method run()V
    .registers 2

    .line 214
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1d

    .line 216
    :cond_8
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->done:Z

    .line 217
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->emit()V

    if-eqz v0, :cond_15

    .line 219
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    .line 222
    :cond_15
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_8

    :cond_1d
    return-void
.end method
