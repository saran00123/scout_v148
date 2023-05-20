.class public Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;
.super Ljava/lang/Object;
.source "IjkPlayerManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;


# static fields
.field private static ijkLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader; = null

.field private static logLevel:I = 0x1


# instance fields
.field private mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field private optionModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;"
        }
    .end annotation
.end field

.field private surface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIjkLibLoader()Ltv/danmaku/ijk/media/player/IjkLibLoader;
    .registers 1

    .line 304
    sget-object v0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->ijkLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    return-object v0
.end method

.method public static getLogLevel()I
    .registers 1

    .line 312
    sget v0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->logLevel:I

    return v0
.end method

.method private initIJKOption(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/danmaku/ijk/media/player/IjkMediaPlayer;",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_3f

    .line 282
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 283
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    .line 284
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->getValueType()I

    move-result v1

    if-nez v1, :cond_2f

    .line 285
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->getCategory()I

    move-result v1

    .line 286
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->getValueInt()I

    move-result v0

    int-to-long v3, v0

    .line 285
    invoke-virtual {p1, v1, v2, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_c

    .line 288
    :cond_2f
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->getCategory()I

    move-result v1

    .line 289
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {p1, v1, v2, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_3f
    return-void
.end method

.method public static setIjkLibLoader(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V
    .registers 1

    .line 308
    sput-object p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->ijkLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    return-void
.end method

.method public static setLogLevel(I)V
    .registers 1

    .line 316
    sput p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->logLevel:I

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

    .line 245
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_9

    .line 246
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_9

    .line 254
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-object v0
.end method

.method public getNetSpeed()J
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_9

    .line 178
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOptionModelList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->optionModelList:Ljava/util/List;

    return-object v0
.end method

.method public getVideoHeight()I
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_9

    .line 223
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_9

    .line 270
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_9

    .line 262
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_9

    .line 215
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoWidth()I

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

    .line 55
    sget-object v0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->ijkLibLoader:Ltv/danmaku/ijk/media/player/IjkLibLoader;

    if-nez v0, :cond_a

    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v1, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    move-object v0, v1

    :goto_10
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 56
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAudioStreamType(I)V

    .line 57
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager$1;

    invoke-direct {v1, p0}, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager$1;-><init>(Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;)V

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnNativeInvokeListener(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;)V

    .line 64
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/shuyu/gsyvideoplayer/model/GSYModel;

    .line 65
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 70
    :try_start_2a
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->isMediaCodec()Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "enable mediaCodec"

    .line 71
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec"

    const-wide/16 v4, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 73
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec-auto-rotate"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 74
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "mediacodec-handle-resolution-change"

    invoke-virtual {v0, v2, v1, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 77
    :cond_4d
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache()Z

    move-result v0

    if-eqz v0, :cond_65

    if-eqz p4, :cond_65

    .line 78
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getCachePath()Ljava/io/File;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->doCacheLogic(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_98

    .line 80
    :cond_65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8f

    .line 81
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 82
    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 83
    invoke-static {p1, p4}, Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;->create(Landroid/content/Context;Landroid/net/Uri;)Lcom/shuyu/gsyvideoplayer/utils/RawDataSourceProvider;

    move-result-object p1

    .line 84
    iget-object p4, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p4, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    goto :goto_98

    .line 86
    :cond_85
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p1, v3, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_98

    .line 89
    :cond_8f
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p1, v3, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    :goto_98
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isLooping()Z

    move-result p4

    invoke-virtual {p1, p4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLooping(Z)V

    .line 94
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p4

    if-eqz p1, :cond_bd

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_bd

    .line 95
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p2

    invoke-virtual {p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    .line 97
    :cond_bd
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    sget p1, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->logLevel:I

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 98
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {p0, p1, p3}, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->initIJKOption(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ljava/util/List;)V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_c9} :catch_ca

    goto :goto_ce

    :catch_ca
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_ce
    return-void
.end method

.method public isPlaying()Z
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_9

    .line 231
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isSurfaceSupportLockCanvas()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_7

    .line 208
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_7

    .line 166
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    :cond_7
    return-void
.end method

.method public releaseSurface()V
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->surface:Landroid/view/Surface;

    :cond_7
    return-void
.end method

.method public seekTo(J)V
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_7

    .line 239
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    :cond_7
    return-void
.end method

.method public setNeedMute(Z)V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 147
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    goto :goto_10

    :cond_b
    const/high16 p1, 0x3f800000    # 1.0f

    .line 149
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    :cond_10
    :goto_10
    return-void
.end method

.method public setOptionModelList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;)V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->optionModelList:Ljava/util/List;

    return-void
.end method

.method public setSpeed(FZ)V
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_33

    .line 121
    :try_start_5
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_13

    .line 122
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_13
    if-eqz p2, :cond_33

    .line 128
    new-instance p1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const/4 p2, 0x4

    const/4 v0, 0x1

    const-string v1, "soundtouch"

    invoke-direct {p1, p2, v1, v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 130
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->getOptionModelList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 132
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 134
    :cond_28
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_30
    invoke-virtual {p0, p2}, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->setOptionModelList(Ljava/util/List;)V

    :cond_33
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_16

    .line 186
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    .line 187
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v0, 0x4

    if-eqz p2, :cond_f

    const-wide/16 v1, 0x1

    goto :goto_11

    :cond_f
    const-wide/16 v1, 0x0

    :goto_11
    const-string p2, "soundtouch"

    invoke-virtual {p1, v0, p2, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    :cond_16
    return-void
.end method

.method public showDisplay(Landroid/os/Message;)V
    .registers 3

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    .line 107
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_22

    .line 109
    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 110
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->surface:Landroid/view/Surface;

    .line 111
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 112
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public start()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_7

    .line 194
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    :cond_7
    return-void
.end method

.method public stop()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_7

    .line 201
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    :cond_7
    return-void
.end method
