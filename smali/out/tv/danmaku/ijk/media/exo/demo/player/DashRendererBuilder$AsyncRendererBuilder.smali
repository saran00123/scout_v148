.class final Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;
.super Ljava/lang/Object;
.source "DashRendererBuilder.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;
.implements Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncRendererBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback<",
        "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;",
        "Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;"
    }
.end annotation


# instance fields
.field private canceled:Z

.field private final context:Landroid/content/Context;

.field private final drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

.field private elapsedRealtimeOffset:J

.field private manifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private final manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;)V
    .registers 6

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    .line 122
    iput-object p5, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 123
    new-instance p4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    invoke-direct {p4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>()V

    .line 124
    new-instance p5, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-direct {p5, p1, p2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p5, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 125
    new-instance p1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-direct {p1, p3, p2, p4}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    return-void
.end method

.method private buildRenderers()V
    .registers 21

    move-object/from16 v1, p0

    .line 182
    iget-object v0, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v0

    .line 183
    iget-object v3, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    .line 184
    new-instance v15, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v5, 0x10000

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v15, v4}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 185
    new-instance v14, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    iget-object v4, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-direct {v14, v3, v4}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    move v4, v2

    move v5, v4

    .line 188
    :goto_24
    iget-object v6, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_41

    .line 189
    iget-object v6, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 190
    iget v7, v6, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3e

    .line 191
    invoke-virtual {v6}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->hasContentProtection()Z

    move-result v6

    or-int/2addr v5, v6

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_41
    const/4 v0, 0x0

    const/4 v13, 0x1

    if-eqz v5, :cond_79

    .line 199
    sget v4, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v4, v5, :cond_56

    .line 200
    iget-object v0, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    new-instance v2, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    invoke-direct {v2, v13}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(I)V

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    return-void

    .line 205
    :cond_56
    :try_start_56
    iget-object v4, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 206
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    iget-object v6, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 205
    invoke-static {v4, v5, v0, v6, v7}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->newWidevineInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object v0

    .line 207
    invoke-static {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->getWidevineSecurityLevel(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I

    move-result v4
    :try_end_6e
    .catch Lcom/google/android/exoplayer/drm/UnsupportedDrmException; {:try_start_56 .. :try_end_6e} :catch_72

    if-eq v4, v13, :cond_79

    move v4, v13

    goto :goto_7a

    :catch_72
    move-exception v0

    .line 209
    iget-object v2, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v2, v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    return-void

    :cond_79
    move v4, v2

    .line 215
    :goto_7a
    new-instance v7, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v5, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    iget-object v6, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v7, v5, v14, v6}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 216
    new-instance v16, Lcom/google/android/exoplayer/dash/DashChunkSource;

    iget-object v5, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v6, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 217
    invoke-static {v6, v13, v4}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newVideoInstance(Landroid/content/Context;ZZ)Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v6

    new-instance v8, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;

    invoke-direct {v8, v14}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    const-wide/16 v9, 0x7530

    iget-wide v11, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    iget-object v4, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/16 v17, 0x0

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move/from16 v19, v13

    move-object v13, v3

    move-object v2, v14

    move-object/from16 v14, v18

    move-object/from16 v18, v15

    move/from16 v15, v17

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 220
    new-instance v11, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v7, 0xc80000

    iget-object v9, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v10, 0x0

    move-object v4, v11

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 223
    new-instance v16, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    iget-object v5, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    sget-object v7, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v8, 0x1

    const-wide/16 v9, 0x1388

    const/4 v12, 0x1

    iget-object v14, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/16 v15, 0x32

    move-object/from16 v4, v16

    move-object v6, v11

    move-object v11, v0

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 228
    new-instance v7, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v4, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    iget-object v5, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v7, v4, v2, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 229
    new-instance v17, Lcom/google/android/exoplayer/dash/DashChunkSource;

    iget-object v5, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 230
    invoke-static {}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v6

    const/4 v8, 0x0

    const-wide/16 v9, 0x7530

    iget-wide v11, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    iget-object v14, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v15, 0x1

    move-object/from16 v4, v17

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 232
    new-instance v11, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v7, 0x360000

    iget-object v9, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v10, 0x1

    move-object v4, v11

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 235
    new-instance v17, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v6, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v8, 0x1

    iget-object v10, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v4, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 237
    invoke-static {v4}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v12

    const/4 v13, 0x3

    move-object/from16 v4, v17

    move-object v5, v11

    move-object v7, v0

    move-object v9, v3

    move-object v11, v12

    move v12, v13

    invoke-direct/range {v4 .. v12}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 240
    new-instance v7, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    iget-object v0, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    iget-object v4, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v7, v0, v2, v4}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/google/android/exoplayer/dash/DashChunkSource;

    iget-object v5, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 242
    invoke-static {}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newTextInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v6

    const/4 v8, 0x0

    const-wide/16 v9, 0x7530

    iget-wide v11, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    iget-object v14, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v15, 0x2

    move-object v4, v0

    move-object v13, v3

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 244
    new-instance v11, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v7, 0x20000

    iget-object v9, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v10, 0x2

    move-object v4, v11

    move-object v5, v0

    move-object/from16 v6, v18

    move-object v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 247
    new-instance v0, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    iget-object v4, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 248
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Lcom/google/android/exoplayer/text/SubtitleParser;

    invoke-direct {v0, v11, v4, v3, v6}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    const/4 v3, 0x4

    .line 251
    new-array v3, v3, [Lcom/google/android/exoplayer/TrackRenderer;

    aput-object v16, v3, v5

    aput-object v17, v3, v19

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 255
    iget-object v0, v1, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, v3, v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    return-void
.end method

.method private static getWidevineSecurityLevel(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .registers 2

    const-string v0, "securityLevel"

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "L1"

    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    goto :goto_1b

    :cond_10
    const-string v0, "L3"

    .line 261
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x3

    goto :goto_1b

    :cond_1a
    const/4 p0, -0x1

    :goto_1b
    return p0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->canceled:Z

    return-void
.end method

.method public init()V
    .registers 3

    .line 129
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    return-void
.end method

.method public onSingleManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V
    .registers 5

    .line 138
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_5

    return-void

    .line 142
    :cond_5
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 143
    iget-boolean v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->utcTiming:Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    if-eqz v0, :cond_1d

    .line 144
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object p1, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->utcTiming:Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 145
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadCompleteTimestamp()J

    move-result-wide v1

    .line 144
    invoke-static {v0, p1, v1, v2, p0}, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver;->resolveTimingElement(Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;JLcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;)V

    goto :goto_20

    .line 147
    :cond_1d
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->buildRenderers()V

    :goto_20
    return-void
.end method

.method public bridge synthetic onSingleManifest(Ljava/lang/Object;)V
    .registers 2

    .line 103
    check-cast p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->onSingleManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .registers 3

    .line 153
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_5

    return-void

    .line 157
    :cond_5
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onTimestampError(Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/io/IOException;)V
    .registers 5

    .line 172
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_5

    return-void

    .line 176
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to resolve UtcTiming element ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DashRendererBuilder"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->buildRenderers()V

    return-void
.end method

.method public onTimestampResolved(Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;J)V
    .registers 4

    .line 162
    iget-boolean p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz p1, :cond_5

    return-void

    .line 166
    :cond_5
    iput-wide p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    .line 167
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->buildRenderers()V

    return-void
.end method
