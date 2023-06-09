.class final Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;
.super Ljava/lang/Object;
.source "ObservableReduceSeedSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceSeedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final reducer:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;TR;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->downstream:Lio/reactivex/SingleObserver;

    .line 62
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->reducer:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 116
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 3

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 96
    :cond_d
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1f

    .line 80
    :try_start_4
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->reducer:Lio/reactivex/functions/BiFunction;

    invoke-interface {v1, v0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->value:Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_1f

    :catch_13
    move-exception p1

    .line 82
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 84
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 71
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReduceSeedSingle$ReduceSeedObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_f
    return-void
.end method
