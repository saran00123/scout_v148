.class public Lcom/tutk/IOTC/AVAbort;
.super Ljava/lang/Object;
.source "AVAbort.java"


# instance fields
.field private mAbort:Z

.field private mAbortTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tutk/IOTC/AVAbort;->mAbortTargets:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tutk/IOTC/AVAbort;->mAbort:Z

    return-void
.end method

.method private native AV_API_Abort(J)V
.end method

.method private declared-synchronized onAvailable(J)V
    .registers 4

    monitor-enter p0

    .line 17
    :try_start_1
    iget-boolean v0, p0, Lcom/tutk/IOTC/AVAbort;->mAbort:Z

    if-eqz v0, :cond_9

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/tutk/IOTC/AVAbort;->AV_API_Abort(J)V

    goto :goto_12

    .line 20
    :cond_9
    iget-object v0, p0, Lcom/tutk/IOTC/AVAbort;->mAbortTargets:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 22
    :goto_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onUnavailable(J)V
    .registers 4

    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/tutk/IOTC/AVAbort;->mAbortTargets:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 26
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized abort()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 10
    :try_start_2
    iput-boolean v0, p0, Lcom/tutk/IOTC/AVAbort;->mAbort:Z

    .line 11
    iget-object v0, p0, Lcom/tutk/IOTC/AVAbort;->mAbortTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 12
    invoke-direct {p0, v1, v2}, Lcom/tutk/IOTC/AVAbort;->AV_API_Abort(J)V
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_20

    goto :goto_a

    .line 14
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
