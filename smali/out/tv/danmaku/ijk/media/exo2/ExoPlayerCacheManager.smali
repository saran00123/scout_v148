.class public Ltv/danmaku/ijk/media/exo2/ExoPlayerCacheManager;
.super Ljava/lang/Object;
.source "ExoPlayerCacheManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;


# instance fields
.field protected mExoSourceManager:Ltv/danmaku/ijk/media/exo2/ExoSourceManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 52
    invoke-static {p1, p2, p3}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->cachePreView(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .line 37
    invoke-static {p1, p2, p3}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public doCacheLogic(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 24
    instance-of v0, p2, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    if-eqz v0, :cond_1b

    .line 27
    check-cast p2, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;

    .line 28
    invoke-virtual {p2}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->getExoHelper()Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/ExoPlayerCacheManager;->mExoSourceManager:Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p2, v0}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setCache(Z)V

    .line 31
    invoke-virtual {p2, p5}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setCacheDir(Ljava/io/File;)V

    .line 32
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p4}, Ltv/danmaku/ijk/media/exo2/IjkExo2MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void

    .line 25
    :cond_1b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "ExoPlayerCacheManager only support IjkExo2MediaPlayer"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hadCached()Z
    .registers 2

    .line 47
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/ExoPlayerCacheManager;->mExoSourceManager:Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->hadCached()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/ExoPlayerCacheManager;->mExoSourceManager:Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    return-void
.end method

.method public setCacheAvailableListener(Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;)V
    .registers 2

    return-void
.end method
