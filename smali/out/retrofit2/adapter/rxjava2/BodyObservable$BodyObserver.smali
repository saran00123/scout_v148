.class Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;
.super Ljava/lang/Object;
.source "BodyObservable.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava2/BodyObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodyObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lretrofit2/Response<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private terminated:Z


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    .line 65
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->terminated:Z

    if-nez v0, :cond_9

    .line 66
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_9
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 71
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->terminated:Z

    if-nez v0, :cond_a

    .line 72
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_17

    .line 75
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This should never happen! Report as a bug with the full stacktrace."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 79
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_17
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 37
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TR;>;)V"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/Observer;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_32

    :cond_10
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->terminated:Z

    .line 54
    new-instance v1, Lretrofit2/adapter/rxjava2/HttpException;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava2/HttpException;-><init>(Lretrofit2/Response;)V

    .line 56
    :try_start_18
    iget-object p1, p0, Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/Observer;

    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_32

    :catch_1e
    move-exception p1

    .line 58
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 59
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_32
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 46
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
