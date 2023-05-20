.class Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyDiskCacheProvider"
.end annotation


# instance fields
.field private volatile diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

.field private final factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V
    .registers 2

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    return-void
.end method


# virtual methods
.method declared-synchronized clearDiskCacheIfCreated()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 447
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_7

    .line 448
    monitor-exit p0

    return-void

    .line 450
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    .line 451
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 2

    .line 455
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_21

    .line 456
    monitor-enter p0

    .line 457
    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_11

    .line 458
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;->build()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 460
    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_1c

    .line 461
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 463
    :cond_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    .line 465
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-object v0
.end method
