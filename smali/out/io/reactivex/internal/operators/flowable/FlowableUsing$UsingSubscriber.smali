.class final Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "FlowableUsing.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableUsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UsingSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x51f0e7a17ed319a6L


# instance fields
.field final disposer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TD;>;"
        }
    .end annotation
.end field

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final eager:Z

.field final resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;Lio/reactivex/functions/Consumer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;TD;",
            "Lio/reactivex/functions/Consumer<",
            "-TD;>;Z)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 89
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 90
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->resource:Ljava/lang/Object;

    .line 91
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposer:Lio/reactivex/functions/Consumer;

    .line 92
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->eager:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 163
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposeAfter()V

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method disposeAfter()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 168
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 170
    :try_start_8
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposer:Lio/reactivex/functions/Consumer;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->resource:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    move-exception v0

    .line 172
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 174
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public onComplete()V
    .registers 3

    .line 136
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->eager:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 139
    :try_start_c
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposer:Lio/reactivex/functions/Consumer;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->resource:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1e

    :catch_14
    move-exception v0

    .line 141
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 142
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 147
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_36

    .line 150
    :cond_29
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 152
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposeAfter()V

    :goto_36
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8

    .line 110
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->eager:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0, v2, v1}, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 114
    :try_start_d
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposer:Lio/reactivex/functions/Consumer;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->resource:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 116
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 121
    :cond_19
    :goto_19
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v3}, Lorg/reactivestreams/Subscription;->cancel()V

    if-eqz v0, :cond_32

    .line 123
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v2

    aput-object v0, v5, v1

    invoke-direct {v4, v5}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_45

    .line 125
    :cond_32
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_45

    .line 128
    :cond_38
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 129
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 130
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposeAfter()V

    :goto_45
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 98
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 99
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_f
    return-void
.end method

.method public request(J)V
    .registers 4

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
