.class public Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;
.super Ljava/lang/Object;
.source "DemoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;
.implements Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/SingleSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;
.implements Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
.implements Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;
.implements Lcom/google/android/exoplayer/text/TextRenderer;
.implements Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;
.implements Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Id3MetadataListener;,
        Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$CaptionListener;,
        Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;,
        Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;,
        Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;,
        Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/ExoPlayer$Listener;",
        "Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;",
        "Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;",
        "Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;",
        "Lcom/google/android/exoplayer/SingleSampleSource$EventListener;",
        "Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;",
        "Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;",
        "Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;",
        "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
        "Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;",
        "Lcom/google/android/exoplayer/text/TextRenderer;",
        "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer<",
        "Ljava/util/List<",
        "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
        ">;>;",
        "Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;"
    }
.end annotation


# static fields
.field private static final RENDERER_BUILDING_STATE_BUILDING:I = 0x2

.field private static final RENDERER_BUILDING_STATE_BUILT:I = 0x3

.field private static final RENDERER_BUILDING_STATE_IDLE:I = 0x1

.field public static final RENDERER_COUNT:I = 0x4

.field public static final STATE_BUFFERING:I = 0x3

.field public static final STATE_ENDED:I = 0x5

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PREPARING:I = 0x2

.field public static final STATE_READY:I = 0x4

.field public static final TRACK_DEFAULT:I = 0x0

.field public static final TRACK_DISABLED:I = -0x1

.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_METADATA:I = 0x3

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_VIDEO:I


# instance fields
.field private backgrounded:Z

.field private bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private captionListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$CaptionListener;

.field private codecCounters:Lcom/google/android/exoplayer/CodecCounters;

.field private id3MetadataListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Id3MetadataListener;

.field private infoListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;

.field private internalErrorListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;

.field private lastReportedPlayWhenReady:Z

.field private lastReportedPlaybackState:I

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private final player:Lcom/google/android/exoplayer/ExoPlayer;

.field private final playerControl:Lcom/google/android/exoplayer/util/PlayerControl;

.field private final rendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

.field private rendererBuildingState:I

.field private surface:Landroid/view/Surface;

.field private videoFormat:Lcom/google/android/exoplayer/chunk/Format;

.field private videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

.field private videoTrackToRestore:I


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;)V
    .registers 4

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

    const/4 p1, 0x4

    const/16 v0, 0x3e8

    const/16 v1, 0x1388

    .line 192
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    .line 193
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer/ExoPlayer;->addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 194
    new-instance p1, Lcom/google/android/exoplayer/util/PlayerControl;

    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer/util/PlayerControl;-><init>(Lcom/google/android/exoplayer/ExoPlayer;)V

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->playerControl:Lcom/google/android/exoplayer/util/PlayerControl;

    .line 195
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->mainHandler:Landroid/os/Handler;

    .line 196
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x1

    .line 197
    iput p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->lastReportedPlaybackState:I

    .line 198
    iput p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuildingState:I

    .line 200
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setSelectedTrack(II)V

    return-void
.end method

.method private maybeReportPlayerState()V
    .registers 5

    .line 575
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    .line 576
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getPlaybackState()I

    move-result v1

    .line 577
    iget-boolean v2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->lastReportedPlayWhenReady:Z

    if-ne v2, v0, :cond_12

    iget v2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->lastReportedPlaybackState:I

    if-eq v2, v1, :cond_2c

    .line 578
    :cond_12
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;

    .line 579
    invoke-interface {v3, v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;->onStateChanged(ZI)V

    goto :goto_18

    .line 581
    :cond_28
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->lastReportedPlayWhenReady:Z

    .line 582
    iput v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->lastReportedPlaybackState:I

    :cond_2c
    return-void
.end method

.method private pushSurface(Z)V
    .registers 5

    .line 587
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    if-eqz p1, :cond_10

    .line 592
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->surface:Landroid/view/Surface;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer;->blockingSendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_17

    .line 595
    :cond_10
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->surface:Landroid/view/Surface;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    :goto_17
    return-void
.end method


# virtual methods
.method public addListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;)V
    .registers 3

    .line 208
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blockingClearSurface()V
    .registers 2

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->surface:Landroid/view/Surface;

    const/4 v0, 0x1

    .line 242
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->pushSurface(Z)V

    return-void
.end method

.method public getBackgrounded()Z
    .registers 2

    .line 265
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->backgrounded:Z

    return v0
.end method

.method public getBandwidthMeter()Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    .registers 2

    .line 371
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    return-object v0
.end method

