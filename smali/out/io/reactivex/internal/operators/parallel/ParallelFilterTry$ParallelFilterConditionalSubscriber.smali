.class final Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;
.source "ParallelFilterTry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelFilterTry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelFilterConditionalSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;-><init>(Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    .line 200
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    .line 270
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->done:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->done:Z

    .line 272
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 260
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 261
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->done:Z

    .line 265
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 206
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 208
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {p1, p0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_f
    return-void
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 214
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->done:Z

    const/4 v1, 0x0

    if-nez v0, :cond_67

    const-wide/16 v2, 0x0

    :cond_7
    const/4 v0, 0x1

    .line 221
    :try_start_8
    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v4, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_1b

    if-eqz v2, :cond_19

    .line 252
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    invoke-interface {v2, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    return v0

    :catch_1b
    move-exception v4

    .line 223
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v5, 0x2

    .line 228
    :try_start_20
    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The errorHandler returned a null item"

    invoke-static {v6, v7}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/parallel/ParallelFailureHandling;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_35} :catch_52

    .line 236
    sget-object v7, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$1;->$SwitchMap$io$reactivex$parallel$ParallelFailureHandling:[I

    invoke-virtual {v6}, Lio/reactivex/parallel/ParallelFailureHandling;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v0, :cond_7

    if-eq v6, v5, :cond_51

    const/4 p1, 0x3

    if-eq v6, p1, :cond_4b

    .line 246
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->cancel()V

    .line 247
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 242
    :cond_4b
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->cancel()V

    .line 243
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->onComplete()V

    :cond_51
    return v1

    :catch_52
    move-exception p1

    .line 230
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 231
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->cancel()V

    .line 232
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    new-array v3, v5, [Ljava/lang/Throwable;

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_67
    return v1
.end method
