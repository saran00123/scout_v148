.class final Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;
.super Ljava/lang/Object;
.source "FlowableSwitchMapCompletable.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchMapCompletableObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;


# instance fields
.field final delayErrors:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/CompletableObserver;

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final inner:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;-><init>(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;)V

    sput-object v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    return-void
.end method

.method constructor <init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/CompletableObserver;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;Z)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    .line 79
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->mapper:Lio/reactivex/functions/Function;

    .line 80
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->delayErrors:Z

    .line 81
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 163
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 164
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->disposeInner()V

    return-void
.end method

.method disposeInner()V
    .registers 3

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-eqz v0, :cond_13

    .line 156
    sget-object v1, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-eq v0, v1, :cond_13

    .line 157
    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;->dispose()V

    :cond_13
    return-void
.end method

.method innerComplete(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;)V
    .registers 4

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 195
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->done:Z

    if-eqz p1, :cond_20

    .line 196
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 198
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_20

    .line 200
    :cond_1b
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method innerError(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;Ljava/lang/Throwable;)V
    .registers 5

    .line 173
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 174
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 175
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->delayErrors:Z

    if-eqz p1, :cond_25

    .line 176
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->done:Z

    if-eqz p1, :cond_37

    .line 177
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 178
    iget-object p2, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {p2, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_37

    .line 181
    :cond_25
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->dispose()V

    .line 182
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 183
    sget-object p2, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq p1, p2, :cond_37

    .line 184
    iget-object p2, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {p2, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    return-void

    .line 190
    :cond_38
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDisposed()Z
    .registers 3

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onComplete()V
    .registers 3

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->done:Z

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_19

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_1e

    .line 149
    :cond_19
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 127
    iget-boolean p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->delayErrors:Z

    if-eqz p1, :cond_10

    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->onComplete()V

    goto :goto_26

    .line 130
    :cond_10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->disposeInner()V

    .line 131
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 132
    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_26

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 137
    :cond_23
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 99
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/CompletableSource;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_31

    .line 107
    new-instance v0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;-><init>(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;)V

    .line 110
    :cond_13
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    .line 111
    sget-object v2, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;

    if-ne v1, v2, :cond_20

    goto :goto_30

    .line 114
    :cond_20
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_2d

    .line 116
    invoke-virtual {v1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver$SwitchMapInnerObserver;->dispose()V

    .line 118
    :cond_2d
    invoke-interface {p1, v0}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    :goto_30
    return-void

    :catch_31
    move-exception p1

    .line 101
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 103
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    .line 87
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 88
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->upstream:Lorg/reactivestreams/Subscription;

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 90
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_17
    return-void
.end method
