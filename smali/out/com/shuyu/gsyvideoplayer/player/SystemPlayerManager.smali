.class public Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;
.super Ljava/lang/Object;
.source "SystemPlayerManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;


# instance fields
.field private context:Landroid/content/Context;

.field private lastTimeStamp:J

.field private lastTotalRxBytes:J

.field private mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

.field private release:Z

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->lastTotalRxBytes:J

    .line 39
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->lastTimeStamp:J

    return-void
.end method

.method private getNetSpeed(Landroid/content/Context;)J
    .registers 12

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 250
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

    .line 251
    :goto_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 252
    iget-wide v6, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->lastTimeStamp:J

    sub-long v6, v4, v6

    cmp-long p1, v6, v0

    if-nez p1, :cond_2b

    return-wide v6

    .line 257
    :cond_2b
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->lastTotalRxBytes:J

    sub-long v0, v2, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v0, v8

    div-long/2addr v0, v6

    .line 258
    iput-wide v4, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->lastTimeStamp:J

    .line 259
    iput-wide v2, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->lastTotalRxBytes:J

    return-wide v0
.end method

.method private setSpeed(F)V
    .registers 4

    .line 228
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    if-eqz v0, :cond_5

    return-void

    .line 231
    :cond_5
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 233
    :try_start_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2f

    .line 234
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 235
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 236
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_39

    :cond_2f
    const-string p1, " not support setSpeed"

    .line 238
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_39
    :goto_39
    return-void
.end method


# virtual methods
.method public getBufferedPercentage()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_9

    .line 193
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_9

    .line 201
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    return-object v0
.end method

.method public getNetSpeed()J
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_b

    .line 127
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->getNetSpeed(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoHeight()I
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_9

    .line 170
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_9

    .line 217
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_9

    .line 209
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_9

    .line 162
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoWidth()I

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

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->context:Landroid/content/Context;

    .line 49
    new-instance p3, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 50
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setAudioStreamType(I)V

    const/4 p3, 0x0

    .line 51
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    .line 52
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/shuyu/gsyvideoplayer/model/GSYModel;

    .line 54
    :try_start_1a
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache()Z

    move-result p3

    if-eqz p3, :cond_36

    if-eqz p4, :cond_36

    .line 55
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getCachePath()Ljava/io/File;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->doCacheLogic(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_47

    .line 57
    :cond_36
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, p1, p4, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 59
    :goto_47
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isLooping()Z

    move-result p3

    invoke-virtual {p1, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setLooping(Z)V

    .line 60
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_6f

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_6f

    .line 61
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->setSpeed(F)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public isPlaying()Z
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_9

    .line 178
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->isPlaying()Z

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

    .line 154
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_7

    .line 155
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->pause()V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    .line 113
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->release()V

    :cond_a
    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->lastTotalRxBytes:J

    .line 116
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->lastTimeStamp:J

    return-void
.end method

.method public releaseSurface()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->surface:Landroid/view/Surface;

    :cond_7
    return-void
.end method

.method public seekTo(J)V
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_7

    .line 186
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->seekTo(J)V

    :cond_7
    return-void
.end method

.method public setNeedMute(Z)V
    .registers 3

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    if-nez v0, :cond_1d

    if-eqz p1, :cond_11

    .line 91
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setVolume(FF)V

    goto :goto_1d

    .line 93
    :cond_11
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setVolume(FF)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setSpeed(FZ)V
    .registers 3

    .line 83
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->setSpeed(F)V

    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .registers 3

    return-void
.end method

.method public showDisplay(Landroid/os/Message;)V
    .registers 4

    .line 70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    if-nez v1, :cond_11

    const/4 p1, 0x0

    .line 71
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_2e

    .line 72
    :cond_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2e

    .line 73
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 74
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->surface:Landroid/view/Surface;

    .line 75
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    if-nez v0, :cond_2e

    .line 76
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public start()V
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_7

    .line 141
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->start()V

    :cond_7
    return-void
.end method

.method public stop()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_7

    .line 148
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->stop()V

    :cond_7
    return-void
.end method
