.class final Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VSyncSampler"
.end annotation


# static fields
.field private static final CREATE_CHOREOGRAPHER:I = 0x0

.field private static final INSTANCE:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

.field private static final MSG_ADD_OBSERVER:I = 0x1

.field private static final MSG_REMOVE_OBSERVER:I = 0x2


# instance fields
.field private choreographer:Landroid/view/Choreographer;

.field private final choreographerOwnerThread:Landroid/os/HandlerThread;

.field private final handler:Landroid/os/Handler;

.field private observerCount:I

.field public volatile sampledVsyncTimeNs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 483
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->INSTANCE:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 495
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 496
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:FrameReleaseChoreographer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographerOwnerThread:Landroid/os/HandlerThread;

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographerOwnerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 498
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographerOwnerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private addObserverInternal()V
    .registers 3

    .line 550
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    .line 551
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    if-ne v0, v1, :cond_15

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_15
    return-void
.end method

.method private createChoreographerInstanceInternal()V
    .registers 2

    .line 546
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public static getInstance()Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;
    .registers 1

    .line 491
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->INSTANCE:Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    return-object v0
.end method

.method private removeObserverInternal()V
    .registers 3

    .line 557
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    .line 558
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    if-nez v0, :cond_1c

    .line 559
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 560
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    :cond_1c
    return-void
.end method


# virtual methods
.method public addObserver()V
    .registers 3

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public doFrame(J)V
    .registers 5

    .line 520
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 521
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Landroid/view/Choreographer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 526
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_14

    if-eq p1, v0, :cond_10

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 536
    :cond_c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->removeObserverInternal()V

    return v0

    .line 532
    :cond_10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->addObserverInternal()V

    return v0

    .line 528
    :cond_14
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->createChoreographerInstanceInternal()V

    return v0
.end method

.method public removeObserver()V
    .registers 3

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
