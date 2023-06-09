.class public abstract Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;,
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;,
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/google/android/exoplayer2/offline/FilterableManifest<",
        "TM;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/offline/Downloader;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x20000

.field private static final MAX_MERGED_SEGMENT_START_TIME_DIFF_US:J = 0x1312d00L


# instance fields
.field private final activeRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

.field private final cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile isCanceled:Z

.field private final manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final streamKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "TM;>;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getCompressibleDataSpec(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 115
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 116
    new-instance p2, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->streamKeys:Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    .line 117
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    .line 118
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    .line 119
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 120
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 121
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->getUpstreamPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 122
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/offline/SegmentDownloader;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestParser:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-object p0
.end method

.method private addActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "TT;*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 397
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    if-nez v1, :cond_e

    .line 400
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    monitor-exit v0

    return-void

    .line 398
    :cond_e
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :catchall_14
    move-exception p1

    .line 401
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private static canMergeSegments(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;)Z
    .registers 6

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    .line 448
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    if-ne v0, v1, :cond_3f

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    iget v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    if-ne v0, v1, :cond_3f

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 451
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    const/4 p0, 0x1

    goto :goto_40

    :cond_3f
    const/4 p0, 0x0

    :goto_40
    return p0
.end method

.method protected static getCompressibleDataSpec(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 2

    .line 391
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p0

    return-object p0
.end method

.method private static mergeSegments(Ljava/util/List;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;",
            ")V"
        }
    .end annotation

    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 419
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_87

    .line 420
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    .line 421
    iget-object v4, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_23

    const/4 v6, 0x0

    goto :goto_2d

    .line 423
    :cond_23
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    :goto_2d
    if-eqz v6, :cond_78

    .line 424
    iget-wide v7, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    iget-wide v9, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    const-wide/32 v11, 0x1312d00

    add-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gtz v7, :cond_78

    iget-object v7, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v8, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 426
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->canMergeSegments(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSpec;)Z

    move-result v7

    if-nez v7, :cond_46

    goto :goto_78

    .line 432
    :cond_46
    iget-object v4, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v9, -0x1

    cmp-long v4, v7, v9

    if-nez v4, :cond_51

    goto :goto_5b

    .line 434
    :cond_51
    iget-object v4, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v4, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    add-long v9, v7, v3

    .line 435
    :goto_5b
    iget-object v3, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;->subrange(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v3

    .line 437
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    invoke-direct {v5, v6, v7, v3}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 436
    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_84

    .line 427
    :cond_78
    :goto_78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 441
    :cond_87
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, v2, p1}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    return-void
.end method

.method private removeActiveRunnable(I)V
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 412
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "**>;)V"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 406
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 407
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    .line 270
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    const/4 v2, 0x0

    .line 271
    :goto_7
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 272
    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 274
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public final download(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;)V
    .registers 27
    .param p1    # Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 128
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 129
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 130
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v4, -0x3e8

    if-eqz v0, :cond_15

    .line 131
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    :cond_15
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 134
    :try_start_17
    iget-object v0, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    .line 136
    iget-object v7, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v1, v0, v7, v5}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object v7

    .line 137
    iget-object v8, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_33

    .line 138
    iget-object v8, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    .line 140
    :cond_33
    invoke-virtual {v1, v0, v7, v5}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 145
    iget-object v7, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->mergeSegments(Ljava/util/List;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7
    :try_end_47
    .catchall {:try_start_17 .. :try_end_47} :catchall_1a0

    sub-int/2addr v7, v6

    const-wide/16 v8, 0x0

    move v15, v5

    move-wide v10, v8

    move-wide v13, v10

    :goto_4d
    if-ltz v7, :cond_b1

    .line 153
    :try_start_4f
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v8, v8, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 154
    iget-object v9, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    invoke-interface {v9, v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v9

    .line 155
    iget-wide v5, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_ac

    const-wide/16 v22, -0x1

    cmp-long v16, v5, v22

    if-nez v16, :cond_79

    .line 157
    :try_start_65
    iget-object v4, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 158
    invoke-interface {v4, v9}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v16

    cmp-long v4, v16, v22

    if-eqz v4, :cond_79

    .line 160
    iget-wide v4, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J
    :try_end_75
    .catchall {:try_start_65 .. :try_end_75} :catchall_1a0

    sub-long v16, v16, v4

    move-wide/from16 v5, v16

    .line 163
    :cond_79
    :try_start_79
    iget-object v4, v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-object/from16 v24, v2

    iget-wide v1, v8, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    move-object/from16 v16, v4

    move-object/from16 v17, v9

    move-wide/from16 v18, v1

    move-wide/from16 v20, v5

    .line 164
    invoke-interface/range {v16 .. v21}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v1

    add-long/2addr v13, v1

    cmp-long v4, v5, v22

    if-eqz v4, :cond_9f

    cmp-long v1, v5, v1

    if-nez v1, :cond_99

    add-int/lit8 v15, v15, 0x1

    .line 170
    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_99
    cmp-long v1, v10, v22

    if-eqz v1, :cond_a1

    add-long/2addr v10, v5

    goto :goto_a1

    :cond_9f
    move-wide/from16 v10, v22

    :cond_a1
    :goto_a1
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v2, v24

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    goto :goto_4d

    :catchall_ac
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_1a2

    :cond_b1
    move-object/from16 v24, v2

    if-eqz p1, :cond_be

    .line 184
    new-instance v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;

    move-object v8, v1

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v15}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;-><init>(Lcom/google/android/exoplayer2/offline/Downloader$ProgressListener;JIJI)V

    goto :goto_bf

    :cond_be
    const/4 v1, 0x0

    :goto_bf
    move-object v2, v1

    move-object/from16 v1, v24

    .line 191
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z
    :try_end_c5
    .catchall {:try_start_79 .. :try_end_c5} :catchall_ac

    move-object/from16 v4, p0

    .line 192
    :goto_c7
    :try_start_c7
    iget-boolean v0, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    if-nez v0, :cond_161

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_161

    .line 194
    iget-object v0, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_dc

    .line 195
    iget-object v0, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v5, -0x3e8

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 201
    :cond_dc
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ed

    .line 202
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 203
    iget-object v5, v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 204
    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    goto :goto_f7

    .line 206
    :cond_ed
    iget-object v0, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceForDownloading()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v5

    const/high16 v0, 0x20000

    .line 207
    new-array v0, v0, [B

    .line 209
    :goto_f7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    .line 210
    new-instance v7, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;

    invoke-direct {v7, v6, v5, v2, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;-><init>(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/offline/SegmentDownloader$ProgressNotifier;[B)V

    .line 213
    invoke-direct {v4, v7}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->addActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    .line 214
    iget-object v0, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 217
    iget-object v0, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    move v5, v0

    :goto_113
    if-ltz v5, :cond_15c

    .line 218
    iget-object v0, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;

    .line 222
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12a

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->isDone()Z

    move-result v0
    :try_end_128
    .catchall {:try_start_c7 .. :try_end_128} :catchall_19e

    if-eqz v0, :cond_156

    .line 224
    :cond_12a
    :try_start_12a
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->get()Ljava/lang/Object;

    .line 225
    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 226
    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_133
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12a .. :try_end_133} :catch_134
    .catchall {:try_start_12a .. :try_end_133} :catchall_19e

    goto :goto_156

    :catch_134
    move-exception v0

    .line 228
    :try_start_135
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 229
    instance-of v8, v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    if-eqz v8, :cond_14f

    .line 231
    iget-object v0, v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 232
    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    .line 233
    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_156

    .line 234
    :cond_14f
    instance-of v6, v0, Ljava/io/IOException;

    if-nez v6, :cond_159

    .line 238
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    :cond_156
    :goto_156
    add-int/lit8 v5, v5, -0x1

    goto :goto_113

    .line 235
    :cond_159
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 246
    :cond_15c
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$SegmentDownloadRunnable;->blockUntilStarted()V
    :try_end_15f
    .catchall {:try_start_135 .. :try_end_15f} :catchall_19e

    goto/16 :goto_c7

    :cond_161
    const/4 v0, 0x0

    .line 252
    :goto_162
    iget-object v1, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_179

    .line 253
    iget-object v1, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_162

    :cond_179
    const/4 v2, 0x1

    .line 257
    iget-object v0, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_181
    if-ltz v0, :cond_194

    .line 258
    iget-object v1, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 259
    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_181

    .line 261
    :cond_194
    iget-object v0, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_19d

    const/16 v1, -0x3e8

    .line 262
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    :cond_19d
    return-void

    :catchall_19e
    move-exception v0

    goto :goto_1a2

    :catchall_1a0
    move-exception v0

    move-object v4, v1

    :goto_1a2
    const/4 v1, 0x0

    .line 252
    :goto_1a3
    iget-object v2, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1ba

    .line 253
    iget-object v2, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a3

    :cond_1ba
    const/4 v3, 0x1

    .line 257
    iget-object v1, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1c2
    if-ltz v1, :cond_1d5

    .line 258
    iget-object v2, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->activeRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/RunnableFutureTask;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 259
    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c2

    .line 261
    :cond_1d5
    iget-object v1, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v1, :cond_1de

    const/16 v2, -0x3e8

    .line 262
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 264
    :cond_1de
    throw v0
.end method

.method protected final execute(Lcom/google/android/exoplayer2/util/RunnableFutureTask;Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/util/RunnableFutureTask<",
            "TT;*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_20

    .line 331
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->run()V

    .line 333
    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p2

    .line 335
    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 336
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1d

    .line 340
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 337
    :cond_1d
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 345
    :cond_20
    :goto_20
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Z

    if-nez p2, :cond_6a

    .line 349
    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz p2, :cond_2d

    const/16 v0, -0x3e8

    .line 350
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    .line 352
    :cond_2d
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->addActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    .line 353
    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 355
    :try_start_35
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object p2
    :try_end_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_35 .. :try_end_39} :catch_42
    .catchall {:try_start_35 .. :try_end_39} :catchall_40

    .line 368
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 369
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    return-object p2

    :catchall_40
    move-exception p2

    goto :goto_63

    :catch_42
    move-exception p2

    .line 357
    :try_start_43
    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 358
    instance-of v1, v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    if-eqz v1, :cond_52

    goto :goto_59

    .line 360
    :cond_52
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_60

    .line 364
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_40

    .line 368
    :goto_59
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 369
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    goto :goto_20

    .line 361
    :cond_60
    :try_start_60
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_40

    .line 368
    :goto_63
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/RunnableFutureTask;->blockUntilFinished()V

    .line 369
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeActiveRunnable(Lcom/google/android/exoplayer2/util/RunnableFutureTask;)V

    .line 370
    throw p2

    .line 346
    :cond_6a
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method protected final getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/offline/FilterableManifest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/upstream/DataSpec;",
            "Z)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    new-instance v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$1;-><init>(Lcom/google/android/exoplayer2/offline/SegmentDownloader;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->execute(Lcom/google/android/exoplayer2/util/RunnableFutureTask;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    return-object p1
.end method

.method protected abstract getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "TM;Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public final remove()V
    .registers 6

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheDataSourceFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->createDataSourceForRemovingDownload()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    .line 281
    :try_start_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Z)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object v1

    .line 282
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 283
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 284
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v4, v4, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeResource(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_2b} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2b} :catch_30
    .catchall {:try_start_6 .. :try_end_2b} :catchall_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :catchall_2e
    move-exception v0

    goto :goto_47

    .line 292
    :catch_30
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeResource(Ljava/lang/String;)V

    goto :goto_46

    .line 287
    :catch_3e
    :try_start_3e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_2e

    goto :goto_30

    :goto_46
    return-void

    .line 292
    :goto_47
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeResource(Ljava/lang/String;)V

    .line 293
    throw v0
.end method
