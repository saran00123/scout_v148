.class public abstract Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;
.implements Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;
    }
.end annotation


# static fields
.field protected static final BUFFER_TIME_OUT_ERROR:I = -0xc0

.field protected static final HANDLER_PREPARE:I = 0x0

.field protected static final HANDLER_RELEASE:I = 0x2

.field protected static final HANDLER_RELEASE_SURFACE:I = 0x3

.field protected static final HANDLER_SETDISPLAY:I = 0x1

.field public static TAG:Ljava/lang/String; = "GSYVideoBaseManager"


# instance fields
.field protected bufferPoint:I

.field protected cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

.field protected context:Landroid/content/Context;

.field protected currentVideoHeight:I

.field protected currentVideoWidth:I

.field protected lastListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field protected lastState:I

.field protected listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;

.field private mTimeOutRunnable:Ljava/lang/Runnable;

.field protected mainThreadHandler:Landroid/os/Handler;

.field protected needMute:Z

.field protected needTimeOutOther:Z

.field protected optionModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;"
        }
    .end annotation
.end field

.field protected playPosition:I

.field protected playTag:Ljava/lang/String;

.field protected playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

.field protected timeOut:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 70
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoWidth:I

    .line 90
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoHeight:I

    const/16 v1, -0x16

    .line 100
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playPosition:I

    const/16 v1, 0x1f40

    .line 110
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->timeOut:I

    .line 115
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needMute:Z

    .line 639
    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$8;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$8;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;Landroid/os/Message;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->initVideo(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;Landroid/os/Message;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->releaseSurface(Landroid/os/Message;)V

    return-void
.end method

.method private initVideo(Landroid/os/Message;)V
    .registers 6

    const/4 v0, 0x0

    .line 587
    :try_start_1
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoWidth:I

    .line 588
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoHeight:I

    .line 590
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_e

    .line 591
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->release()V

    .line 593
    :cond_e
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->getPlayManager()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    .line 594
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->getCacheManager()Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    .line 595
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    if-eqz v0, :cond_23

    .line 596
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    invoke-interface {v0, p0}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->setCacheAvailableListener(Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;)V

    .line 598
    :cond_23
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->optionModelList:Ljava/util/List;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;)V

    .line 600
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needMute:Z

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    .line 601
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p1

    .line 602
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 603
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    const/4 v0, 0x1

    .line 604
    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 605
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 606
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 607
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 608
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 609
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 610
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p1

    .line 613
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5a
    return-void
.end method

.method private releaseSurface(Landroid/os/Message;)V
    .registers 2

    .line 650
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 651
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz p1, :cond_b

    .line 652
    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->releaseSurface()V

    :cond_b
    return-void
.end method

