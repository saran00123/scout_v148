.class final Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;
.super Ljava/lang/Object;
.source "ObservableLastSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableLastSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastObserver"
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
.field final defaultItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    .line 58
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->defaultItem:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 64
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public isDisposed()Z
    .registers 3

    .line 69
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onComplete()V
    .registers 3

    .line 95
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_25

    .line 101
    :cond_11
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->defaultItem:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    .line 103
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_25

    .line 105
    :cond_1b
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    :goto_25
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 88
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->item:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 75
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 77
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableLastSingle$LastObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {p1, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_f
    return-void
.end method
