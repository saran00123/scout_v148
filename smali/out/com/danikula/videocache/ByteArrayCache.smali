.class public Lcom/danikula/videocache/ByteArrayCache;
.super Ljava/lang/Object;
.source "ByteArrayCache.java"

# interfaces
.implements Lcom/danikula/videocache/Cache;


# instance fields
.field private volatile completed:Z

.field private volatile data:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 17
    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/danikula/videocache/ByteArrayCache;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/danikula/videocache/ByteArrayCache;->data:[B

    return-void
.end method


# virtual methods
.method public append([BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/danikula/videocache/ByteArrayCache;->data:[B

    invoke-static {v0}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-ltz p2, :cond_d

    .line 43
    array-length v1, p1

    if-gt p2, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    invoke-static {v1}, Lcom/danikula/videocache/Preconditions;->checkArgument(Z)V

    .line 45
    iget-object v1, p0, Lcom/danikula/videocache/ByteArrayCache;->data:[B

    iget-object v2, p0, Lcom/danikula/videocache/ByteArrayCache;->data:[B

    array-length v2, v2

    add-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/danikula/videocache/ByteArrayCache;->data:[B

    array-length v2, v2

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iput-object v1, p0, Lcom/danikula/videocache/ByteArrayCache;->data:[B

    return-void
.end method

.method public available()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/danikula/videocache/ByteArrayCache;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    return-void
.end method

.method public complete()V
    .registers 2

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/danikula/videocache/ByteArrayCache;->completed:Z

    return-void
.end method

.method public isCompleted()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/danikula/videocache/ByteArrayCache;->completed:Z

    return v0
.end method

.method public read([BJI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/danikula/videocache/ByteArrayCache;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1e

    .line 32
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/danikula/videocache/ByteArrayCache;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    long-to-int p2, p2

    invoke-virtual {v0, p1, p2, p4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    return p1

    .line 30
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too long offset for memory cache "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
