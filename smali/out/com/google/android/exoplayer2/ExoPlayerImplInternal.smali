.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;
.implements Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Sender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;
    }
.end annotation


# static fields
.field private static final ACTIVE_INTERVAL_MS:I = 0xa

.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MIN_RENDERER_SLEEP_DURATION_MS:J = 0x7d0L

.field private static final MSG_ADD_MEDIA_SOURCES:I = 0x12

.field private static final MSG_ATTEMPT_ERROR_RECOVERY:I = 0x19

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field private static final MSG_MOVE_MEDIA_SOURCES:I = 0x13

.field private static final MSG_PERIOD_PREPARED:I = 0x8

.field private static final MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL:I = 0x10

.field private static final MSG_PLAYLIST_UPDATE_REQUESTED:I = 0x16

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_RELEASE:I = 0x7

.field private static final MSG_REMOVE_MEDIA_SOURCES:I = 0x14

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SEND_MESSAGE:I = 0xe

.field private static final MSG_SEND_MESSAGE_TO_TARGET_THREAD:I = 0xf

.field private static final MSG_SET_FOREGROUND_MODE:I = 0xd

.field private static final MSG_SET_MEDIA_SOURCES:I = 0x11

.field private static final MSG_SET_OFFLOAD_SCHEDULING_ENABLED:I = 0x18

.field private static final MSG_SET_PAUSE_AT_END_OF_WINDOW:I = 0x17

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SET_REPEAT_MODE:I = 0xb

.field private static final MSG_SET_SEEK_PARAMETERS:I = 0x5

.field private static final MSG_SET_SHUFFLE_ENABLED:I = 0xc

.field private static final MSG_SET_SHUFFLE_ORDER:I = 0x15

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x9

.field private static final MSG_STOP:I = 0x6

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private final backBufferDurationUs:J

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private deliverPendingMessageAtStartPositionRequired:Z

.field private final emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field private enabledRendererCount:I

.field private foregroundMode:Z

.field private final handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isRebuffering:Z

.field private final livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private final mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

.field private final mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

.field private nextPendingMessageIndexHint:I

.field private offloadSchedulingEnabled:Z

.field private pauseAtEndOfWindow:Z

.field private pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPauseAtEndOfPeriod:Z

.field private pendingRecoverableError:Lcom/google/android/exoplayer2/ExoPlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field private final playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private final playbackLooper:Landroid/os/Looper;

.field private final queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

.field private final releaseTimeoutMs:J

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private repeatMode:I

.field private requestForRendererSleep:Z

.field private final retainBackBufferFromKeyframe:Z

.field private seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field private setForegroundModeTimeoutMs:J

.field private shouldContinueLoading:Z

