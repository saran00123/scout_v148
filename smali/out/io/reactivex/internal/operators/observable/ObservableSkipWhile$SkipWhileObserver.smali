.class final Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;
.super Ljava/lang/Object;
.source "ObservableSkipWhile.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSkipWhile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipWhileObserver"
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
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field notSkipping:Z

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    .line 41
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->predicate:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->notSkipping:Z

    if-eqz v0, :cond_a

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1a

    .line 69
    :cond_a
    :try_start_a
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_1b

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->notSkipping:Z

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception p1

    .line 71
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 48
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipWhile$SkipWhileObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_f
    return-void
.end method
