.class final Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;
.super Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
.source "AggregateFutureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AggregateFutureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedAtomicHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;-><init>(Lcom/google/common/util/concurrent/AggregateFutureState$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AggregateFutureState$1;)V
    .registers 2

    .line 158
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;-><init>()V

    return-void
.end method


# virtual methods
.method compareAndSetSeenExceptions(Lcom/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AggregateFutureState;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 162
    monitor-enter p1

    .line 163
    :try_start_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFutureState;->access$200(Lcom/google/common/util/concurrent/AggregateFutureState;)Ljava/util/Set;

    move-result-object v0

    if-ne v0, p2, :cond_a

    .line 164
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AggregateFutureState;->access$202(Lcom/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;)Ljava/util/Set;

    .line 166
    :cond_a
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p2
.end method

.method decrementAndGetRemainingCount(Lcom/google/common/util/concurrent/AggregateFutureState;)I
    .registers 3

    .line 171
    monitor-enter p1

    .line 172
    :try_start_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFutureState;->access$310(Lcom/google/common/util/concurrent/AggregateFutureState;)I

    .line 173
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFutureState;->access$300(Lcom/google/common/util/concurrent/AggregateFutureState;)I

    move-result v0

    monitor-exit p1

    return v0

    :catchall_a
    move-exception v0

    .line 174
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method