.method private showDisplay(Landroid/os/Message;)V
    .registers 3

    .line 661
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_7

    .line 662
    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->showDisplay(Landroid/os/Message;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .registers 5

    .line 409
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->getCacheManager()Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 410
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->getCacheManager()Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method protected cancelTimeOutBuffer()V
    .registers 3

    const-string v0, "cancelTimeOutBuffer"

    .line 632
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 634
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needTimeOutOther:Z

    if-eqz v0, :cond_10

    .line 635
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public clearAllDefaultCache(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->clearDefaultCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .line 425
    invoke-virtual {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->clearDefaultCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public clearDefaultCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    if-eqz v0, :cond_8

    .line 137
    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_15

    .line 139
    :cond_8
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->getCacheManager()Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 140
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->getCacheManager()Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public enableRawPlay(Landroid/content/Context;)V
    .registers 2

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->context:Landroid/content/Context;

    return-void
.end method

.method public getBufferedPercentage()I
    .registers 2

    .line 431
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 432
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getBufferedPercentage()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected getCacheManager()Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;
    .registers 2

    .line 155
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/CacheFactory;->getCacheManager()Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurCacheManager()Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;
    .registers 2

    .line 740
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    return-object v0
.end method

.method public getCurPlayerManager()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;
    .registers 2

    .line 736
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    return-object v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 504
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVideoHeight()I
    .registers 2

    .line 364
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoHeight:I

    return v0
.end method

.method public getCurrentVideoWidth()I
    .registers 2

    .line 359
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoWidth:I

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 511
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 512
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastState()I
    .registers 2

    .line 349
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->lastState:I

    return v0
.end method

.method public getNetSpeed()J
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 418
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getNetSpeed()J

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

    .line 680
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->optionModelList:Ljava/util/List;

    return-object v0
.end method

.method protected getPlayManager()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;
    .registers 2

    .line 151
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/player/PlayerFactory;->getPlayManager()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    move-result-object v0

    return-object v0
.end method

.method public getPlayPosition()I
    .registers 2

    .line 389
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playPosition:I

    return v0
.end method

.method public getPlayTag()Ljava/lang/String;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    return-object v0
.end method

.method public getRotateInfoFlag()I
    .registers 2

    const/16 v0, 0x2711

    return v0
.end method

.method public getTimeOut()I
    .registers 2

    .line 705
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->timeOut:I

    return v0
.end method

.method public getVideoHeight()I
    .registers 2

    .line 480
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 481
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getVideoHeight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 528
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 520
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .line 472
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 473
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getVideoWidth()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected init()V
    .registers 3

    .line 146
    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public initContext(Landroid/content/Context;)V
    .registers 2

    .line 667
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->context:Landroid/content/Context;

    return-void
.end method

.method public isCacheFile()Z
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->hadCached()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isNeedMute()Z
    .registers 2

    .line 691
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needMute:Z

    return v0
.end method

.method public isNeedTimeOutOther()Z
    .registers 2

    .line 709
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needTimeOutOther:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 489
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->isPlaying()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isSurfaceSupportLockCanvas()Z
    .registers 2

    .line 541
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 542
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->isSurfaceSupportLockCanvas()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public lastListener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->lastListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    return-object v0
.end method

.method public listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    return-object v0
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .registers 4

    .line 266
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;

    invoke-direct {v0, p0, p2}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .registers 4

    .line 344
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->bufferPoint:I

    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .registers 3

    .line 253
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$2;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$2;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .registers 5

    .line 295
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .registers 5

    .line 309
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .registers 3

    .line 240
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$1;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .registers 3

    .line 282
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$4;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$4;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .registers 6

    .line 329
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoWidth:I

    .line 330
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoHeight:I

    .line 331
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$7;

    invoke-direct {p2, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$7;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .registers 2

    .line 465
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_7

    .line 466
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->pause()V

    :cond_7
    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 197
    invoke-virtual/range {v0 .. v7}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 203
    :cond_8
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x0

    .line 204
    iput v2, v1, Landroid/os/Message;->what:I

    .line 205
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/GSYModel;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;-><init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V

    .line 206
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    invoke-virtual {p0, v1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->sendMessage(Landroid/os/Message;)V

    .line 208
    iget-boolean v1, v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needTimeOutOther:Z

    if-eqz v1, :cond_2c

    .line 209
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->startTimeOutBuffer()V

    :cond_2c
    return-void
.end method

.method public releaseMediaPlayer()V
    .registers 3

    .line 215
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 216
    iput v1, v0, Landroid/os/Message;->what:I

    .line 217
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->sendMessage(Landroid/os/Message;)V

    const-string v0, ""

    .line 218
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playTag:Ljava/lang/String;

    const/16 v0, -0x16

    .line 219
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playPosition:I

    return-void
.end method

.method public releaseSurface(Landroid/view/Surface;)V
    .registers 4

    .line 232
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 233
    iput v1, v0, Landroid/os/Message;->what:I

    .line 234
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public seekTo(J)V
    .registers 4

    .line 496
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_7

    .line 497
    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->seekTo(J)V

    :cond_7
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCurrentVideoHeight(I)V
    .registers 2

    .line 369
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoHeight:I

    return-void
.end method

.method public setCurrentVideoWidth(I)V
    .registers 2

    .line 374
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoWidth:I

    return-void
.end method

.method public setDisplay(Landroid/view/Surface;)V
    .registers 4

    .line 224
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 225
    iput v1, v0, Landroid/os/Message;->what:I

    .line 226
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->showDisplay(Landroid/os/Message;)V

    return-void
.end method

.method public setLastListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->lastListener:Ljava/lang/ref/WeakReference;

    goto :goto_d

    .line 185
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->lastListener:Ljava/lang/ref/WeakReference;

    :goto_d
    return-void
.end method

.method public setLastState(I)V
    .registers 2

    .line 354
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->lastState:I

    return-void
.end method

.method public setListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener:Ljava/lang/ref/WeakReference;

    goto :goto_d

    .line 177
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener:Ljava/lang/ref/WeakReference;

    :goto_d
    return-void
.end method

.method public setNeedMute(Z)V
    .registers 3

    .line 698
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needMute:Z

    .line 699
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_9

    .line 700
    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->setNeedMute(Z)V

    :cond_9
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

    .line 687
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->optionModelList:Ljava/util/List;

    return-void
.end method

.method public setPlayPosition(I)V
    .registers 2

    .line 394
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playPosition:I

    return-void
.end method

.method public setPlayTag(Ljava/lang/String;)V
    .registers 2

    .line 384
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playTag:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(FZ)V
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_7

    .line 191
    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->setSpeed(FZ)V

    :cond_7
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_7

    .line 440
    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->setSpeedPlaying(FZ)V

    :cond_7
    return-void
.end method

.method public setTimeOut(IZ)V
    .registers 3

    .line 731
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->timeOut:I

    .line 732
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needTimeOutOther:Z

    return-void
.end method

.method public start()V
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_7

    .line 452
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->start()V

    :cond_7
    return-void
.end method

.method protected startTimeOutBuffer()V
    .registers 5

    const-string v0, "startTimeOutBuffer"

    .line 623
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->timeOut:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_7

    .line 459
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->stop()V

    :cond_7
    return-void
.end method
