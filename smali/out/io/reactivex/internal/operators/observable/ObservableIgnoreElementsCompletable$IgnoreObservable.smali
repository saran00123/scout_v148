.class final Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;
.super Ljava/lang/Object;
.source "ObservableIgnoreElementsCompletable.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IgnoreObservable"
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
.field final downstream:Lio/reactivex/CompletableObserver;

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->downstream:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->upstream:Lio/reactivex/disposables/Disposable;

    .line 51
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
