.class public final Lio/reactivex/internal/operators/parallel/ParallelMap;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;,
        Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    .line 41
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->mapper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method public parallelism()I
    .registers 2

    .line 68
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelMap;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 50
    :cond_7
    array-length v0, p1

    .line 52
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_2b

    .line 55
    aget-object v3, p1, v2

    .line 56
    instance-of v4, v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    if-eqz v4, :cond_1f

    .line 57
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;

    check-cast v3, Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->mapper:Lio/reactivex/functions/Function;

    invoke-direct {v4, v3, v5}, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber;-><init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Function;)V

    aput-object v4, v1, v2

    goto :goto_28

    .line 59
    :cond_1f
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;

    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->mapper:Lio/reactivex/functions/Function;

    invoke-direct {v4, v3, v5}, Lio/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V

    aput-object v4, v1, v2

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 63
    :cond_2b
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
