.class abstract Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;
.super Lio/reactivex/internal/subscriptions/BasicQueueSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRangeLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseRangeSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/subscriptions/BasicQueueSubscription<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f442a7d211232e5L


# instance fields
.field volatile cancelled:Z

.field final end:J

.field index:J


# direct methods
.method constructor <init>(JJ)V
    .registers 5

    .line 56
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicQueueSubscription;-><init>()V

    .line 57
    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->index:J

    .line 58
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->end:J

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->cancelled:Z

    return-void
.end method

.method public final clear()V
    .registers 3

    .line 84
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->end:J

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->index:J

    return-void
.end method

.method abstract fastPath()V
.end method

.method public final isEmpty()Z
    .registers 5

    .line 79
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->index:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->end:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final poll()Ljava/lang/Long;
    .registers 5
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 69
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->index:J

    .line 70
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->end:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 73
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->index:J

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->poll()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final request(J)V
    .registers 7

    .line 89
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 90
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1d

    .line 92
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->fastPath()V

    goto :goto_20

    .line 94
    :cond_1d
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;->slowPath(J)V

    :cond_20
    :goto_20
    return-void
.end method

.method public final requestFusion(I)I
    .registers 2

    and-int/lit8 p1, p1, 0x1

    return p1
.end method

.method abstract slowPath(J)V
.end method
