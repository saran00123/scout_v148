.class final Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;
.super Ljava/lang/Object;
.source "FlowableConcatMap.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakScalarSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field once:Z

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/reactivestreams/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->value:Ljava/lang/Object;

    .line 359
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public request(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_17

    .line 364
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->once:Z

    if-nez p1, :cond_17

    const/4 p1, 0x1

    .line 365
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->once:Z

    .line 366
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 367
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatMap$WeakScalarSubscription;->value:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 368
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_17
    return-void
.end method