.method public getBufferedPercentage()I
    .registers 2

    .line 389
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCodecCounters()Lcom/google/android/exoplayer/CodecCounters;
    .registers 2

    .line 376
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    return-object v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 381
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 385
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFormat()Lcom/google/android/exoplayer/chunk/Format;
    .registers 2

    .line 366
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->videoFormat:Lcom/google/android/exoplayer/chunk/Format;

    return-object v0
.end method

.method getMainHandler()Landroid/os/Handler;
    .registers 2

    .line 401
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    .line 393
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 397
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .registers 5

    .line 352
    iget v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuildingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return v1

    .line 355
    :cond_6
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    .line 356
    iget v2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuildingState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    return v1

    :cond_15
    return v0
.end method

.method public getPlayerControl()Lcom/google/android/exoplayer/util/PlayerControl;
    .registers 2

    .line 204
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->playerControl:Lcom/google/android/exoplayer/util/PlayerControl;

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .registers 3

    .line 254
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->getSelectedTrack(I)I

    move-result p1

    return p1
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 237
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getTrackCount(I)I
    .registers 3

    .line 246
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackCount(I)I

    move-result p1

    return p1
.end method

.method public getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;
    .registers 4

    .line 250
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method public onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .registers 3

    .line 474
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->internalErrorListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;

    if-eqz v0, :cond_7

    .line 475
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;->onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    :cond_7
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .registers 12

    .line 488
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->internalErrorListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;

    if-eqz v0, :cond_a

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 489
    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;->onAudioTrackUnderrun(IJJ)V

    :cond_a
    return-void
.end method

.method public onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .registers 3

    .line 481
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->internalErrorListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;

    if-eqz v0, :cond_7

    .line 482
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;->onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    :cond_7
    return-void
.end method

.method public onAvailableRangeChanged(ILcom/google/android/exoplayer/TimeRange;)V
    .registers 4

    .line 531
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->infoListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;

    if-eqz v0, :cond_7

    .line 532
    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;->onAvailableRangeChanged(ILcom/google/android/exoplayer/TimeRange;)V

    :cond_7
    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .registers 12

    .line 434
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->infoListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;

    if-eqz v0, :cond_a

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 435
    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;->onBandwidthSample(IJJ)V

    :cond_a
    return-void
.end method

