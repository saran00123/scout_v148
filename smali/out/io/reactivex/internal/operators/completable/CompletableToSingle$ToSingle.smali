.class final Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;
.super Ljava/lang/Object;
.source "CompletableToSingle.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableToSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ToSingle"
.end annotation


# instance fields
.field private final observer:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableToSingle;Lio/reactivex/SingleObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 4

    .line 53
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableToSingle;->completionValueSupplier:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_19

    .line 55
    :try_start_6
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableToSingle;->completionValueSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_1d

    :catch_f
    move-exception v0

    .line 57
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 58
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 62
    :cond_19
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableToSingle;->completionValue:Ljava/lang/Object;

    :goto_1d
    if-nez v0, :cond_2c

    .line 66
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The value supplied is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_31

    .line 68
    :cond_2c
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :goto_31
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$ToSingle;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
