.class abstract Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;
.super Lio/reactivex/internal/subscriptions/BasicQueueSubscription;
.source "FlowableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseRangeSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/subscriptions/BasicQueueSubscription<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f442a7d211232e5L


# instance fields
.field volatile cancelled:Z

.field final end:I

.field index:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 54
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicQueueSubscription;-><init>()V

    .line 55
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->index:I

    .line 56
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->end:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->cancelled:Z

    return-void
.end method

.method public final clear()V
    .registers 2

    .line 82
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->end:I

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->index:I

    return-void
.end method

.method abstract fastPath()V
.end method

.method public final isEmpty()Z
    .registers 3

    .line 77
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->index:I

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->end:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final poll()Ljava/lang/Integer;
    .registers 3
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    .line 67
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->index:I

    .line 68
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->end:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    add-int/lit8 v1, v0, 0x1

    .line 71
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->index:I

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 45
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->poll()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final request(J)V
    .registers 7

    .line 87
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 88
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1d

    .line 90
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->fastPath()V

    goto :goto_20

    .line 92
    :cond_1d
    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;->slowPath(J)V

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
