.class final Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;
.super Ljava/lang/Object;
.source "ObservableTake.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field remaining:J

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->downstream:Lio/reactivex/Observer;

    .line 43
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->remaining:J

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 85
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->done:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->done:Z

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_11
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 73
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->done:Z

    if-eqz v0, :cond_8

    .line 74
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->done:Z

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->done:Z

    if-nez v0, :cond_25

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->remaining:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 63
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->remaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 64
    :goto_1b
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    if-eqz v0, :cond_25

    .line 66
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->onComplete()V

    :cond_25
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 6

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 49
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 50
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->done:Z

    .line 52
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 53
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->downstream:Lio/reactivex/Observer;

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    goto :goto_23

    .line 55
    :cond_1e
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTake$TakeObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_23
    :goto_23
    return-void
.end method
