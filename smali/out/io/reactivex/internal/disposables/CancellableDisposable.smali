.class public final Lio/reactivex/internal/disposables/CancellableDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CancellableDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/functions/Cancellable;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f5c453163a88dc2L


# direct methods
.method public constructor <init>(Lio/reactivex/functions/Cancellable;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 44
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/CancellableDisposable;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lio/reactivex/internal/disposables/CancellableDisposable;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/functions/Cancellable;

    if-eqz v0, :cond_1a

    .line 48
    :try_start_f
    invoke-interface {v0}, Lio/reactivex/functions/Cancellable;->cancel()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_1a

    :catch_13
    move-exception v0

    .line 50
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 51
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 39
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/CancellableDisposable;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
