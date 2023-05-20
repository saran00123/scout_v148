.class public Ltv/danmaku/ijk/media/exo2/ExoSourceManager;
.super Ljava/lang/Object;
.source "ExoSourceManager.java"


# static fields
.field private static final DEFAULT_MAX_SIZE:J = 0x20000000L

.field private static final TAG:Ljava/lang/String; = "ExoSourceManager"

.field public static final TYPE_RTMP:I = 0x4

.field private static mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache; = null

.field private static mSkipSSLChain:Z = false

.field private static sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;


# instance fields
.field private isCached:Z

.field private mAppContext:Landroid/content/Context;

.field private mDataSource:Ljava/lang/String;

.field private mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->isCached:Z

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    return-void
.end method

.method public static cachePreView(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 222
    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    invoke-static {p0, p2}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 204
    :try_start_0
    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    .line 205
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    if-eqz p0, :cond_36

    .line 207
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    goto :goto_36

    :cond_18
    if-eqz p0, :cond_36

    .line 211
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getKeys()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 212
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_22

    :catch_32
    move-exception p0

    .line 217
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    :goto_36
    return-void
.end method

.method public static declared-synchronized getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .registers 6

    const-class v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    monitor-enter v0

    .line 169
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_11

    .line 171
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 173
    :cond_11
    sget-object p1, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez p1, :cond_4a

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "exo"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 175
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->isCacheFolderLocked(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_4a

    .line 177
    new-instance p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    const-wide/32 v2, 0x20000000

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    invoke-direct {p1, v1, p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V

    sput-object p1, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 180
    :cond_4a
    sget-object p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4e

    monitor-exit v0

    return-object p0

    :catchall_4e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .registers 5

    .line 261
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    if-eqz p2, :cond_6

    const/4 v1, 0x0

    goto :goto_b

    :cond_6
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    .line 262
    :goto_b
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .registers 5

    if-eqz p2, :cond_1b

    .line 248
    invoke-static {p1, p4}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 250
    iget-object p4, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mDataSource:Ljava/lang/String;

    invoke-static {p2, p4}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->isCached:Z

    .line 251
    new-instance p4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;

    invoke-direct {p0, p1, p3}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    const/4 p3, 0x2

    invoke-direct {p4, p2, p1, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V

    return-object p4

    .line 254
    :cond_1b
    invoke-direct {p0, p1, p3}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public static getExoMediaSourceInterceptListener()Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;
    .registers 1

    .line 145
    sget-object v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;

    return-object v0
.end method

.method private getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .registers 10

    .line 267
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 268
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    const-string v1, "allowCrossProtocolRedirects"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    move v6, v0

    .line 270
    sget-boolean v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mSkipSSLChain:Z

    const/4 v1, 0x0

    const-string v2, "ExoSourceManager"

    if-eqz v0, :cond_6f

    .line 271
    new-instance v0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2c

    move-object v3, v1

    goto :goto_32

    :cond_2c
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    move-object v3, p1

    :goto_32
    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    .line 274
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    if-eqz p1, :cond_6e

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_6e

    .line 275
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 276
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSourceFactory;->getDefaultRequestProperties()Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    :cond_6e
    return-object v0

    .line 281
    :cond_6f
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_79

    move-object v3, v1

    goto :goto_7f

    :cond_79
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    move-object v3, p1

    :goto_7f
    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    .line 284
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    if-eqz p1, :cond_bb

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_bb

    .line 285
    iget-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mMapHeadData:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 286
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;->getDefaultRequestProperties()Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9b

    :cond_bb
    return-object v0
.end method

.method public static inferContentType(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 162
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static inferContentType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 152
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "rtmp:"

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x4

    return p0

    .line 156
    :cond_e
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->inferContentType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isSkipSSLChain()Z
    .registers 1

    .line 231
    sget-boolean v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mSkipSSLChain:Z

    return v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/Map;)Ltv/danmaku/ijk/media/exo2/ExoSourceManager;
    .registers 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ltv/danmaku/ijk/media/exo2/ExoSourceManager;"
        }
    .end annotation

    .line 72
    new-instance v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;

    invoke-direct {v0, p0, p1}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-object v0
.end method

.method public static resetExoMediaSourceInterceptListener()V
    .registers 1

    const/4 v0, 0x0

    .line 141
    sput-object v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;

    return-void
.end method

.method private static resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z
    .registers 15

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_52

    .line 300
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 302
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_51

    .line 306
    :cond_21
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v3

    const-wide/16 v4, -0x1

    const-string v6, "exo_len"

    invoke-interface {v3, v6, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;->get(Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v3, 0x0

    .line 308
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v11, v3

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 309
    iget-wide v5, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v7, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    move-object v3, p0

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v3

    add-long/2addr v11, v3

    goto :goto_34

    :cond_4c
    cmp-long p0, v11, v9

    if-ltz p0, :cond_51

    goto :goto_52

    :cond_51
    :goto_51
    move v1, v2

    :cond_52
    :goto_52
    return v1
.end method

.method public static setExoMediaSourceInterceptListener(Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;)V
    .registers 1

    .line 137
    sput-object p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;

    return-void
.end method

.method public static setSkipSSLChain(Z)V
    .registers 1

    .line 240
    sput-boolean p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mSkipSSLChain:Z

    return-void
.end method


# virtual methods
.method public getMediaSource(Ljava/lang/String;ZZZLjava/io/File;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 14
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    sget-object v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;

    const/4 v6, 0x0

    if-eqz v0, :cond_f

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 90
    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;->getMediaSource(Ljava/lang/String;ZZZLjava/io/File;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, v6

    :goto_10
    if-eqz v0, :cond_13

    return-object v0

    .line 95
    :cond_13
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mDataSource:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 97
    invoke-static {p1, p6}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->inferContentType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_89

    const/4 p6, 0x1

    if-eq p1, p6, :cond_69

    const/4 p6, 0x2

    if-eq p1, p6, :cond_59

    const/4 p6, 0x4

    if-eq p1, p6, :cond_41

    .line 121
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    iget-object p6, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p6, p3, p2, p5}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 122
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    goto :goto_a8

    .line 114
    :cond_41
    new-instance p1, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;

    invoke-direct {p1, v6}, Lcom/google/android/exoplayer2/ext/rtmp/RtmpDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 115
    new-instance p2, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 116
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p1

    .line 117
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    goto :goto_a8

    .line 111
    :cond_59
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object p6, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p6, p3, p2, p5}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    goto :goto_a8

    .line 100
    :cond_69
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    new-instance p6, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0, v1, p3, p2, p5}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p3

    invoke-direct {p6, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p3, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object p5, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 103
    invoke-direct {p0, p5, p2}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p2

    invoke-direct {p3, p5, v6, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p1, p6, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    goto :goto_a8

    .line 106
    :cond_89
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance p6, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v1, p3, p2, p5}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p3

    invoke-direct {p6, p3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p3, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object p5, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mAppContext:Landroid/content/Context;

    .line 108
    invoke-direct {p0, p5, p2}, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->getHttpDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p2

    invoke-direct {p3, p5, v6, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p1, p6, p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    :goto_a8
    if-eqz p4, :cond_b0

    .line 127
    new-instance p2, Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-object p2

    :cond_b0
    return-object p1
.end method

.method public hadCached()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->isCached:Z

    return v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->isCached:Z

    .line 185
    sget-object v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-eqz v0, :cond_12

    .line 187
    :try_start_7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->release()V

    const/4 v0, 0x0

    .line 188
    sput-object v0, Ltv/danmaku/ijk/media/exo2/ExoSourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_12
    return-void
.end method