.field private shuffleModeEnabled:Z

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IZLcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/SeekParameters;Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;)V
    .registers 28
    .param p8    # Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v8, p16

    .line 225
    iput-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 226
    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 227
    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-object v8, p3

    .line 228
    iput-object v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v9, p4

    .line 229
    iput-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 230
    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move/from16 v10, p6

    .line 231
    iput v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    move/from16 v10, p7

    .line 232
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move-object/from16 v10, p9

    .line 233
    iput-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    move-object/from16 v10, p10

    .line 234
    iput-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 235
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseTimeoutMs:J

    .line 236
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    move/from16 v5, p13

    .line 237
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 238
    iput-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 240
    invoke-interface {p4}, Lcom/google/android/exoplayer2/LoadControl;->getBackBufferDurationUs()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 241
    invoke-interface {p4}, Lcom/google/android/exoplayer2/LoadControl;->retainBackBufferFromKeyframe()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 243
    invoke-static {p3}, Lcom/google/android/exoplayer2/PlaybackInfo;->createDummy(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 244
    new-instance v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 245
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    const/4 v5, 0x0

    .line 246
    :goto_59
    array-length v6, v1

    if-ge v5, v6, :cond_6e

    .line 247
    aget-object v6, v1, v5

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/Renderer;->setIndex(I)V

    .line 248
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v8, v1, v5

    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v8

    aput-object v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 250
    :cond_6e
    new-instance v1, Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplayer2/DefaultMediaClock;-><init>(Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 252
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 253
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 254
    invoke-virtual {p2, p0, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    const/4 v1, 0x1

    .line 256
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 258
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 259
    new-instance v2, Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 260
    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-direct {v2, p0, v4, v1}, Lcom/google/android/exoplayer2/MediaSourceList;-><init>(Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceListInfoRefreshListener;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 264
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 265
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 266
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 267
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-interface {v7, v1, p0}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->requestForRendererSleep:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-object p0
.end method

.method private addMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 688
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_f

    .line 690
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->getSize()I

    move-result p2

    .line 691
    :cond_f
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v1

    .line 692
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    .line 689
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    .line 693
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method private attemptErrorRecovery(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 599
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v0, v1, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 603
    :try_start_f
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 605
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 606
    throw p1
.end method

.method private deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1498
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 1502
    :try_start_8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getTarget()Lcom/google/android/exoplayer2/PlayerMessage$Target;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    .line 1504
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :catchall_1b
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    .line 1505
    throw v1
.end method

.method private disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1602
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1605
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->onRendererDisabled(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1606
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1607
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    .line 1608
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    return-void
.end method

.method private doSomeWork()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 912
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 915
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1dd

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1b

    goto/16 :goto_1dd

    .line 922
    :cond_1b
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    const-wide/16 v7, 0xa

    if-nez v3, :cond_29

    .line 925
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    return-void

    :cond_29
    const-string v9, "doSomeWork"

    .line 929
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 931
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 935
    iget-boolean v9, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    if-eqz v9, :cond_a9

    .line 936
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long/2addr v13, v10

    .line 937
    iget-object v9, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v10, v15, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v10, v7

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v9, v10, v11, v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    move v8, v5

    move v9, v8

    move v7, v12

    .line 939
    :goto_4e
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v11, v10

    if-ge v7, v11, :cond_b0

    .line 940
    aget-object v10, v10, v7

    .line 941
    invoke-static {v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v11

    if-nez v11, :cond_5c

    goto :goto_a5

    .line 947
    :cond_5c
    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v10, v4, v5, v13, v14}, Lcom/google/android/exoplayer2/Renderer;->render(JJ)V

    if-eqz v8, :cond_6b

    .line 948
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_6b

    const/4 v8, 0x1

    goto :goto_6c

    :cond_6b
    move v8, v12

    .line 954
    :goto_6c
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v4, v4, v7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    if-eq v4, v5, :cond_78

    const/4 v4, 0x1

    goto :goto_79

    :cond_78
    move v4, v12

    :goto_79
    if-nez v4, :cond_83

    .line 955
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_83

    const/4 v5, 0x1

    goto :goto_84

    :cond_83
    move v5, v12

    :goto_84
    if-nez v4, :cond_97

    if-nez v5, :cond_97

    .line 957
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v4

    if-nez v4, :cond_97

    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_95

    goto :goto_97

    :cond_95
    move v4, v12

    goto :goto_98

    :cond_97
    :goto_97
    const/4 v4, 0x1

    :goto_98
    if-eqz v9, :cond_9e

    if-eqz v4, :cond_9e

    const/4 v5, 0x1

    goto :goto_9f

    :cond_9e
    move v5, v12

    :goto_9f
    if-nez v4, :cond_a4

    .line 960
    invoke-interface {v10}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    :cond_a4
    move v9, v5

    :goto_a5
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_4e

    .line 964
    :cond_a9
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 967
    :cond_b0
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    if-eqz v8, :cond_cd

    .line 968
    iget-boolean v7, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v7, :cond_cd

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v4, v7

    if-eqz v7, :cond_cb

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_cd

    :cond_cb
    const/4 v4, 0x1

    goto :goto_ce

    :cond_cd
    move v4, v12

    :goto_ce
    if-eqz v4, :cond_de

    .line 973
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v5, :cond_de

    .line 974
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 975
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    const/4 v7, 0x5

    invoke-direct {v0, v12, v5, v12, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V

    :cond_de
    const/4 v5, 0x3

    if-eqz v4, :cond_ee

    .line 981
    iget-object v4, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-eqz v4, :cond_ee

    .line 982
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 983
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_137

    .line 984
    :cond_ee
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_10b

    .line 985
    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldTransitionToReadyState(Z)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 986
    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    const/4 v4, 0x0

    .line 987
    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 988
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_137

    .line 989
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_137

    .line 991
    :cond_10b
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne v4, v5, :cond_137

    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v4, :cond_11c

    .line 992
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v4

    if-eqz v4, :cond_11e

    goto :goto_137

    :cond_11c
    if-nez v9, :cond_137

    .line 993
    :cond_11e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    const/4 v4, 0x2

    .line 994
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 995
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    if-eqz v4, :cond_134

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifyTrackSelectionRebuffer()V

    .line 997
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->notifyRebuffer()V

    .line 999
    :cond_134
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 1002
    :cond_137
    :goto_137
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_184

    move v4, v12

    .line 1003
    :goto_13f
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v8, v7

    if-ge v4, v8, :cond_164

    .line 1004
    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v7

    if-eqz v7, :cond_161

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v7, v7, v4

    .line 1005
    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v8, v8, v4

    if-ne v7, v8, :cond_161

    .line 1006
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    :cond_161
    add-int/lit8 v4, v4, 0x1

    goto :goto_13f

    .line 1009
    :cond_164
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-nez v3, :cond_184

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    const-wide/32 v7, 0x7a120

    cmp-long v3, v3, v7

    if-gez v3, :cond_184

    .line 1011
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v3

    if-nez v3, :cond_17c

    goto :goto_184

    .line 1015
    :cond_17c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1018
    :cond_184
    :goto_184
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    if-eq v3, v4, :cond_196

    .line 1019
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithOffloadSchedulingEnabled(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1023
    :cond_196
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v3

    if-eqz v3, :cond_1a2

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v3, v5, :cond_1a9

    :cond_1a2
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b2

    :cond_1a9
    const-wide/16 v3, 0xa

    .line 1025
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeScheduleWakeup(JJ)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    goto :goto_1c9

    .line 1026
    :cond_1b2
    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    if-eqz v3, :cond_1c2

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v3, v6, :cond_1c2

    const-wide/16 v3, 0x3e8

    .line 1027
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_1c8

    .line 1029
    :cond_1c2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    :goto_1c8
    move v1, v12

    .line 1031
    :goto_1c9
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    if-eq v2, v1, :cond_1d7

    .line 1032
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithSleepingForOffload(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1034
    :cond_1d7
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->requestForRendererSleep:Z

    .line 1036
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-void

    .line 918
    :cond_1dd
    :goto_1dd
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    return-void
.end method

.method private enableRenderer(IZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2310
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v1, v1, p1

    .line 2311
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    .line 2314
    :cond_d
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 2315
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1f

    move v9, v5

    goto :goto_20

    :cond_1f
    move v9, v4

    .line 2316
    :goto_20
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v3

    .line 2317
    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v6, v6, p1

    .line 2319
    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v3, v3, p1

    .line 2320
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 2322
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_3f

    move v14, v5

    goto :goto_40

    :cond_3f
    move v14, v4

    :goto_40
    if-nez p2, :cond_46

    if-eqz v14, :cond_46

    move v8, v5

    goto :goto_47

    :cond_46
    move v8, v4

    .line 2326
    :goto_47
    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 2327
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v3, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2334
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v12

    .line 2335
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v15

    move-object v2, v1

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v15

    .line 2327
    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplayer2/Renderer;->enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZZJJ)V

    const/16 v2, 0x67

    .line 2337
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->handleMessage(ILjava/lang/Object;)V

    .line 2354
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->onRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)V

    if-eqz v14, :cond_77

    .line 2357
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->start()V

    :cond_77
    return-void
.end method

.method private enableRenderers()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2286
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([Z)V

    return-void
.end method

.method private enableRenderers([Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2290
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2291
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 2294
    :goto_c
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v3, v4, :cond_21

    .line 2295
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 2296
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->reset()V

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2300
    :cond_21
    :goto_21
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_34

    .line 2301
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2302
    aget-boolean v3, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderer(IZ)V

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_34
    const/4 p1, 0x1

    .line 2305
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->allRenderersEnabled:Z

    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1596
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1597
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->stop()V

    :cond_a
    return-void
.end method

.method private extractMetadataFromTrackSelectionArray([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 2269
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 2271
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    if-ge v3, v1, :cond_2b

    aget-object v5, p1, v3

    if-eqz v5, :cond_28

    .line 2273
    invoke-interface {v5, v2}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 2274
    iget-object v6, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v6, :cond_22

    .line 2275
    new-instance v5, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v6, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_28

    .line 2277
    :cond_22
    iget-object v4, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v4, 0x1

    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_2b
    if-eqz v4, :cond_32

    .line 2282
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_36

    :cond_32
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_36
    return-object p1
.end method

.method private getCurrentLiveOffsetUs()J
    .registers 5

    .line 1040
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getLiveOffsetUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFormats(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 2795
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 2796
    :goto_9
    new-array v2, v1, [Lcom/google/android/exoplayer2/Format;

    :goto_b
    if-ge v0, v1, :cond_16

    .line 2798
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    return-object v2
.end method

.method private getLiveOffsetUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J
    .registers 7

    .line 1045
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1046
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1047
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_29

    goto :goto_41

    .line 1050
    :cond_29
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1051
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_41
    :goto_41
    return-wide v0
.end method

.method private getMaxRendererReadPositionUs()J
    .registers 10

    .line 1856
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1860
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    .line 1861
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_14

    return-wide v1

    :cond_14
    const/4 v3, 0x0

    .line 1864
    :goto_15
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    if-ge v3, v5, :cond_47

    .line 1865
    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    .line 1866
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_31

    goto :goto_44

    .line 1870
    :cond_31
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getReadingPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_40

    return-wide v6

    .line 1874
    :cond_40
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_47
    return-wide v1
.end method

.method private getPlaceholderFirstMediaPeriodPosition(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1416
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_15

    .line 1417
    invoke-static {}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1419
    :cond_15
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v6

    .line 1420
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 1421
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 1424
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1425
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v3

    .line 1427
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1428
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1429
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1431
    iget p1, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v4, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v0

    if-ne p1, v0, :cond_58

    .line 1432
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    :cond_58
    move-wide v4, v1

    .line 1435
    :cond_59
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private getTotalBufferedDurationUs()J
    .registers 3

    .line 2385
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalBufferedDurationUs(J)J
    .registers 8

    .line 2389
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    return-wide v1

    .line 2393
    :cond_b
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2394
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 2395
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4

    .line 2138
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 2142
    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 2143
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method private handleLoadingMediaPeriodChanged(Z)V
    .registers 7

    .line 2362
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2364
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    goto :goto_11

    :cond_d
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2365
    :goto_11
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2366
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    .line 2368
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2370
    :cond_25
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-nez v0, :cond_2c

    .line 2372
    iget-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    goto :goto_30

    .line 2373
    :cond_2c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    :goto_30
    iput-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 2374
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    if-nez v2, :cond_3e

    if-eqz p1, :cond_4f

    :cond_3e
    if-eqz v0, :cond_4f

    .line 2375
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_4f

    .line 2379
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    .line 2380
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 2378
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    :cond_4f
    return-void
.end method

.method private handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    .line 1753
    iget-object v10, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v11, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    iget-object v12, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget v13, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v14, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v15, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object/from16 v9, p1

    move-object/from16 v16, v0

    .line 1754
    invoke-static/range {v9 .. v16}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePositionForPlaylistChange(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Lcom/google/android/exoplayer2/MediaPeriodQueue;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-result-object v9

    .line 1763
    iget-object v10, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1764
    iget-wide v11, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    .line 1765
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    .line 1766
    iget-wide v13, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    .line 1767
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1768
    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_3a

    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v1, v13, v3

    if-eqz v1, :cond_37

    goto :goto_3a

    :cond_37
    move/from16 v16, v15

    goto :goto_3c

    :cond_3a
    :goto_3a
    move/from16 v16, v2

    :goto_3c
    const/4 v5, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 1771
    :try_start_42
    iget-boolean v1, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z

    if-eqz v1, :cond_53

    .line 1772
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v1, v2, :cond_50

    const/4 v1, 0x4

    .line 1773
    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1775
    :cond_50
    invoke-direct {v8, v15, v15, v15, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    :cond_53
    if-nez v16, :cond_6b

    .line 1783
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v3, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1784
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getMaxRendererReadPositionUs()J

    move-result-wide v19
    :try_end_5d
    .catchall {:try_start_42 .. :try_end_5d} :catchall_e7

    move-object/from16 v2, p1

    move-wide/from16 v5, v19

    .line 1783
    :try_start_61
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateQueuedPeriods(Lcom/google/android/exoplayer2/Timeline;JJ)Z

    move-result v0

    if-nez v0, :cond_97

    .line 1785
    invoke-direct {v8, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_97

    .line 1787
    :cond_6b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_97

    .line 1789
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    :goto_77
    if-eqz v1, :cond_92

    .line 1792
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 1793
    iget-object v2, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {v2, v7, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 1795
    :cond_8d
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto :goto_77

    .line 1797
    :cond_92
    invoke-direct {v8, v10, v13, v14, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v0
    :try_end_96
    .catchall {:try_start_61 .. :try_end_96} :catchall_e4

    move-wide v13, v0

    .line 1800
    :cond_97
    :goto_97
    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1805
    iget-boolean v0, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v0, :cond_a5

    move-wide/from16 v17, v13

    :cond_a5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object v9, v7

    move-wide/from16 v6, v17

    .line 1800
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    if-nez v16, :cond_ba

    .line 1808
    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v0, v11, v0

    if-eqz v0, :cond_c5

    :cond_ba
    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v13

    move-wide v5, v11

    .line 1811
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1813
    :cond_c5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 1814
    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v8, v9, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePositions(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V

    .line 1816
    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1817
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e0

    const/4 v6, 0x0

    .line 1819
    iput-object v6, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 1821
    :cond_e0
    invoke-direct {v8, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void

    :catchall_e4
    move-exception v0

    const/4 v6, 0x0

    goto :goto_e9

    :catchall_e7
    move-exception v0

    move-object v6, v5

    .line 1800
    :goto_e9
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1805
    iget-boolean v1, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v1, :cond_f7

    move-wide/from16 v17, v13

    :cond_f7
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object v15, v6

    move-object v9, v7

    move-wide/from16 v6, v17

    .line 1800
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    if-nez v16, :cond_10d

    .line 1808
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v1, v11, v1

    if-eqz v1, :cond_118

    :cond_10d
    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v13

    move-wide v5, v11

    .line 1811
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1813
    :cond_118
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 1814
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v8, v9, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePositions(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V

    .line 1816
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1817
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_132

    .line 1819
    iput-object v15, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    :cond_132
    const/4 v1, 0x0

    .line 1821
    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1822
    throw v0
.end method

.method private handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2115
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->isLoading(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 2119
    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 2120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 2121
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2120
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->handlePrepared(FLcom/google/android/exoplayer2/Timeline;)V

    .line 2123
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 2122
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 2124
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-ne p1, v0, :cond_4e

    .line 2126
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 2127
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers()V

    .line 2128
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    move-object v1, p0

    .line 2129
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2134
    :cond_4e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method private handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    if-eqz p3, :cond_12

    if-eqz p4, :cond_a

    .line 2164
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 2166
    :cond_a
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2168
    :cond_12
    iget p3, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateTrackSelectionPlaybackSpeed(F)V

    .line 2169
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p4, :cond_29

    aget-object v1, p3, v0

    if-eqz v1, :cond_26

    .line 2171
    iget v2, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-interface {v1, p2, v2}, Lcom/google/android/exoplayer2/Renderer;->setPlaybackSpeed(FF)V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_29
    return-void
.end method

.method private handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2149
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V

    return-void
.end method

.method private handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;
    .registers 18
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v5, p4

    .line 2225
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v1, p2, v3

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2228
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    :goto_1e
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 2229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2230
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 2231
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 2232
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2233
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 2234
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-nez v1, :cond_42

    .line 2237
    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_46

    .line 2238
    :cond_42
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    :goto_46
    if-nez v1, :cond_4b

    .line 2241
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_4f

    .line 2242
    :cond_4b
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v4

    .line 2243
    :goto_4f
    iget-object v7, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->extractMetadataFromTrackSelectionArray([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    if-eqz v1, :cond_67

    .line 2245
    iget-object v8, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v8, v8, v5

    if-eqz v8, :cond_67

    .line 2247
    iget-object v8, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 2248
    invoke-virtual {v8, v5, v6}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    :cond_67
    move-object v9, v3

    move-object v10, v4

    move-object v11, v7

    goto :goto_80

    .line 2250
    :cond_6b
    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7d

    .line 2252
    sget-object v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 2253
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 2254
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    :cond_7d
    move-object v9, v1

    move-object v10, v3

    move-object v11, v4

    .line 2257
    :goto_80
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2261
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v7

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    .line 2257
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    return-object v1
.end method

.method private hasReadingPeriodFinishedReading()Z
    .registers 7

    .line 2090
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2091
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    move v1, v2

    .line 2094
    :goto_d
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v3

    if-ge v1, v4, :cond_2b

    .line 2095
    aget-object v3, v3, v1

    .line 2096
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v4, v4, v1

    .line 2097
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    if-ne v5, v4, :cond_2a

    if-eqz v4, :cond_27

    .line 2098
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2a
    :goto_2a
    return v2

    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method private isLoadingPossible()Z
    .registers 7

    .line 2202
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2206
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private static isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z
    .registers 1

    .line 2804
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private isTimelineReady()Z
    .registers 6

    .line 1744
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1745
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    .line 1746
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_27

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_25

    .line 1749
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method private maybeContinueLoading()V
    .registers 4

    .line 2178
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 2179
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_15

    .line 2180
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->continueLoading(J)V

    .line 2182
    :cond_15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateIsLoading()V

    return-void
.end method

.method private maybeNotifyPlaybackInfoChanged()V
    .registers 3

    .line 646
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$100(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 649
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    :cond_1f
    return-void
.end method

.method private maybeScheduleWakeup(JJ)Z
    .registers 6

    .line 1070
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->requestForRendererSleep:Z

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 1074
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    const/4 p1, 0x1

    return p1
.end method

.method private maybeTriggerPendingMessages(JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1533
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ff

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_ff

    .line 1538
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    .line 1540
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 1544
    :cond_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1545
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1546
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_46

    .line 1548
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_47

    :cond_46
    move-object v3, v2

    :goto_47
    if-eqz v3, :cond_66

    .line 1549
    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v4, v0, :cond_57

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_66

    iget-wide v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_66

    :cond_57
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_46

    .line 1555
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_47

    .line 1558
    :cond_66
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_77

    .line 1559
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_78

    :cond_77
    move-object v3, v2

    :goto_78
    if-eqz v3, :cond_9f

    .line 1561
    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v4, :cond_9f

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v4, v0, :cond_8c

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_9f

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_9f

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    .line 1568
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_77

    .line 1569
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_78

    :cond_9f
    :goto_9f
    if-eqz v3, :cond_fd

    .line 1573
    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v4, :cond_fd

    iget v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_fd

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_fd

    iget-wide v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v4, v4, p3

    if-gtz v4, :cond_fd

    .line 1579
    :try_start_b5
    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_e6

    .line 1581
    iget-object v4, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v4

    if-nez v4, :cond_ce

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_cb

    goto :goto_ce

    :cond_cb
    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    .line 1582
    :cond_ce
    :goto_ce
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1588
    :goto_d3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_e4

    .line 1589
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_9f

    :cond_e4
    move-object v3, v2

    goto :goto_9f

    :catchall_e6
    move-exception p1

    .line 1581
    iget-object p2, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result p2

    if-nez p2, :cond_f7

    iget-object p2, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_fc

    .line 1582
    :cond_f7
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1586
    :cond_fc
    throw p1

    .line 1592
    :cond_fd
    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    :cond_ff
    :goto_ff
    return-void
.end method

.method private maybeUpdateLoadingPeriod()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 1893
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->shouldLoadNextMediaPeriod()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1895
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getNextMediaPeriodInfo(JLcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 1897
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 1901
    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->getAllocator()Lcom/google/android/exoplayer2/upstream/Allocator;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v9, v0

    .line 1898
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->enqueueNextMediaPeriodHolder([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/MediaSourceList;Lcom/google/android/exoplayer2/MediaPeriodInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 1905
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 1906
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-ne v0, v1, :cond_46

    .line 1907
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :cond_46
    const/4 v0, 0x0

    .line 1909
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1912
    :cond_4a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_58

    .line 1915
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 1916
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateIsLoading()V

    goto :goto_5b

    .line 1918
    :cond_58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    :goto_5b
    return-void
.end method

.method private maybeUpdatePlayingPeriod()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2037
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldAdvancePlayingPeriod()Z

    move-result v2

    if-eqz v2, :cond_5b

    if-eqz v1, :cond_d

    .line 2040
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 2042
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 2043
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 2044
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v5, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v8, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->requestedContentPositionUs:J

    move-object v4, p0

    .line 2045
    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2050
    iget-object v3, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz v3, :cond_34

    move v3, v0

    goto :goto_35

    :cond_34
    const/4 v3, 0x3

    .line 2053
    :goto_35
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 2054
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v6, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v8, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V

    .line 2060
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2061
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    const/4 v1, 0x1

    goto :goto_2

    :cond_5b
    return-void
.end method

.method private maybeUpdateReadingPeriod()V
    .registers 9

    .line 1923
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1928
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9e

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_16

    goto/16 :goto_9e

    .line 1947
    :cond_16
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->hasReadingPeriodFinishedReading()Z

    move-result v1

    if-nez v1, :cond_1d

    return-void

    .line 1951
    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_34

    iget-wide v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1952
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_34

    return-void

    .line 1957
    :cond_34
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 1958
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advanceReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 1959
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v3

    .line 1961
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_59

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1962
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-eqz v1, :cond_59

    .line 1965
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setAllRendererStreamsFinal()V

    return-void

    :cond_59
    move v1, v2

    .line 1968
    :goto_5a
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v1, v4, :cond_9d

    .line 1969
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v4

    .line 1970
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v5

    if-eqz v4, :cond_9a

    .line 1971
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v4

    if-nez v4, :cond_9a

    .line 1972
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v4

    const/4 v6, 0x7

    if-ne v4, v6, :cond_80

    const/4 v4, 0x1

    goto :goto_81

    :cond_80
    move v4, v2

    .line 1973
    :goto_81
    iget-object v6, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v6, v6, v1

    .line 1974
    iget-object v7, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v7, v7, v1

    if-eqz v5, :cond_93

    .line 1975
    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    if-eqz v4, :cond_9a

    .line 1981
    :cond_93
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_9d
    return-void

    .line 1931
    :cond_9e
    :goto_9e
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-nez v1, :cond_a8

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_c7

    .line 1932
    :cond_a8
    :goto_a8
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v1

    if-ge v2, v3, :cond_c7

    .line 1933
    aget-object v1, v1, v2

    .line 1934
    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v3, v3, v2

    if-eqz v3, :cond_c4

    .line 1938
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    if-ne v4, v3, :cond_c4

    .line 1939
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 1940
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    :cond_c4
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    :cond_c7
    return-void
.end method

.method private maybeUpdateReadingRenderers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1988
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1989
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1990
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eq v1, v0, :cond_1e

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->allRenderersEnabled:Z

    if-eqz v0, :cond_15

    goto :goto_1e

    .line 1995
    :cond_15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->replaceStreamsOrDisableRendererForTransition()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1996
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private mediaSourceListUpdateRequestedInternal()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->createTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method private moveMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 699
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 700
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->moveMediaSourceRange(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    .line 705
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method private notifyTrackSelectionDiscontinuity()V
    .registers 6

    .line 1699
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 1701
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 1703
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onDiscontinuity()V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1706
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private notifyTrackSelectionPlayWhenReadyChanged(Z)V
    .registers 7

    .line 726
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 728
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 730
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 733
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private notifyTrackSelectionRebuffer()V
    .registers 6

    .line 900
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 902
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 904
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onRebuffer()V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 907
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private prepareInternal()V
    .registers 4

    .line 654
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    const/4 v0, 0x0

    .line 655
    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onPrepared()V

    .line 661
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 662
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getTransferListener()Lcom/google/android/exoplayer2/upstream/TransferListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/MediaSourceList;->prepare(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method private releaseInternal()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1324
    invoke-direct {p0, v1, v0, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1329
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/LoadControl;->onReleased()V

    .line 1330
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1331
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1332
    monitor-enter p0

    .line 1333
    :try_start_13
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 1334
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1335
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private removeMediaItemsInternal(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 711
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/MediaSourceList;->removeMediaSourceRange(IILcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    .line 712
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method private replaceStreamsOrDisableRendererForTransition()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2001
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2002
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 2004
    :goto_d
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_5e

    .line 2005
    aget-object v8, v5, v3

    .line 2006
    invoke-static {v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_5b

    .line 2010
    :cond_1c
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_28

    move v5, v7

    goto :goto_29

    :cond_28
    move v5, v2

    .line 2011
    :goto_29
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_32

    if-nez v5, :cond_32

    goto :goto_5b

    .line 2016
    :cond_32
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v5

    if-nez v5, :cond_50

    .line 2018
    iget-object v5, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 2019
    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v10, v5, v3

    .line 2022
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v11

    .line 2023
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v13

    .line 2019
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/Renderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JJ)V

    goto :goto_5b

    .line 2024
    :cond_50
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 2026
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    goto :goto_5b

    :cond_5a
    move v4, v7

    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_5e
    xor-int/lit8 v0, v4, 0x1

    return v0
.end method

.method private reselectTracksInternal()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1612
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 1614
    iget-object v1, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 1615
    iget-object v2, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    const/4 v7, 0x1

    move v3, v7

    :goto_18
    if-eqz v1, :cond_e7

    .line 1619
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v4, :cond_20

    goto/16 :goto_e7

    .line 1623
    :cond_20
    iget-object v4, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->selectTracks(FLcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v9

    .line 1624
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Z

    move-result v4

    const/4 v14, 0x0

    if-nez v4, :cond_de

    const/4 v15, 0x4

    if-eqz v3, :cond_ae

    .line 1637
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v4

    .line 1638
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v12

    .line 1640
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v5, v0, [Z

    .line 1641
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-object v8, v4

    move-object v13, v5

    .line 1642
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v8

    .line 1644
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    move-object/from16 v0, p0

    move-wide v2, v8

    move-object v12, v4

    move-wide v4, v10

    .line 1645
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1647
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v0, v15, :cond_7a

    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_7a

    .line 1649
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 1650
    invoke-direct {v6, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1653
    :cond_7a
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    .line 1654
    :goto_7f
    iget-object v1, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    if-ge v14, v2, :cond_aa

    .line 1655
    aget-object v1, v1, v14

    .line 1656
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v2

    aput-boolean v2, v0, v14

    .line 1657
    iget-object v2, v12, Lcom/google/android/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v2, v2, v14

    .line 1658
    aget-boolean v3, v0, v14

    if-eqz v3, :cond_a7

    .line 1659
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v3

    if-eq v2, v3, :cond_9e

    .line 1661
    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    goto :goto_a7

    .line 1662
    :cond_9e
    aget-boolean v2, v13, v14

    if-eqz v2, :cond_a7

    .line 1664
    iget-wide v2, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    :cond_a7
    :goto_a7
    add-int/lit8 v14, v14, 0x1

    goto :goto_7f

    .line 1668
    :cond_aa
    invoke-direct {v6, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([Z)V

    goto :goto_c8

    .line 1671
    :cond_ae
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 1672
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_c8

    .line 1673
    iget-object v0, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1674
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1675
    invoke-virtual {v1, v9, v2, v3, v14}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->applyTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;JZ)J

    .line 1678
    :cond_c8
    :goto_c8
    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1679
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v0, v15, :cond_dd

    .line 1680
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1681
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1682
    iget-object v0, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_dd
    return-void

    :cond_de
    if-ne v1, v2, :cond_e1

    move v3, v14

    .line 1632
    :cond_e1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    goto/16 :goto_18

    :cond_e7
    :goto_e7
    return-void
.end method

.method private resetInternal(ZZZZ)V
    .registers 38

    move-object/from16 v1, p0

    .line 1343
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    const/4 v2, 0x0

    .line 1344
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 1345
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->stop()V

    const-wide/16 v3, 0x0

    .line 1346
    iput-wide v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1347
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v3

    move v5, v2

    :goto_18
    const-string v6, "ExoPlayerImplInternal"

    if-ge v5, v4, :cond_2d

    aget-object v0, v3, v5

    .line 1349
    :try_start_1e
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V
    :try_end_21
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_1e .. :try_end_21} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception v0

    goto :goto_25

    :catch_24
    move-exception v0

    :goto_25
    const-string v7, "Disable failed."

    .line 1352
    invoke-static {v6, v7, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2d
    if-eqz p1, :cond_45

    .line 1356
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v3

    move v5, v2

    :goto_33
    if-ge v5, v4, :cond_45

    aget-object v0, v3, v5

    .line 1358
    :try_start_37
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->reset()V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_42

    :catch_3b
    move-exception v0

    move-object v7, v0

    const-string v0, "Reset failed."

    .line 1361
    invoke-static {v6, v0, v7}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 1365
    :cond_45
    iput v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 1367
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1368
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 1370
    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v7, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-static {v5, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseRequestedContentPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 1371
    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    goto :goto_64

    .line 1372
    :cond_60
    iget-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    :goto_64
    const/4 v7, 0x0

    if-eqz p2, :cond_95

    .line 1375
    iput-object v7, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 1376
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1377
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPosition(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v0

    .line 1378
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1379
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 1381
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    const/4 v0, 0x1

    goto :goto_8f

    :cond_8e
    move v0, v2

    :goto_8f
    move-object/from16 v21, v3

    move-wide/from16 v29, v4

    move-wide v13, v8

    goto :goto_9b

    :cond_95
    move-object/from16 v21, v0

    move v0, v2

    move-wide/from16 v29, v3

    move-wide v13, v5

    .line 1386
    :goto_9b
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->clear()V

    .line 1387
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 1389
    new-instance v2, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v11, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v15, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eqz p4, :cond_b1

    move-object/from16 v16, v7

    goto :goto_b7

    .line 1395
    :cond_b1
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-object/from16 v16, v3

    :goto_b7
    const/16 v17, 0x0

    if-eqz v0, :cond_be

    .line 1397
    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_c2

    :cond_be
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_c2
    move-object/from16 v18, v3

    if-eqz v0, :cond_c9

    .line 1398
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_cd

    :cond_c9
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    :goto_cd
    move-object/from16 v19, v3

    if-eqz v0, :cond_d6

    .line 1399
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_da

    :cond_d6
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_da
    move-object/from16 v20, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move/from16 v22, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v23, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v24, v0

    const-wide/16 v27, 0x0

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object v10, v2

    move-object/from16 v12, v21

    move-wide/from16 v25, v29

    invoke-direct/range {v10 .. v32}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz p3, :cond_107

    .line 1410
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->release()V

    .line 1412
    :cond_107
    iput-object v7, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-void
.end method

.method private resetPendingPauseAtEndOfPeriod()V
    .registers 2

    .line 2067
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2068
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    return-void
.end method

.method private resetRendererPosition(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_d

    .line 1272
    :cond_9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    :goto_d
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1273
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->resetPosition(J)V

    .line 1274
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p2, :cond_2c

    aget-object v1, p1, v0

    .line 1275
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1276
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1279
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifyTrackSelectionDiscontinuity()V

    return-void
.end method

.method private static resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V
    .registers 8

    .line 2664
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2665
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    const/4 v0, 0x1

    .line 2666
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 2667
    iget-wide v0, p3, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    iget-wide v0, p3, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_2b

    :cond_26
    const-wide v0, 0x7fffffffffffffffL

    .line 2668
    :goto_2b
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    return-void
.end method

.method private static resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z
    .registers 22

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2599
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_71

    .line 2602
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_21

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2b

    .line 2604
    :cond_21
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v1

    .line 2606
    :goto_2b
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2610
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/PlayerMessage;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2611
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->getWindowIndex()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 2607
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_50

    return v11

    .line 2621
    :cond_50
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2622
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2623
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2621
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 2625
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_70

    .line 2626
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V

    :cond_70
    return v12

    .line 2631
    :cond_71
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7b

    return v11

    .line 2635
    :cond_7b
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-nez v3, :cond_89

    .line 2637
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)V

    return v12

    .line 2640
    :cond_89
    iput v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 2641
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2642
    iget v2, v10, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    invoke-virtual {v1, v2, v9}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-eqz v1, :cond_c7

    .line 2645
    iget-wide v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 2646
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long v5, v1, v3

    .line 2647
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 2648
    invoke-virtual {v8, v1, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2650
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 2651
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2652
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2653
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2651
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    :cond_c7
    return v12
.end method

.method private resolvePendingMessagePositions(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)V
    .registers 12

    .line 1509
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 1513
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_46

    .line 1514
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1515
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    iget v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v3, p1

    move-object v4, p2

    .line 1514
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1523
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplayer2/PlayerMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    .line 1524
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 1528
    :cond_46
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private static resolvePositionForPlaylistChange(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Lcom/google/android/exoplayer2/MediaPeriodQueue;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    .registers 38
    .param p2    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    .line 2417
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2418
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 2419
    invoke-static {}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v0

    .line 2426
    :cond_25
    iget-object v12, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2427
    iget-object v13, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    move-object/from16 v14, p6

    .line 2429
    invoke-static {v8, v11, v14}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseRequestedContentPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2432
    iget-wide v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    goto :goto_36

    .line 2433
    :cond_34
    iget-wide v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    :goto_36
    move-wide v15, v1

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-eqz v9, :cond_96

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move v14, v6

    move-object/from16 v6, p7

    .line 2443
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_61

    .line 2454
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    move/from16 v2, v19

    move v3, v2

    move/from16 v1, v20

    goto :goto_8d

    .line 2457
    :cond_61
    iget-wide v1, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v1, v1, v17

    if-nez v1, :cond_73

    .line 2458
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2459
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v6, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move v0, v6

    move/from16 v1, v19

    goto :goto_80

    .line 2461
    :cond_73
    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2462
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move v0, v14

    move/from16 v1, v20

    .line 2466
    :goto_80
    iget v2, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_88

    move/from16 v2, v20

    goto :goto_8a

    :cond_88
    move/from16 v2, v19

    :goto_8a
    move v3, v1

    move/from16 v1, v19

    :goto_8d
    move/from16 v28, v1

    move/from16 v27, v2

    move/from16 v29, v3

    move v3, v0

    goto/16 :goto_11a

    :cond_96
    move v14, v6

    .line 2468
    iget-object v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 2470
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    :goto_a3
    move v3, v0

    :goto_a4
    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v28

    goto/16 :goto_11a

    .line 2471
    :cond_ac
    invoke-virtual {v7, v13}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v14, :cond_dc

    .line 2475
    iget-object v5, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v13

    move-object/from16 v6, p0

    .line 2476
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_cc

    .line 2487
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    move/from16 v1, v20

    goto :goto_d4

    .line 2492
    :cond_cc
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move/from16 v1, v19

    :goto_d4
    move v3, v0

    move/from16 v28, v1

    move/from16 v27, v19

    move/from16 v29, v27

    goto :goto_11a

    :cond_dc
    if-eqz v0, :cond_118

    cmp-long v0, v15, v17

    if-nez v0, :cond_e9

    .line 2499
    invoke-virtual {v7, v13, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    goto :goto_a3

    .line 2501
    :cond_e9
    iget-object v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2502
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long v4, v15, v0

    .line 2503
    invoke-virtual {v7, v13, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 2505
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2506
    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2507
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move v3, v14

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v20

    goto :goto_11a

    :cond_118
    move v3, v14

    goto :goto_a4

    :goto_11a
    if-eq v3, v14, :cond_13b

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 2517
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2522
    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2523
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object/from16 v0, p3

    move-wide v1, v15

    move-wide/from16 v25, v17

    goto :goto_140

    :cond_13b
    move-object/from16 v0, p3

    move-wide v1, v15

    move-wide/from16 v25, v1

    .line 2529
    :goto_140
    invoke-virtual {v0, v7, v13, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    .line 2530
    iget v3, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v14, :cond_156

    iget v3, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v14, :cond_153

    iget v3, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-lt v3, v4, :cond_153

    goto :goto_156

    :cond_153
    move/from16 v3, v19

    goto :goto_158

    :cond_156
    :goto_156
    move/from16 v3, v20

    .line 2537
    :goto_158
    iget-object v4, v12, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2538
    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_170

    .line 2539
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-nez v4, :cond_170

    .line 2540
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-nez v4, :cond_170

    if-eqz v3, :cond_170

    move/from16 v19, v20

    :cond_170
    if-eqz v19, :cond_173

    move-object v0, v12

    .line 2545
    :cond_173
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_198

    .line 2546
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_182

    .line 2547
    iget-wide v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    goto :goto_198

    .line 2549
    :cond_182
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v1, v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2551
    iget v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v11, v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v2

    if-ne v1, v2, :cond_196

    .line 2552
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    goto :goto_198

    :cond_196
    const-wide/16 v1, 0x0

    :cond_198
    :goto_198
    move-wide/from16 v23, v1

    .line 2557
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-object/from16 v21, v1

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v29}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v1
.end method

.method private static resolveSeekPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;
    .registers 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            "ZIZ",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 2691
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2692
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_e

    return-object v9

    .line 2696
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object v10, v7

    goto :goto_17

    :cond_16
    move-object v10, v1

    .line 2704
    :goto_17
    :try_start_17
    iget v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2705
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_24} :catch_83

    .line 2711
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return-object v1

    .line 2716
    :cond_2b
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_59

    .line 2719
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2720
    iget v2, v8, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    move-object/from16 v11, p5

    invoke-virtual {v10, v2, v11}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-eqz v2, :cond_58

    .line 2723
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2724
    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2725
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_58
    return-object v1

    :cond_59
    move-object/from16 v11, p5

    if-eqz p2, :cond_83

    .line 2733
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 2734
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 2747
    invoke-virtual {p0, v0, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2744
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_83
    :cond_83
    return-object v9
.end method

.method static resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;
    .registers 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2777
    invoke-virtual {p5, p4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    .line 2779
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    move p4, v1

    :goto_c
    if-ge v2, v0, :cond_27

    if-ne p4, v1, :cond_27

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 2782
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v1, :cond_1c

    goto :goto_27

    .line 2788
    :cond_1c
    invoke-virtual {p5, v4}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_27
    :goto_27
    if-ne p4, v1, :cond_2b

    const/4 p0, 0x0

    goto :goto_2f

    .line 2790
    :cond_2b
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2f
    return-object p0
.end method

.method private scheduleNextWork(JJ)V
    .registers 7

    .line 1065
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    .line 1066
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private seekToCurrentPosition(Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 808
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 809
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v3

    .line 814
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_32

    .line 815
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    move-object v1, p0

    move-object v2, v0

    .line 816
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz p1, :cond_32

    .line 819
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_32
    return-void
.end method

.method private seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 1079
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1086
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v4, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v6, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    .line 1087
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_4a

    .line 1098
    iget-object v7, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1099
    invoke-direct {v8, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPosition(Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v7

    .line 1100
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1101
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1103
    iget-object v7, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v9

    move-wide/from16 v18, v4

    move-wide v4, v11

    move-wide/from16 v12, v18

    goto :goto_9e

    .line 1106
    :cond_4a
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1107
    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1109
    iget-wide v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v12, v12, v4

    if-nez v12, :cond_5c

    move-wide v12, v4

    goto :goto_5d

    :cond_5c
    move-wide v12, v10

    .line 1110
    :goto_5d
    iget-object v14, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v15, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v15, v15, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1111
    invoke-virtual {v14, v15, v7, v10, v11}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v7

    .line 1113
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v14

    if-eqz v14, :cond_8f

    .line 1114
    iget-object v4, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v10, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v5, v10}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1116
    iget-object v4, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v5, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    iget v5, v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v4, v5, :cond_8b

    .line 1117
    iget-object v4, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v4

    goto :goto_8c

    :cond_8b
    move-wide v4, v2

    :goto_8c
    move-object v10, v7

    move v7, v9

    goto :goto_9e

    .line 1122
    :cond_8f
    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v4, v14, v4

    if-nez v4, :cond_97

    move v4, v9

    goto :goto_98

    :cond_97
    move v4, v6

    :goto_98
    move-object/from16 v18, v7

    move v7, v4

    move-wide v4, v10

    move-object/from16 v10, v18

    :goto_9e
    const/4 v11, 0x2

    .line 1127
    :try_start_9f
    iget-object v14, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v14, v14, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_ac

    .line 1129
    iput-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    goto :goto_bb

    :cond_ac
    const/4 v0, 0x4

    if-nez v1, :cond_be

    .line 1132
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v1, v9, :cond_b8

    .line 1133
    invoke-direct {v8, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1135
    :cond_b8
    invoke-direct {v8, v6, v9, v6, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    :goto_bb
    move-wide v3, v4

    goto/16 :goto_145

    .line 1143
    :cond_be
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1144
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eqz v1, :cond_e1

    .line 1145
    iget-boolean v14, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v14, :cond_e1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_e1

    .line 1148
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v2, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 1149
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v1

    goto :goto_e2

    :cond_e1
    move-wide v1, v4

    .line 1152
    :goto_e2
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v14

    iget-object v3, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-wide/from16 v16, v1

    iget-wide v0, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    cmp-long v0, v14, v0

    if-nez v0, :cond_117

    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v0, v11, :cond_101

    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_117

    .line 1156
    :cond_101
    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J
    :try_end_105
    .catchall {:try_start_9f .. :try_end_105} :catchall_15b

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v5, v12

    .line 1176
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v7, :cond_116

    .line 1178
    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_116
    return-void

    :cond_117
    move-wide/from16 v0, v16

    goto :goto_11b

    :cond_11a
    move-wide v0, v4

    .line 1160
    :goto_11b
    :try_start_11b
    iget-object v2, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_124

    move v2, v9

    goto :goto_125

    :cond_124
    move v2, v6

    .line 1161
    :goto_125
    invoke-direct {v8, v10, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v14
    :try_end_129
    .catchall {:try_start_11b .. :try_end_129} :catchall_15b

    cmp-long v0, v4, v14

    if-eqz v0, :cond_12e

    move v6, v9

    :cond_12e
    or-int v9, v7, v6

    .line 1167
    :try_start_130
    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v1, p0

    move-object v3, v10

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updateLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V
    :try_end_143
    .catchall {:try_start_130 .. :try_end_143} :catchall_157

    move v7, v9

    move-wide v3, v14

    :goto_145
    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v5, v12

    .line 1176
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v7, :cond_156

    .line 1178
    iget-object v0, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    :cond_156
    return-void

    :catchall_157
    move-exception v0

    move v7, v9

    move-wide v3, v14

    goto :goto_15d

    :catchall_15b
    move-exception v0

    move-wide v3, v4

    :goto_15d
    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v5, v12

    .line 1176
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v7, :cond_16e

    .line 1178
    iget-object v1, v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 1180
    :cond_16e
    throw v0
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1190
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 1187
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZZ)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1200
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    const/4 v0, 0x0

    .line 1201
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    const/4 v1, 0x2

    if-nez p5, :cond_10

    .line 1202
    iget-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p5, p5, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_13

    .line 1203
    :cond_10
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1207
    :cond_13
    iget-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p5

    move-object v2, p5

    :goto_1a
    if-eqz v2, :cond_2c

    .line 1210
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_2c

    .line 1213
    :cond_27
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    goto :goto_1a

    :cond_2c
    :goto_2c
    const-wide/16 v3, 0x0

    if-nez p4, :cond_3c

    if-ne p5, v2, :cond_3c

    if-eqz v2, :cond_65

    .line 1221
    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p4

    cmp-long p1, p4, v3

    if-gez p1, :cond_65

    .line 1222
    :cond_3c
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p4, p1

    move p5, v0

    :goto_40
    if-ge p5, p4, :cond_4a

    aget-object v5, p1, p5

    .line 1223
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplayer2/Renderer;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_40

    :cond_4a
    if-eqz v2, :cond_65

    .line 1227
    :goto_4c
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    if-eq p1, v2, :cond_5a

    .line 1228
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_4c

    .line 1230
    :cond_5a
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 1231
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->setRendererOffset(J)V

    .line 1232
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers()V

    :cond_65
    if-eqz v2, :cond_b6

    .line 1238
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 1239
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez p1, :cond_79

    .line 1240
    iget-object p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 1241
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    goto :goto_af

    .line 1243
    :cond_79
    iget-object p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide p4, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p4, v5

    if-eqz p1, :cond_99

    iget-object p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide p4, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    cmp-long p1, p2, p4

    if-ltz p1, :cond_99

    .line 1246
    iget-object p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 1248
    :cond_99
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz p1, :cond_af

    .line 1249
    iget-object p1, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 1250
    iget-object p3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long p4, p1, p4

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {p3, p4, p5, v2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    move-wide p2, p1

    .line 1254
    :cond_af
    :goto_af
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1255
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_be

    .line 1258
    :cond_b6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->clear()V

    .line 1259
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1262
    :goto_be
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1263
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private sendMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1439
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 1441
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto :goto_51

    .line 1442
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1444
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 1446
    :cond_26
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1447
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v2, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;IZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1455
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_51

    :cond_4d
    const/4 v0, 0x0

    .line 1459
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    :goto_51
    return-void
.end method

.method private sendMessageToTarget(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1465
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_1f

    .line 1466
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1467
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_19

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne p1, v1, :cond_2a

    .line 1470
    :cond_19
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_2a

    .line 1473
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private sendMessageToTargetThread(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 5

    .line 1478
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    .line 1480
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1481
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V

    return-void

    .line 1484
    :cond_1a
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v2, 0x0

    .line 1485
    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$g6dv66qY5BQbNAG_Gwu0Lamb0zs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$g6dv66qY5BQbNAG_Gwu0Lamb0zs;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 1486
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setAllRendererStreamsFinal()V
    .registers 6

    .line 2107
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 2108
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2109
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method private setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 7
    .param p2    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1294
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->foregroundMode:Z

    if-eq v0, p1, :cond_1c

    .line 1295
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_1c

    .line 1297
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 1298
    invoke-static {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 1299
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->reset()V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    if-eqz p2, :cond_2b

    .line 1305
    monitor-enter p0

    const/4 p1, 0x1

    .line 1306
    :try_start_20
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1307
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1308
    monitor-exit p0

    goto :goto_2b

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw p1

    :cond_2b
    :goto_2b
    return-void
.end method

.method private setMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 669
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    .line 670
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    new-instance v1, Lcom/google/android/exoplayer2/PlaylistTimeline;

    .line 673
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v2

    .line 674
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 675
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v2

    .line 676
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$500(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 678
    :cond_29
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    .line 680
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v1

    .line 681
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    .line 679
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->setMediaSources(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    .line 682
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method private setOffloadSchedulingEnabledInternal(Z)V
    .registers 4

    .line 774
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 777
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-nez p1, :cond_1b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_1b

    .line 782
    :cond_14
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_23

    .line 780
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithOffloadSchedulingEnabled(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :goto_23
    return-void
.end method

.method private setPauseAtEndOfWindowInternal(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 763
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 764
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 765
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eq p1, v0, :cond_1f

    const/4 p1, 0x1

    .line 768
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    const/4 p1, 0x0

    .line 769
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    :cond_1f
    return-void
.end method

.method private setPlayWhenReadyInternal(ZIZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 744
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlayWhenReadyChangeReason(I)V

    .line 745
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlayWhenReady(ZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 p2, 0x0

    .line 746
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 747
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifyTrackSelectionPlayWhenReadyChanged(Z)V

    .line 748
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result p1

    if-nez p1, :cond_25

    .line 749
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 750
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_41

    .line 752
    :cond_25
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_36

    .line 753
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 754
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 755
    :cond_36
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-ne p1, p3, :cond_41

    .line 756
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_41
    :goto_41
    return-void
.end method

.method private setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1284
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 1285
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V

    return-void
.end method

.method private setRepeatModeInternal(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 788
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->repeatMode:I

    .line 789
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateRepeatMode(Lcom/google/android/exoplayer2/Timeline;I)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    .line 790
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_12
    const/4 p1, 0x0

    .line 792
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private setSeekParametersInternal(Lcom/google/android/exoplayer2/SeekParameters;)V
    .registers 2

    .line 1289
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    return-void
.end method

.method private setShuffleModeEnabledInternal(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 797
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 798
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->updateShuffleModeEnabled(Lcom/google/android/exoplayer2/Timeline;Z)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    .line 799
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_12
    const/4 p1, 0x0

    .line 801
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private setShuffleOrderInternal(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaSourceList;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    .line 722
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method private setState(I)V
    .registers 3

    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v0, p1, :cond_e

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_e
    return-void
.end method

.method private shouldAdvancePlayingPeriod()Z
    .registers 7

    .line 2073
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2076
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v0, :cond_d

    return v1

    .line 2079
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_16

    return v1

    .line 2083
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2084
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2085
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2b

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->allRenderersEnabled:Z

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method private shouldContinueLoading()Z
    .registers 10

    .line 2186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 2189
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2191
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v6

    .line 2193
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-ne v0, v1, :cond_26

    .line 2194
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_32

    .line 2196
    :cond_26
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2195
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v1, v3

    move-wide v4, v1

    .line 2197
    :goto_32
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 2198
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 2197
    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(JJF)Z

    move-result v0

    return v0
.end method

.method private shouldPlayWhenReady()Z
    .registers 2

    .line 2404
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private shouldTransitionToReadyState(Z)Z
    .registers 13

    .line 1711
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v0, :cond_9

    .line 1713
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_d

    return v0

    .line 1718
    :cond_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    const/4 v1, 0x1

    if-nez p1, :cond_15

    return v1

    .line 1725
    :cond_15
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1726
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v2

    goto :goto_35

    :cond_30
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_35
    move-wide v9, v2

    .line 1728
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 1729
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    if-eqz v2, :cond_4a

    move v2, v1

    goto :goto_4b

    :cond_4a
    move v2, v0

    .line 1733
    :goto_4b
    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez p1, :cond_5b

    move p1, v1

    goto :goto_5c

    :cond_5b
    move p1, v0

    :goto_5c
    if-nez v2, :cond_76

    if-nez p1, :cond_76

    .line 1734
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 1737
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v5

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 1738
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    iget v7, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 1736
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JFZJ)Z

    move-result p1

    if-eqz p1, :cond_77

    :cond_76
    move v0, v1

    :cond_77
    return v0
.end method

.method private shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .registers 7

    .line 1056
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_39

    .line 1059
    :cond_e
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1060
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1061
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v2

    if-eqz p1, :cond_39

    const/4 v1, 0x1

    :cond_39
    :goto_39
    return v1
.end method

.method private static shouldUseRequestedContentPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;)Z
    .registers 5

    .line 2570
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 2571
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2572
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-nez v1, :cond_23

    .line 2573
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2575
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2574
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private startRenderers()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 825
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRebuffering:Z

    .line 826
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->start()V

    .line 827
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_1b

    aget-object v3, v1, v0

    .line 828
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 829
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->start()V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private stopInternal(ZZ)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 1313
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_9

    goto :goto_b

    :cond_9
    move p1, v0

    goto :goto_c

    :cond_b
    :goto_b
    move p1, v1

    :goto_c
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1318
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1319
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/LoadControl;->onStopped()V

    .line 1320
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method private stopRenderers()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->stop()V

    .line 836
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 837
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 838
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method private updateIsLoading()V
    .registers 3

    .line 2214
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 2215
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-nez v1, :cond_17

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 2216
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 2217
    :goto_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-eq v0, v1, :cond_26

    .line 2218
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithIsLoading(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_26
    return-void
.end method

.method private updateLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)V
    .registers 10

    .line 1831
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_68

    .line 1835
    :cond_d
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1836
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1837
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_40

    .line 1839
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1840
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getLiveOffsetUs(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 1839
    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    goto :goto_68

    .line 1842
    :cond_40
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1844
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_5d

    .line 1845
    iget-object p2, p4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1846
    iget-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 1848
    :cond_5d
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 1850
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    :cond_68
    :goto_68
    return-void
.end method

.method private updateLoadControlTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .registers 5

    .line 2400
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    iget-object p2, p2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/LoadControl;->onTracksSelected([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method private updatePeriods()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1881
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplayer2/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaSourceList;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1f

    .line 1885
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1886
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateReadingPeriod()V

    .line 1887
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateReadingRenderers()V

    .line 1888
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdatePlayingPeriod()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private updatePlaybackPositions()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 851
    :cond_9
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->prepared:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1a

    .line 852
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    move-wide v8, v4

    goto :goto_1b

    :cond_1a
    move-wide v8, v2

    :goto_1b
    cmp-long v1, v8, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 855
    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 858
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_65

    .line 859
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    move-object v6, p0

    .line 860
    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 864
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    goto :goto_65

    .line 867
    :cond_41
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 869
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    if-eq v0, v3, :cond_4d

    const/4 v3, 0x1

    goto :goto_4e

    :cond_4d
    move v3, v2

    .line 868
    :goto_4e
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/DefaultMediaClock;->syncAndGetPositionUs(Z)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 870
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 871
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeTriggerPendingMessages(JJ)V

    .line 872
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iput-wide v0, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 876
    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 878
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 881
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 883
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d8

    .line 885
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 887
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getCurrentLiveOffsetUs()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v5

    .line 886
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;->getAdjustedPlaybackSpeed(JJ)F

    move-result v0

    .line 888
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_d8

    .line 889
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 890
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 892
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 890
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;FZZ)V

    :cond_d8
    return-void
.end method

.method private updateTrackSelectionPlaybackSpeed(F)V
    .registers 7

    .line 1687
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 1689
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 1691
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1694
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->getNext()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method private declared-synchronized waitUninterruptibly(Lcom/google/common/base/Supplier;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 622
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    .line 625
    :goto_9
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_35

    if-nez v3, :cond_2a

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_2a

    .line 627
    :try_start_1b
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_35

    goto :goto_21

    :catch_1f
    const/4 p2, 0x1

    move v2, p2

    .line 631
    :goto_21
    :try_start_21
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_9

    :cond_2a
    if-eqz v2, :cond_33

    .line 635
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_35

    .line 637
    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJLcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V

    const/16 p2, 0x12

    const/4 p3, 0x0

    .line 339
    invoke-interface {v0, p2, p1, p3, v8}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)V
    .registers 3

    .line 271
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    return-void
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .registers 5

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0x18

    .line 276
    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 459
    :try_start_6
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_17e

    return v2

    .line 538
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->attemptErrorRecovery(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto/16 :goto_e9

    .line 535
    :pswitch_15
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_1b

    move p1, v3

    goto :goto_1c

    :cond_1b
    move p1, v2

    :goto_1c
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setOffloadSchedulingEnabledInternal(Z)V

    goto/16 :goto_e9

    .line 532
    :pswitch_21
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_27

    move p1, v3

    goto :goto_28

    :cond_27
    move p1, v2

    :goto_28
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPauseAtEndOfWindowInternal(Z)V

    goto/16 :goto_e9

    .line 529
    :pswitch_2d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSourceListUpdateRequestedInternal()V

    goto/16 :goto_e9

    .line 526
    :pswitch_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleOrderInternal(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    goto/16 :goto_e9

    .line 523
    :pswitch_3b
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->removeMediaItemsInternal(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    goto/16 :goto_e9

    .line 520
    :pswitch_48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->moveMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;)V

    goto/16 :goto_e9

    .line 517
    :pswitch_51
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->addMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    goto/16 :goto_e9

    .line 514
    :pswitch_5c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setMediaItemsInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    goto/16 :goto_e9

    .line 505
    :pswitch_65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;Z)V

    goto/16 :goto_e9

    .line 511
    :pswitch_6e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageToTargetThread(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto/16 :goto_e9

    .line 508
    :pswitch_77
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto/16 :goto_e9

    .line 489
    :pswitch_80
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_86

    move v4, v3

    goto :goto_87

    :cond_86
    move v4, v2

    :goto_87
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v4, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_e9

    .line 474
    :pswitch_90
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_96

    move p1, v3

    goto :goto_97

    :cond_96
    move p1, v2

    :goto_97
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    goto :goto_e9

    .line 471
    :pswitch_9b
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    goto :goto_e9

    .line 502
    :pswitch_a1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    goto :goto_e9

    .line 499
    :pswitch_a5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_e9

    .line 496
    :pswitch_ad
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_e9

    .line 541
    :pswitch_b5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    return v3

    .line 493
    :pswitch_b9
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    goto :goto_e9

    .line 486
    :pswitch_bd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/SeekParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setSeekParametersInternal(Lcom/google/android/exoplayer2/SeekParameters;)V

    goto :goto_e9

    .line 483
    :pswitch_c5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto :goto_e9

    .line 480
    :pswitch_cd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    goto :goto_e9

    .line 477
    :pswitch_d5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    goto :goto_e9

    .line 464
    :pswitch_d9
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_df

    move v4, v3

    goto :goto_e0

    :cond_df
    move v4, v2

    :goto_e0
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, p1, v3, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V

    goto :goto_e9

    .line 461
    :pswitch_e6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepareInternal()V

    .line 547
    :goto_e9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V
    :try_end_ec
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_6 .. :try_end_ec} :catch_12d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_ec} :catch_106
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_ec} :catch_ee

    goto/16 :goto_17c

    :catch_ee
    move-exception p1

    .line 586
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 587
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 588
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 589
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 590
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    goto/16 :goto_17c

    :catch_106
    move-exception p1

    .line 575
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 576
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v4

    if-eqz v4, :cond_11b

    .line 579
    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaPeriodId;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 581
    :cond_11b
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    invoke-direct {p0, v2, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 583
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 584
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    goto :goto_17c

    :catch_12d
    move-exception p1

    .line 549
    iget v4, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v4, v3, :cond_142

    .line 550
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v4

    if-eqz v4, :cond_142

    .line 554
    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->info:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaPeriodId;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 557
    :cond_142
    iget-boolean v4, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    if-eqz v4, :cond_161

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v4, :cond_161

    const-string v0, "Recoverable playback error"

    .line 558
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x19

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 563
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_179

    .line 565
    :cond_161
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v4, :cond_16b

    .line 566
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/ExoPlaybackException;->addSuppressed(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    .line 567
    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingRecoverableError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 569
    :cond_16b
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 573
    :goto_179
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    :goto_17c
    return v3

    nop

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_e6
        :pswitch_d9
        :pswitch_d5
        :pswitch_cd
        :pswitch_c5
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_ad
        :pswitch_a5
        :pswitch_a1
        :pswitch_9b
        :pswitch_90
        :pswitch_80
        :pswitch_77
        :pswitch_6e
        :pswitch_65
        :pswitch_5c
        :pswitch_51
        :pswitch_48
        :pswitch_3b
        :pswitch_32
        :pswitch_2d
        :pswitch_21
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method public synthetic lambda$release$0$ExoPlayerImplInternal()Ljava/lang/Boolean;
    .registers 2

    .line 411
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$sendMessageToTargetThread$1$ExoPlayerImplInternal(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 4

    .line 1489
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->deliverMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    :try_end_3
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 1491
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1492
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public moveMediaSources(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 6

    .line 359
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MoveMediaItemsMessage;-><init>(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 361
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 p2, 0x13

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2

    .line 62
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x10

    .line 450
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 451
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPlaylistUpdateRequested()V
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 4

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized release()Z
    .registers 4

    monitor-enter p0

    .line 407
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_22

    .line 410
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 411
    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$aFDQAhe8WjwID2XRaXNBFAVaeIk;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$aFDQAhe8WjwID2XRaXNBFAVaeIk;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseTimeoutMs:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 412
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_25

    monitor-exit p0

    return v0

    :cond_22
    :goto_22
    const/4 v0, 0x1

    .line 408
    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeMediaSources(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 6

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x14

    .line 353
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .registers 7

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 p1, 0x3

    .line 308
    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .registers 4

    monitor-enter p0

    .line 370
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1b

    .line 375
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_28

    .line 376
    monitor-exit p0

    return-void

    :cond_1b
    :goto_1b
    :try_start_1b
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 371
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->markAsProcessed(Z)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_28

    .line 373
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setForegroundMode(Z)Z
    .registers 5

    monitor-enter p0

    .line 385
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    const/4 v1, 0x1

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_40

    :cond_f
    const/16 v0, 0xd

    const/4 v2, 0x0

    if-eqz p1, :cond_1f

    .line 389
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_42

    .line 390
    monitor-exit p0

    return v1

    .line 392
    :cond_1f
    :try_start_1f
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 394
    invoke-interface {v1, v0, v2, v2, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 396
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$WCNOc30RWlKfWWqwDTxwdaoGH-w;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/-$$Lambda$WCNOc30RWlKfWWqwDTxwdaoGH-w;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 397
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_42

    monitor-exit p0

    return p1

    .line 386
    :cond_40
    :goto_40
    monitor-exit p0

    return v1

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMediaSources(Ljava/util/List;IJLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;IJ",
            "Lcom/google/android/exoplayer2/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v8, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;IJLcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V

    const/16 p1, 0x11

    .line 330
    invoke-interface {v0, p1, v8}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPauseAtEndOfWindow(Z)V
    .registers 5

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0x17

    .line 294
    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPlayWhenReady(ZI)V
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x1

    .line 288
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x15

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
