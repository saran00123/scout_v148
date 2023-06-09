.class final Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "FlowableReduce.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReduce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x40b970e193918fd6L


# instance fields
.field final reducer:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 55
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->reducer:Lio/reactivex/functions/BiFunction;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 116
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->cancel()V

    .line 117
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 118
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method public onComplete()V
    .registers 3

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_7

    return-void

    .line 104
    :cond_7
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 106
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    if-eqz v0, :cond_13

    .line 108
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->complete(Ljava/lang/Object;)V

    goto :goto_18

    .line 110
    :cond_13
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :goto_18
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_a

    .line 92
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 95
    :cond_a
    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne v0, v1, :cond_7

    return-void

    .line 75
    :cond_7
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    if-nez v0, :cond_e

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    goto :goto_29

    .line 80
    :cond_e
    :try_start_e
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->reducer:Lio/reactivex/functions/BiFunction;

    invoke-interface {v1, v0, p1}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->value:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_29

    :catch_1d
    move-exception p1

    .line 82
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 84
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->onError(Ljava/lang/Throwable;)V

    :goto_29
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 4

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 65
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_17
    return-void
.end method
