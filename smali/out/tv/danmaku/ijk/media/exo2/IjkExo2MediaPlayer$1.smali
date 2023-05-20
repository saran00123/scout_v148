.class Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;
.super Ljava/lang/Object;
.source "IjkExo2MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->prepareAsyncInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;)V
    .registers 2

    .line 338
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 341
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    iput-object v1, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 342
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    new-instance v1, Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v2}, Ltv/danmaku/ijk/media/exo2/demo/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v1, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    const/4 v0, 0x2

    .line 350
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v3, v1, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->rendererFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 351
    new-instance v7, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 352
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v5, v1, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->rendererFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v6, v1, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Landroid/os/Looper;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    iput-object v1, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 353
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 354
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 355
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v1, v1, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 356
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz v0, :cond_6a

    .line 357
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v1, v1, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 359
    :cond_6a
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_7b

    .line 360
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v1, v1, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 362
    :cond_7b
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v1, v1, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 363
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method
