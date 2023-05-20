.class public Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
.super Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.source "IjkExoMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mDataSource:Ljava/lang/String;

.field private mDemoListener:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

.field private mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

.field private mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

.field private mRendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

.field private mSurface:Landroid/view/Surface;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    .line 57
    new-instance p1, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;-><init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$1;)V

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDemoListener:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

    .line 59
    new-instance p1, Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-direct {p1}, Ltv/danmaku/ijk/media/exo/demo/EventLogger;-><init>()V

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    .line 60
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/exo/demo/EventLogger;->startSession()V

    return-void
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;
    .registers 1

    .line 43
    iget-object p0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;IIII)V
    .registers 5

    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    return-void
.end method

.method static synthetic access$1100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z
    .registers 3

    .line 43
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z
    .registers 3

    .line 43
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V
    .registers 1

    .line 43
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnPrepared()V

    return-void
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V
    .registers 1

    .line 43
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnCompletion()V

    return-void
.end method

.method static synthetic access$500(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z
    .registers 3

    .line 43
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V
    .registers 1

    .line 43
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnCompletion()V

    return-void
.end method

.method static synthetic access$700(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z
    .registers 3

    .line 43
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnError(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$802(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)I
    .registers 2

    .line 43
    iput p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$902(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)I
    .registers 2

    .line 43
    iput p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    return p1
.end method

.method private getRendererBuilder()Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;
    .registers 6

    .line 306
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 307
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    const-string v2, "IjkExoMediaPlayer"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->inferContentType(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    .line 320
    new-instance v2, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;

    iget-object v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v2

    .line 317
    :cond_20
    new-instance v2, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder;

    iget-object v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 311
    :cond_2c
    new-instance v2, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;

    iget-object v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ltv/danmaku/ijk/media/exo/demo/SmoothStreamingTestMediaDrmCallback;

    invoke-direct {v4}, Ltv/danmaku/ijk/media/exo/demo/SmoothStreamingTestMediaDrmCallback;-><init>()V

    invoke-direct {v2, v3, v1, v0, v4}, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/drm/MediaDrmCallback;)V

    return-object v2
.end method

.method private static inferContentType(Landroid/net/Uri;)I
    .registers 1

    .line 331
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 332
    invoke-static {p0}, Lcom/google/android/exoplayer/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAudioSessionId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferedPercentage()I
    .registers 2

    .line 299
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 302
    :cond_6
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 197
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 199
    :cond_7
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .line 204
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 206
    :cond_7
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .registers 2

    .line 43
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoHeight()I
    .registers 2

    .line 168
    iget v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .line 163
    iget v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isLooping()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .registers 4

    .line 173
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 175
    :cond_6
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v2, 0x4

    if-eq v0, v2, :cond_11

    return v1

    .line 179
    :cond_11
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public prepareAsync()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_3e

    .line 111
    new-instance v0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mRendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;-><init>(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 112
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDemoListener:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->addListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;)V

    .line 113
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->addListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;)V

    .line 114
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setInfoListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;)V

    .line 115
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setInternalErrorListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;)V

    .line 117
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_32

    .line 118
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v1, v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 120
    :cond_32
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->prepare()V

    .line 121
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setPlayWhenReady(Z)V

    return-void

    .line 109
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t prepare a prepared player"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 3

    .line 288
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-eqz v0, :cond_11

    .line 289
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->reset()V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDemoListener:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

    .line 293
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/EventLogger;->endSession()V

    .line 294
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    :cond_11
    return-void
.end method

.method public reset()V
    .registers 4

    .line 221
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 222
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->release()V

    .line 223
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDemoListener:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->removeListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;)V

    .line 224
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->removeListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;)V

    .line 225
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setInfoListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;)V

    .line 226
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setInternalErrorListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;)V

    .line 227
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 230
    :cond_22
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 231
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    .line 233
    iput v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    return-void
.end method

.method public seekTo(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_5

    return-void

    .line 192
    :cond_5
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->seekTo(J)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .registers 2

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 80
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->getRendererBuilder()Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mRendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 98
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no support"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 3

    .line 92
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_e

    .line 68
    :cond_7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :goto_e
    return-void
.end method

.method public setKeepInBackground(Z)V
    .registers 2

    return-void
.end method

.method public setLogEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setLooping(Z)V
    .registers 3

    .line 239
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no support"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScreenOnWhilePlaying(Z)V
    .registers 2

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 3

    .line 73
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 74
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-eqz v0, :cond_9

    .line 75
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_9
    return-void
.end method

.method public setVolume(FF)V
    .registers 3

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .registers 3

    return-void
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 128
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_5

    return-void

    .line 135
    :cond_5
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->release()V

    return-void
.end method