.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .registers 3

    .line 495
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->internalErrorListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;

    if-eqz v0, :cond_7

    .line 496
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;->onCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    :cond_7
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->captionListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$CaptionListener;

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getSelectedTrack(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 518
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->captionListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$CaptionListener;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$CaptionListener;->onCues(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .registers 3

    .line 467
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->internalErrorListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;

    if-eqz v0, :cond_7

    .line 468
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;->onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    :cond_7
    return-void
.end method

.method public onDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 12

    .line 503
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->infoListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;

    if-eqz v0, :cond_a

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 504
    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;->onDecoderInitialized(Ljava/lang/String;JJ)V

    :cond_a
    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;IJ)V
    .registers 8

    .line 442
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->infoListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_d

    .line 446
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->videoFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 447
    invoke-interface {v0, p2, p3, p4, p5}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;->onVideoFormatEnabled(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    goto :goto_13

    :cond_d
    const/4 v1, 0x1

    if-ne p1, v1, :cond_13

    .line 449
    invoke-interface {v0, p2, p3, p4, p5}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;->onAudioFormatEnabled(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onDrawnToSurface(Landroid/view/Surface;)V
    .registers 2

    return-void
.end method

.method public onDrmKeysLoaded()V
    .registers 1

    return-void
.end method

.method public onDrmSessionManagerError(Ljava/lang/Exception;)V
    .registers 3

    .line 460
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->internalErrorListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;

    if-eqz v0, :cond_7

    .line 461
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    :cond_7
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .registers 5

    .line 427
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->infoListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;

    if-eqz v0, :cond_7

    .line 428
    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;->onDroppedFrames(IJ)V

    :cond_7
    return-void
.end method

.method public onLoadCanceled(IJ)V
    .registers 4

    return-void
.end method

.method public onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .registers 31

    move-object/from16 v0, p0

    .line 558
    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->infoListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;

    if-eqz v1, :cond_1b

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    .line 559
    invoke-interface/range {v1 .. v15}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;->onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V

    :cond_1b
    return-void
.end method

.method public onLoadError(ILjava/io/IOException;)V
    .registers 4

    .line 510
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->internalErrorListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;

    if-eqz v0, :cond_7

    .line 511
    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;->onLoadError(ILjava/io/IOException;)V

    :cond_7
    return-void
.end method

.method public onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .registers 23

    move-object v0, p0

    .line 549
    iget-object v1, v0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->infoListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;

    if-eqz v1, :cond_14

    move v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 550
    invoke-interface/range {v1 .. v11}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;->onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V

    :cond_14
    return-void
.end method

.method public bridge synthetic onMetadata(Ljava/lang/Object;)V
    .registers 2

    .line 59
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onMetadata(Ljava/util/List;)V

    return-void
.end method

.method public onMetadata(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
            ">;)V"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->id3MetadataListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Id3MetadataListener;

    if-eqz v0, :cond_11

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getSelectedTrack(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 525
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->id3MetadataListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Id3MetadataListener;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Id3MetadataListener;->onId3Metadata(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public onPlayWhenReadyCommitted()V
    .registers 1

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .registers 4

    const/4 v0, 0x1

    .line 411
    iput v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuildingState:I

    .line 412
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;

    .line 413
    invoke-interface {v1, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 3

    .line 406
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->maybeReportPlayerState()V

    return-void
.end method

.method onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_13

    .line 303
    aget-object v2, p1, v1

    if-nez v2, :cond_10

    .line 305
    new-instance v2, Lcom/google/android/exoplayer/DummyTrackRenderer;

    invoke-direct {v2}, Lcom/google/android/exoplayer/DummyTrackRenderer;-><init>()V

    aput-object v2, p1, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 309
    :cond_13
    aget-object v1, p1, v0

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 310
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    instance-of v2, v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    if-eqz v2, :cond_22

    :goto_1d
    check-cast v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iget-object v1, v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    goto :goto_2d

    :cond_22
    const/4 v1, 0x1

    aget-object v2, p1, v1

    instance-of v2, v2, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    if-eqz v2, :cond_2c

    aget-object v1, p1, v1

    goto :goto_1d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    .line 314
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .line 315
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->pushSurface(Z)V

    .line 316
    iget-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer/ExoPlayer;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    const/4 p1, 0x3

    .line 317
    iput p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuildingState:I

    return-void
.end method

.method onRenderersError(Ljava/lang/Exception;)V
    .registers 4

    .line 326
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->internalErrorListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;

    if-eqz v0, :cond_7

    .line 327
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;->onRendererInitializationError(Ljava/lang/Exception;)V

    .line 329
    :cond_7
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;

    .line 330
    invoke-interface {v1, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_d

    :cond_1d
    const/4 p1, 0x1

    .line 332
    iput p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuildingState:I

    .line 333
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->maybeReportPlayerState()V

    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .registers 6

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 7

    .line 420
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;

    .line 421
    invoke-interface {v1, p1, p2, p3, p4}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;->onVideoSizeChanged(IIIF)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public prepare()V
    .registers 3

    .line 283
    iget v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuildingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 284
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 286
    :cond_a
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;->cancel()V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->videoFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 288
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    const/4 v0, 0x2

    .line 289
    iput v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuildingState:I

    .line 290
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->maybeReportPlayerState()V

    .line 291
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;->buildRenderers(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 345
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;->cancel()V

    const/4 v0, 0x1

    .line 346
    iput v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->rendererBuildingState:I

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->surface:Landroid/view/Surface;

    .line 348
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->release()V

    return-void
.end method

.method public removeListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;)V
    .registers 3

    .line 212
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(J)V
    .registers 4

    .line 341
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    return-void
.end method

.method public setBackgrounded(Z)V
    .registers 3

    .line 269
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->backgrounded:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 272
    :cond_5
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->backgrounded:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 274
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getSelectedTrack(I)I

    move-result p1

    iput p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->videoTrackToRestore:I

    const/4 p1, -0x1

    .line 275
    invoke-virtual {p0, v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setSelectedTrack(II)V

    .line 276
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->blockingClearSurface()V

    goto :goto_1d

    .line 278
    :cond_18
    iget p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->videoTrackToRestore:I

    invoke-virtual {p0, v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setSelectedTrack(II)V

    :goto_1d
    return-void
.end method

.method public setCaptionListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$CaptionListener;)V
    .registers 2

    .line 224
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->captionListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$CaptionListener;

    return-void
.end method

.method public setInfoListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;)V
    .registers 2

    .line 220
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->infoListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;

    return-void
.end method

.method public setInternalErrorListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;)V
    .registers 2

    .line 216
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->internalErrorListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;

    return-void
.end method

.method public setMetadataListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Id3MetadataListener;)V
    .registers 2

    .line 228
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->id3MetadataListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Id3MetadataListener;

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 3

    .line 337
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setSelectedTrack(II)V
    .registers 4

    .line 258
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->setSelectedTrack(II)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    if-gez p2, :cond_15

    .line 259
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->captionListener:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$CaptionListener;

    if-eqz p1, :cond_15

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$CaptionListener;->onCues(Ljava/util/List;)V

    :cond_15
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 2

    .line 232
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->surface:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 233
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->pushSurface(Z)V

    return-void
.end method
