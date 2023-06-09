.class public final Lio/reactivex/internal/operators/observable/ObservableFromFuture;
.super Lio/reactivex/Observable;
.source "ObservableFromFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->future:Ljava/util/concurrent/Future;

    .line 30
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->timeout:J

    .line 31
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    new-instance v0, Lio/reactivex/internal/observers/DeferredScalarDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex/Observer;)V

    .line 37
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 38
    invoke-virtual {v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 41
    :try_start_e
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->future:Ljava/util/concurrent/Future;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->timeout:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_23

    :cond_1d
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFromFuture;->future:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_23
    const-string v2, "Future returned null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_29} :catch_2d

    .line 49
    invoke-virtual {v0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->complete(Ljava/lang/Object;)V

    goto :goto_3a

    :catch_2d
    move-exception v1

    .line 43
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 44
    invoke-virtual {v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 45
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    return-void
.end method
