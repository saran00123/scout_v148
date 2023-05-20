.class public Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;
.super Ljava/lang/Object;
.source "Exo2PlayerManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;


# instance fields
.field private context:Landroid/content/Context;

.field private dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

.field private lastTimeStamp:J

.field private lastTotalRxBytes:J

.field private mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->lastTotalRxBytes:J

    .line 43
    iput-wide v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->lastTimeStamp:J

    return-void
.end method

.method private getNetSpeed(Landroid/content/Context;)J
    .registers 12

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 267
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_17

    move-wide v2, v0

    goto :goto_1e

    :cond_17
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 268
    :goto_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 269
    iget-wide v6, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->lastTimeStamp:J

    sub-long v6, v4, v6

    cmp-long p1, v6, v0

    if-nez p1, :cond_2b

    return-wide v6

    .line 274
    :cond_2b
    iget-wide v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->lastTotalRxBytes:J

    sub-long v0, v2, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v0, v8

    div-long/2addr v0, v6

    .line 275
    iput-wide v4, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->lastTimeStamp:J

    .line 276
    iput-wide v2, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->lastTotalRxBytes:J

    return-wide v0
.end method


# virtual methods
.method public getBufferedPercentage()I
    .registers 2

    .line 142
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_9

    .line 143
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getBufferedPercentage()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 217
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_9

    .line 218
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 225
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_9

    .line 226
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .registers 2

    .line 47
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    return-object v0
.end method

.method public getNetSpeed()J
    .registers 3

    .line 150
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_b

    .line 151
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->getNetSpeed(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoHeight()I
    .registers 2

    .line 194
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_9

    .line 195
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .registers 2

    .line 241
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_9

    .line 242
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .registers 2

    .line 233
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_9

    .line 234
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .line 186
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_9

    .line 187
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;",
            "Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->context:Landroid/content/Context;

    .line 53
    new-instance p3, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-direct {p3, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    .line 54
    iget-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setAudioStreamType(I)V

    .line 55
    iget-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    const/4 v0, 0x0

    if-nez p3, :cond_1e

    .line 56
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p3

    iput-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 59
    :cond_1e
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/shuyu/gsyvideoplayer/model/GSYModel;

    .line 61
    :try_start_22
    iget-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isLooping()Z

    move-result v1

    invoke-virtual {p3, v1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setLooping(Z)V

    .line 62
    iget-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3e

    const/4 v0, 0x1

    :cond_3e
    invoke-virtual {p3, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setPreview(Z)V

    .line 63
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache()Z

    move-result p3

    if-eqz p3, :cond_5d

    if-eqz p4, :cond_5d

    .line 65
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getCachePath()Ljava/io/File;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->doCacheLogic(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_89

    .line 68
    :cond_5d
    iget-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache()Z

    move-result p4

    invoke-virtual {p3, p4}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setCache(Z)V

    .line 69
    iget-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getCachePath()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p3, p4}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setCacheDir(Ljava/io/File;)V

    .line 70
    iget-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getOverrideExtension()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setOverrideExtension(Ljava/lang/String;)V

    .line 71
    iget-object p3, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, p1, p4, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 73
    :goto_89
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_aa

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_aa

    .line 74
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p2

    invoke-virtual {p1, p2, p3}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSpeed(FF)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_a5} :catch_a6

    goto :goto_aa

    :catch_a6
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_aa
    :goto_aa
    return-void
.end method

.method public isPlaying()Z
    .registers 2

    .line 202
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_9

    .line 203
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isSurfaceSupportLockCanvas()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 2

    .line 179
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_7

    .line 180
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->pause()V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 3

    .line 128
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 129
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 130
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->release()V

    .line 132
    :cond_d
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v0, :cond_16

    .line 133
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/DummySurface;->release()V

    .line 134
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    :cond_16
    const-wide/16 v0, 0x0

    .line 136
    iput-wide v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->lastTotalRxBytes:J

    .line 137
    iput-wide v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->lastTimeStamp:J

    return-void
.end method

.method public releaseSurface()V
    .registers 2

    .line 120
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->surface:Landroid/view/Surface;

    :cond_7
    return-void
.end method

.method public seekTo(J)V
    .registers 4

    .line 210
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_7

    .line 211
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->seekTo(J)V

    :cond_7
    return-void
.end method

.method public setNeedMute(Z)V
    .registers 3

    .line 108
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 110
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setVolume(FF)V

    goto :goto_10

    :cond_b
    const/high16 p1, 0x3f800000    # 1.0f

    .line 112
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setVolume(FF)V

    :cond_10
    :goto_10
    return-void
.end method

.method public setSeekParameter(Lcom/google/android/exoplayer2/SeekParameters;)V
    .registers 3
    .param p1    # Lcom/google/android/exoplayer2/SeekParameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 257
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_7

    .line 258
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSeekParameter(Lcom/google/android/exoplayer2/SeekParameters;)V

    :cond_7
    return-void
.end method

.method public setSpeed(FZ)V
    .registers 4

    .line 97
    iget-object p2, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz p2, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    .line 99
    :try_start_6
    invoke-virtual {p2, p1, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSpeed(FF)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_e
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .registers 3

    return-void
.end method

.method public showDisplay(Landroid/os/Message;)V
    .registers 3

    .line 83
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 86
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_11

    .line 87
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->dummySurface:Lcom/google/android/exoplayer2/video/DummySurface;

    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_1c

    .line 89
    :cond_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 90
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->surface:Landroid/view/Surface;

    .line 91
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :goto_1c
    return-void
.end method

.method public start()V
    .registers 2

    .line 165
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_7

    .line 166
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->start()V

    :cond_7
    return-void
.end method

.method public stop()V
    .registers 2

    .line 172
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/Exo2PlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_7

    .line 173
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->stop()V

    :cond_7
    return-void
.end method
