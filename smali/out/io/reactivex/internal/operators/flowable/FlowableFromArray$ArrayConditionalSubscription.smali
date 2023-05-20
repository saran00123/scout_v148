.class final Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;
.source "FlowableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayConditionalSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


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
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$BaseArraySubscription;-><init>([Ljava/lang/Object;)V

    .line 197
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 6

    .line 202
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->array:[Ljava/lang/Object;

    .line 203
    array-length v1, v0

    .line 204
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 206
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    :goto_7
    if-eq v3, v1, :cond_23

    .line 207
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-eqz v4, :cond_e

    return-void

    .line 210
    :cond_e
    aget-object v4, v0, v3

    if-nez v4, :cond_1d

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array element is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 215
    :cond_1d
    invoke-interface {v2, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 218
    :cond_23
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-eqz v0, :cond_28

    return-void

    .line 221
    :cond_28
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    return-void
.end method

.method slowPath(J)V
    .registers 13

    .line 227
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->array:[Ljava/lang/Object;

    .line 228
    array-length v1, v0

    .line 229
    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    .line 230
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    const-wide/16 v4, 0x0

    move-wide v6, p1

    :cond_a
    move-wide p1, v4

    :cond_b
    :goto_b
    cmp-long v8, p1, v6

    if-eqz v8, :cond_31

    if-eq v2, v1, :cond_31

    .line 235
    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-eqz v8, :cond_16

    return-void

    .line 239
    :cond_16
    aget-object v8, v0, v2

    if-nez v8, :cond_25

    .line 242
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "array element is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, p1}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 245
    :cond_25
    invoke-interface {v3, v8}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    const-wide/16 v8, 0x1

    add-long/2addr p1, v8

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_31
    if-ne v2, v1, :cond_3b

    .line 254
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->cancelled:Z

    if-nez p1, :cond_3a

    .line 255
    invoke-interface {v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    :cond_3a
    return-void

    .line 260
    :cond_3b
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->get()J

    move-result-wide v6

    cmp-long v8, p1, v6

    if-nez v8, :cond_b

    .line 262
    iput v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->index:I

    neg-long p1, p1

    .line 263
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromArray$ArrayConditionalSubscription;->addAndGet(J)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-nez p1, :cond_a

    return-void
.end method
