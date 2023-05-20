.class public Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;
.super Ljava/lang/Object;
.source "ProxyCacheManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;
.implements Lcom/danikula/videocache/CacheListener;


# static fields
.field private static proxyCacheManager:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;


# instance fields
.field private cacheAvailableListener:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;

.field protected mCacheDir:Ljava/io/File;

.field protected mCacheFile:Z

.field protected proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

.field protected userAgentHeadersInjector:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheUserAgentHeadersInjector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheUserAgentHeadersInjector;

    invoke-direct {v0}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheUserAgentHeadersInjector;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->userAgentHeadersInjector:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheUserAgentHeadersInjector;

    return-void
.end method

.method protected static getProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .registers 3

    .line 179
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-nez v0, :cond_17

    .line 180
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->newProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p0

    iput-object p0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    goto :goto_18

    :cond_17
    move-object p0, v0

    :goto_18
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .registers 4

    if-nez p1, :cond_7

    .line 192
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->getProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p0

    return-object p0

    .line 196
    :cond_7
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheDir:Ljava/io/File;

    if-eqz v0, :cond_3d

    .line 197
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 199
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-eqz v0, :cond_2e

    .line 202
    invoke-virtual {v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->shutdown()V

    .line 205
    :cond_2e
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->newProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p0

    iput-object p0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    return-object p0

    .line 209
    :cond_3d
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-nez v0, :cond_54

    .line 211
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->newProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p0

    iput-object p0, v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    goto :goto_55

    :cond_54
    move-object p0, v0

    :goto_55
    return-object p0
.end method

.method public static declared-synchronized instance()Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;
    .registers 2

    const-class v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    monitor-enter v0

    .line 45
    :try_start_3
    sget-object v1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxyCacheManager:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    if-nez v1, :cond_e

    .line 46
    new-instance v1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;-><init>()V

    sput-object v1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxyCacheManager:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    .line 48
    :cond_e
    sget-object v1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxyCacheManager:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->getProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 132
    invoke-virtual {p1, p3}, Lcom/danikula/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_e
    const-string p1, "http"

    .line 134
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    .line 91
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->deleteFiles(Ljava/io/File;)V

    goto/16 :goto_ac

    .line 96
    :cond_1c
    new-instance v0, Lcom/danikula/videocache/file/Md5FileNameGenerator;

    invoke-direct {v0}, Lcom/danikula/videocache/file/Md5FileNameGenerator;-><init>()V

    .line 97
    invoke-virtual {v0, p3}, Lcom/danikula/videocache/file/Md5FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ".download"

    if-eqz p2, :cond_63

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    .line 102
    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_ac

    .line 104
    :cond_63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p2}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->deleteFile(Ljava/lang/String;)V

    :goto_ac
    return-void
.end method

.method public doCacheLogic(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V
    .registers 10
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

    .line 62
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->userAgentHeadersInjector:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheUserAgentHeadersInjector;

    sget-object v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheUserAgentHeadersInjector;->mMapHeadData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p4, :cond_10

    .line 64
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->userAgentHeadersInjector:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheUserAgentHeadersInjector;

    sget-object v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheUserAgentHeadersInjector;->mMapHeadData:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_10
    const-string v0, "http"

    .line 66
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ".m3u8"

    if-eqz v1, :cond_47

    const-string v1, "127.0.0.1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->getProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p5

    if-eqz p5, :cond_65

    .line 70
    invoke-virtual {p5, p3}, Lcom/danikula/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheFile:Z

    .line 73
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheFile:Z

    if-nez v0, :cond_45

    .line 74
    invoke-virtual {p5, p0, p3}, Lcom/danikula/videocache/HttpProxyCacheServer;->registerCacheListener(Lcom/danikula/videocache/CacheListener;Ljava/lang/String;)V

    :cond_45
    move-object p3, v1

    goto :goto_65

    .line 77
    :cond_47
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_65

    const-string p5, "rtmp"

    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_65

    const-string p5, "rtsp"

    .line 78
    invoke-virtual {p3, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_65

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_65

    .line 79
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheFile:Z

    .line 82
    :cond_65
    :goto_65
    :try_start_65
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-interface {p2, p1, p3, p4}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_71
    return-void
.end method

.method public hadCached()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheFile:Z

    return v0
.end method

.method public newProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .registers 3

    .line 170
    new-instance v0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->userAgentHeadersInjector:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheUserAgentHeadersInjector;

    .line 171
    invoke-virtual {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->headerInjector(Lcom/danikula/videocache/headers/HeaderInjector;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->build()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    return-object p1
.end method

.method public newProxy(Landroid/content/Context;Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .registers 4

    .line 152
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 153
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 155
    :cond_9
    new-instance v0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    invoke-direct {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v0, p2}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->cacheDirectory(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    .line 157
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->userAgentHeadersInjector:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheUserAgentHeadersInjector;

    invoke-virtual {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->headerInjector(Lcom/danikula/videocache/headers/HeaderInjector;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    .line 158
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mCacheDir:Ljava/io/File;

    .line 159
    invoke-virtual {v0}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->build()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    return-object p1
.end method

.method public onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .registers 5

    .line 54
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->cacheAvailableListener:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;

    if-eqz v0, :cond_7

    .line 55
    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;->onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-eqz v0, :cond_c

    .line 120
    :try_start_4
    invoke-virtual {v0, p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->unregisterCacheListener(Lcom/danikula/videocache/CacheListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public setCacheAvailableListener(Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->cacheAvailableListener:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;

    return-void
.end method

.method public setProxy(Lcom/danikula/videocache/HttpProxyCacheServer;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    return-void
.end method
