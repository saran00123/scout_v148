.class Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityActionReceiver"
.end annotation


# static fields
.field private static staticInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;


# instance fields
.field private final bandwidthMeters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 479
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 480
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->mainHandler:Landroid/os/Handler;

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
    .registers 4

    const-class v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    monitor-enter v0

    .line 470
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    if-nez v1, :cond_1d

    .line 471
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;-><init>()V

    sput-object v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    .line 472
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 473
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    sget-object v2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    :cond_1d
    sget-object p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->staticInstance:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return-object p0

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private removeClearedReferences()V
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 513
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 514
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    if-nez v1, :cond_1f

    .line 516
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method private updateBandwidthMeter(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V
    .registers 2

    .line 508
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->access$100(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$register$0$DefaultBandwidthMeter$ConnectivityActionReceiver(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V
    .registers 2

    .line 489
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->updateBandwidthMeter(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V

    return-void
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    monitor-enter p0

    .line 494
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->isInitialStickyBroadcast()Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2d

    if-eqz p1, :cond_9

    .line 495
    monitor-exit p0

    return-void

    .line 497
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->removeClearedReferences()V

    const/4 p1, 0x0

    .line 498
    :goto_d
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2b

    .line 499
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 500
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    if-eqz p2, :cond_28

    .line 502
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->updateBandwidthMeter(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_2d

    :cond_28
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 505
    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V
    .registers 4

    monitor-enter p0

    .line 485
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->removeClearedReferences()V

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->bandwidthMeters:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultBandwidthMeter$ConnectivityActionReceiver$5orKCfoWtCCTqIpHqEoV-8DMTWQ;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/upstream/-$$Lambda$DefaultBandwidthMeter$ConnectivityActionReceiver$5orKCfoWtCCTqIpHqEoV-8DMTWQ;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$ConnectivityActionReceiver;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 490
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
