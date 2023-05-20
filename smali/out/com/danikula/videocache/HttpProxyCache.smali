.class Lcom/danikula/videocache/HttpProxyCache;
.super Lcom/danikula/videocache/ProxyCache;
.source "HttpProxyCache.java"


# static fields
.field private static final NO_CACHE_BARRIER:F = 0.2f


# instance fields
.field private final cache:Lcom/danikula/videocache/file/FileCache;

.field private listener:Lcom/danikula/videocache/CacheListener;

.field private final source:Lcom/danikula/videocache/HttpUrlSource;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/HttpUrlSource;Lcom/danikula/videocache/file/FileCache;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/danikula/videocache/ProxyCache;-><init>(Lcom/danikula/videocache/Source;Lcom/danikula/videocache/Cache;)V

    .line 30
    iput-object p2, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    .line 31
    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 103
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isUseCache(Lcom/danikula/videocache/GetRequest;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    .line 54
    :goto_11
    iget-object v5, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v5}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v5

    if-eqz v2, :cond_2d

    .line 56
    iget-boolean v2, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v2, :cond_2d

    iget-wide v7, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    long-to-float p1, v7

    long-to-float v2, v5

    long-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v3, v4

    :cond_2d
    :goto_2d
    return v3
.end method

.method private newResponseHeaders(Lcom/danikula/videocache/GetRequest;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->getMime()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 62
    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v3}, Lcom/danikula/videocache/file/FileCache;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v3}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v3

    goto :goto_21

    :cond_1b
    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v3}, Lcom/danikula/videocache/HttpUrlSource;->length()J

    move-result-wide v3

    :goto_21
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-ltz v5, :cond_2a

    move v5, v2

    goto :goto_2b

    :cond_2a
    move v5, v6

    .line 64
    :goto_2b
    iget-boolean v7, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v7, :cond_34

    iget-wide v7, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    sub-long v7, v3, v7

    goto :goto_35

    :cond_34
    move-wide v7, v3

    :goto_35
    if-eqz v5, :cond_3d

    .line 65
    iget-boolean v9, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v9, :cond_3d

    move v9, v2

    goto :goto_3e

    :cond_3d
    move v9, v6

    .line 66
    :goto_3e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v11, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v11, :cond_4a

    const-string v11, "HTTP/1.1 206 PARTIAL CONTENT\n"

    goto :goto_4c

    :cond_4a
    const-string v11, "HTTP/1.1 200 OK\n"

    .line 67
    :goto_4c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Accept-Ranges: bytes\n"

    .line 68
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ""

    if-eqz v5, :cond_67

    new-array v5, v2, [Ljava/lang/Object;

    .line 69
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "Content-Length: %d\n"

    invoke-direct {p0, v7, v5}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_68

    :cond_67
    move-object v5, v11

    :goto_68
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_90

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v7, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    .line 70
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v6

    const-wide/16 v7, 0x1

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v2

    const/4 p1, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, p1

    const-string p1, "Content-Range: bytes %d-%d/%d\n"

    invoke-direct {p0, p1, v5}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_91

    :cond_90
    move-object p1, v11

    :goto_91
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string v0, "Content-Type: %s\n"

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :cond_a0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 72
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private responseWithCache(Ljava/io/OutputStream;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 77
    new-array v0, v0, [B

    .line 79
    :goto_4
    array-length v1, v0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/danikula/videocache/HttpProxyCache;->read([BJI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v1, v1

    add-long/2addr p2, v1

    goto :goto_4

    .line 83
    :cond_13
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private responseWithoutCache(Ljava/io/OutputStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/danikula/videocache/HttpUrlSource;

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-direct {v0, v1}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Lcom/danikula/videocache/HttpUrlSource;)V

    long-to-int p2, p2

    int-to-long p2, p2

    .line 89
    :try_start_9
    invoke-virtual {v0, p2, p3}, Lcom/danikula/videocache/HttpUrlSource;->open(J)V

    const/16 p2, 0x2000

    .line 90
    new-array p2, p2, [B

    .line 92
    :goto_10
    invoke-virtual {v0, p2}, Lcom/danikula/videocache/HttpUrlSource;->read([B)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1c

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_10

    .line 96
    :cond_1c
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_23

    .line 98
    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    return-void

    :catchall_23
    move-exception p1

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    .line 99
    throw p1
.end method


# virtual methods
.method protected onCachePercentsAvailableChanged(I)V
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->listener:Lcom/danikula/videocache/CacheListener;

    if-eqz v0, :cond_11

    .line 109
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    iget-object v1, v1, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v2}, Lcom/danikula/videocache/HttpUrlSource;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/danikula/videocache/CacheListener;->onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public processRequest(Lcom/danikula/videocache/GetRequest;Ljava/net/Socket;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCache;->newResponseHeaders(Lcom/danikula/videocache/GetRequest;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    .line 41
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 43
    iget-wide v1, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    .line 44
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCache;->isUseCache(Lcom/danikula/videocache/GetRequest;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 45
    invoke-direct {p0, v0, v1, v2}, Lcom/danikula/videocache/HttpProxyCache;->responseWithCache(Ljava/io/OutputStream;J)V

    goto :goto_25

    .line 47
    :cond_22
    invoke-direct {p0, v0, v1, v2}, Lcom/danikula/videocache/HttpProxyCache;->responseWithoutCache(Ljava/io/OutputStream;J)V

    :goto_25
    return-void
.end method

.method public registerCacheListener(Lcom/danikula/videocache/CacheListener;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCache;->listener:Lcom/danikula/videocache/CacheListener;

    return-void
.end method
