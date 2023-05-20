.class public Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;
.super Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;
.source "GSYVideoADManager.java"


# static fields
.field public static final FULLSCREEN_ID:I

.field public static final SMALL_ID:I

.field public static TAG:Ljava/lang/String;

.field private static videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->ad_small_id:I

    sput v0, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->SMALL_ID:I

    .line 25
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->ad_full_id:I

    sput v0, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->FULLSCREEN_ID:I

    const-string v0, "GSYVideoADManager"

    .line 27
    sput-object v0, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->init()V

    return-void
.end method

.method public static backFromWindowFull(Landroid/content/Context;)Z
    .registers 3

    .line 56
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    sget v1, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->FULLSCREEN_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    .line 60
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->lastListener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 62
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->lastListener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onBackFullscreen()V

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :cond_30
    :goto_30
    return v0
.end method

.method public static declared-synchronized instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;
    .registers 2

    const-class v0, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    if-nez v1, :cond_e

    .line 43
    new-instance v1, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;-><init>()V

    sput-object v1, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    .line 45
    :cond_e
    sget-object v1, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isFullState(Landroid/app/Activity;)Z
    .registers 2

    .line 116
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 117
    sget v0, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->FULLSCREEN_ID:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 120
    check-cast p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public static onPause()V
    .registers 1

    .line 83
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 84
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onVideoPause()V

    :cond_15
    return-void
.end method

.method public static onResume()V
    .registers 1

    .line 92
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 93
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onVideoResume()V

    :cond_15
    return-void
.end method

.method public static onResume(Z)V
    .registers 2

    .line 104
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 105
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onVideoResume(Z)V

    :cond_15
    return-void
.end method

.method public static releaseAllVideos()V
    .registers 1

    .line 72
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 73
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onCompletion()V

    .line 75
    :cond_15
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->releaseMediaPlayer()V

    return-void
.end method
