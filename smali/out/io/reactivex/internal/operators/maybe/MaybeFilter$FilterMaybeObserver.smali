.class final Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeFilter.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

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
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    .line 52
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->predicate:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 58
    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 59
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0}, Lio/reactivex/MaybeObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 72
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_f
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_14

    if-eqz v0, :cond_e

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_13

    .line 91
    :cond_e
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    :goto_13
    return-void

    :catch_14
    move-exception p1

    .line 83
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeFilter$FilterMaybeObserver;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {v0, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
