.class final Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRangeLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeConditionalSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;-><init>(JJ)V

    .line 186
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .registers 8

    .line 191
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->end:J

    .line 192
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    .line 194
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    :goto_6
    cmp-long v5, v3, v0

    if-eqz v5, :cond_1a

    .line 195
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-eqz v5, :cond_f

    return-void

    .line 198
    :cond_f
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_6

    .line 200
    :cond_1a
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-eqz v0, :cond_1f

    return-void

    .line 203
    :cond_1f
    invoke-interface {v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    return-void
.end method

.method slowPath(J)V
    .registers 15

    .line 209
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->end:J

    .line 210
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    .line 211
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->downstream:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    const-wide/16 v5, 0x0

    move-wide v7, v2

    move-wide v2, p1

    :cond_a
    move-wide p1, v5

    :cond_b
    :goto_b
    cmp-long v9, p1, v2

    if-eqz v9, :cond_27

    cmp-long v9, v7, v0

    if-eqz v9, :cond_27

    .line 216
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-eqz v9, :cond_18

    return-void

    .line 220
    :cond_18
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_25

    add-long/2addr p1, v10

    :cond_25
    add-long/2addr v7, v10

    goto :goto_b

    :cond_27
    cmp-long v2, v7, v0

    if-nez v2, :cond_33

    .line 228
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->cancelled:Z

    if-nez p1, :cond_32

    .line 229
    invoke-interface {v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    :cond_32
    return-void

    .line 234
    :cond_33
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->get()J

    move-result-wide v2

    cmp-long v9, p1, v2

    if-nez v9, :cond_b

    .line 236
    iput-wide v7, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->index:J

    neg-long p1, p1

    .line 237
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription;->addAndGet(J)J

    move-result-wide v2

    cmp-long p1, v2, v5

    if-nez p1, :cond_a

    return-void
.end method
