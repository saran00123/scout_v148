.class final Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRangeLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;-><init>(JJ)V

    .line 118
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 8

    .line 123
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->end:J

    .line 124
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 126
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    :goto_6
    cmp-long v5, v3, v0

    if-eqz v5, :cond_1a

    .line 127
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-eqz v5, :cond_f

    return-void

    .line 130
    :cond_f
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_6

    .line 132
    :cond_1a
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-eqz v0, :cond_1f

    return-void

    .line 135
    :cond_1f
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method slowPath(J)V
    .registers 14

    .line 141
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->end:J

    .line 142
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    .line 143
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    const-wide/16 v5, 0x0

    move-wide v7, v2

    move-wide v2, p1

    :cond_a
    move-wide p1, v5

    :cond_b
    :goto_b
    cmp-long v9, p1, v2

    if-eqz v9, :cond_24

    cmp-long v9, v7, v0

    if-eqz v9, :cond_24

    .line 148
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-eqz v9, :cond_18

    return-void

    .line 152
    :cond_18
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v9, 0x1

    add-long/2addr p1, v9

    add-long/2addr v7, v9

    goto :goto_b

    :cond_24
    cmp-long v2, v7, v0

    if-nez v2, :cond_30

    .line 159
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-nez p1, :cond_2f

    .line 160
    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_2f
    return-void

    .line 165
    :cond_30
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->get()J

    move-result-wide v2

    cmp-long v9, p1, v2

    if-nez v9, :cond_b

    .line 167
    iput-wide v7, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    neg-long p1, p1

    .line 168
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->addAndGet(J)J

    move-result-wide v2

    cmp-long p1, v2, v5

    if-nez p1, :cond_a

    return-void
.end method
