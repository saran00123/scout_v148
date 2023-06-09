.class final Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;
.super Lio/reactivex/internal/observers/BasicQueueDisposable;
.source "MaybeFlatMapIterableObservable.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapIterableObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicQueueDisposable<",
        "TR;>;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile cancelled:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field volatile it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field outputFused:Z

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicQueueDisposable;-><init>()V

    .line 68
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->downstream:Lio/reactivex/Observer;

    .line 69
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->mapper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    return-void
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 163
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 187
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 150
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 77
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_f
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->downstream:Lio/reactivex/Observer;

    .line 88
    :try_start_2
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_51

    if-nez v1, :cond_18

    .line 98
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    .line 102
    :cond_18
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    .line 104
    iget-boolean v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->outputFused:Z

    if-eqz v1, :cond_26

    const/4 p1, 0x0

    .line 105
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 106
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    .line 111
    :cond_26
    iget-boolean v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    if-eqz v1, :cond_2b

    return-void

    .line 118
    :cond_2b
    :try_start_2b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2f} :catch_49

    .line 125
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 127
    iget-boolean v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->cancelled:Z

    if-eqz v1, :cond_37

    return-void

    .line 134
    :cond_37
    :try_start_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3b} :catch_41

    if-nez v1, :cond_26

    .line 142
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :catch_41
    move-exception p1

    .line 136
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 137
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_49
    move-exception p1

    .line 120
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 121
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_51
    move-exception p1

    .line 92
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 93
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The iterator returned a null value"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    .line 198
    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->it:Ljava/util/Iterator;

    :cond_17
    return-object v2

    :cond_18
    return-object v1
.end method

.method public requestFusion(I)I
    .registers 3

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFlatMapIterableObservable$FlatMapIterableObserver;->outputFused:Z

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
