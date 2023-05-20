.class public Lcom/danikula/videocache/HttpUrlSource;
.super Ljava/lang/Object;
.source "HttpUrlSource.java"

# interfaces
.implements Lcom/danikula/videocache/Source;


# static fields
.field private static final MAX_REDIRECTS:I = 0x5


# instance fields
.field private connection:Ljava/net/HttpURLConnection;

.field private final headerInjector:Lcom/danikula/videocache/headers/HeaderInjector;

.field private inputStream:Ljava/io/InputStream;

.field private sourceInfo:Lcom/danikula/videocache/SourceInfo;

.field private final sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/HttpUrlSource;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p1, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iput-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    .line 59
    iget-object v0, p1, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iput-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    .line 60
    iget-object p1, p1, Lcom/danikula/videocache/HttpUrlSource;->headerInjector:Lcom/danikula/videocache/headers/HeaderInjector;

    iput-object p1, p0, Lcom/danikula/videocache/HttpUrlSource;->headerInjector:Lcom/danikula/videocache/headers/HeaderInjector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 42
    invoke-static {}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorageFactory;->newEmptySourceInfoStorage()Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;)V
    .registers 4

    .line 46
    new-instance v0, Lcom/danikula/videocache/headers/EmptyHeadersInjector;

    invoke-direct {v0}, Lcom/danikula/videocache/headers/EmptyHeadersInjector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;Lcom/danikula/videocache/headers/HeaderInjector;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;Lcom/danikula/videocache/headers/HeaderInjector;)V
    .registers 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p2}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iput-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    .line 51
    invoke-static {p3}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/danikula/videocache/headers/HeaderInjector;

    iput-object p3, p0, Lcom/danikula/videocache/HttpUrlSource;->headerInjector:Lcom/danikula/videocache/headers/HeaderInjector;

    .line 52
    invoke-interface {p2, p1}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;->get(Ljava/lang/String;)Lcom/danikula/videocache/SourceInfo;

    move-result-object p2

    if-eqz p2, :cond_1a

    goto :goto_26

    .line 53
    :cond_1a
    new-instance p2, Lcom/danikula/videocache/SourceInfo;

    const-wide/32 v0, -0x80000000

    .line 54
    invoke-static {p1}, Lcom/danikula/videocache/ProxyCacheUtils;->getSupposablyMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/danikula/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_26
    iput-object p2, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    return-void
.end method

.method private fetchContentInfo()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/16 v2, 0x2710

    const/4 v3, 0x0

    .line 133
    :try_start_5
    invoke-direct {p0, v0, v1, v2}, Lcom/danikula/videocache/HttpUrlSource;->openConnection(JI)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_38
    .catchall {:try_start_5 .. :try_end_9} :catchall_35

    .line 134
    :try_start_9
    invoke-direct {p0, v0}, Lcom/danikula/videocache/HttpUrlSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v1

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 137
    new-instance v5, Lcom/danikula/videocache/SourceInfo;

    iget-object v6, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v6, v6, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-direct {v5, v6, v1, v2, v4}, Lcom/danikula/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v5, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    .line 138
    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v2, v2, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-interface {v1, v2, v4}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;->put(Ljava/lang/String;Lcom/danikula/videocache/SourceInfo;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2b} :catch_33
    .catchall {:try_start_9 .. :try_end_2b} :catchall_31

    .line 142
    invoke-static {v3}, Lcom/danikula/videocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    if-eqz v0, :cond_5a

    goto :goto_57

    :catchall_31
    move-exception v1

    goto :goto_5b

    :catch_33
    move-exception v1

    goto :goto_3a

    :catchall_35
    move-exception v1

    move-object v0, v3

    goto :goto_5b

    :catch_38
    move-exception v1

    move-object v0, v3

    .line 140
    :goto_3a
    :try_start_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error fetching info from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v4, v4, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_31

    .line 142
    invoke-static {v3}, Lcom/danikula/videocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    if-eqz v0, :cond_5a

    .line 144
    :goto_57
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5a
    return-void

    .line 142
    :goto_5b
    invoke-static {v3}, Lcom/danikula/videocache/ProxyCacheUtils;->close(Ljava/io/Closeable;)V

    if-eqz v0, :cond_63

    .line 144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    :cond_63
    throw v1
.end method

.method private getContentLength(Ljava/net/HttpURLConnection;)J
    .registers 4

    const-string v0, "Content-Length"

    .line 92
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    const-wide/16 v0, -0x1

    goto :goto_f

    .line 93
    :cond_b
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_f
    return-wide v0
.end method

.method private injectCustomHeaders(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->headerInjector:Lcom/danikula/videocache/headers/HeaderInjector;

    invoke-interface {v0, p2}, Lcom/danikula/videocache/headers/HeaderInjector;->addHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_9

    return-void

    .line 183
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "****** injectCustomHeaders ****** :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfError(Ljava/lang/String;)V

    .line 184
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :cond_45
    return-void
.end method

.method private openConnection(JI)Ljava/net/HttpURLConnection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v0, v0, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 155
    :cond_6
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 156
    invoke-direct {p0, v3, v0}, Lcom/danikula/videocache/HttpUrlSource;->injectCustomHeaders(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_35

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Range"

    invoke-virtual {v3, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    if-lez p3, :cond_3d

    .line 161
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 162
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 164
    :cond_3d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_50

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_50

    const/16 v5, 0x12f

    if-ne v4, v5, :cond_4e

    goto :goto_50

    :cond_4e
    move v4, v1

    goto :goto_51

    :cond_50
    :goto_50
    const/4 v4, 0x1

    :goto_51
    if-eqz v4, :cond_5e

    const-string v0, "Location"

    .line 167
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    .line 169
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5e
    const/4 v5, 0x5

    if-gt v2, v5, :cond_64

    if-nez v4, :cond_6

    return-object v3

    .line 172
    :cond_64
    new-instance p1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many redirects: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readSourceAvailableBytes(Ljava/net/HttpURLConnection;JI)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpUrlSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    const/16 p1, 0xc8

    if-ne p4, p1, :cond_9

    goto :goto_13

    :cond_9
    const/16 p1, 0xce

    if-ne p4, p1, :cond_f

    add-long/2addr v0, p2

    goto :goto_13

    .line 87
    :cond_f
    iget-object p1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-wide v0, p1, Lcom/danikula/videocache/SourceInfo;->length:J

    :goto_13
    return-wide v0
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1a

    .line 100
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_1a

    :catch_8
    move-exception v0

    const-string v1, "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :("

    .line 108
    invoke-static {v1, v0}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1a

    :catch_f
    move-exception v0

    goto :goto_12

    :catch_11
    move-exception v0

    .line 106
    :goto_12
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Wait... but why? WTF!? Really shouldn\'t happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1a
    :goto_1a
    return-void
.end method

.method public declared-synchronized getMime()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v0, v0, Lcom/danikula/videocache/SourceInfo;->mime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 191
    invoke-direct {p0}, Lcom/danikula/videocache/HttpUrlSource;->fetchContentInfo()V

    .line 193
    :cond_e
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v0, v0, Lcom/danikula/videocache/SourceInfo;->mime:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v0, v0, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized length()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-wide v0, v0, Lcom/danikula/videocache/SourceInfo;->length:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 66
    invoke-direct {p0}, Lcom/danikula/videocache/HttpUrlSource;->fetchContentInfo()V

    .line 68
    :cond_f
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-wide v0, v0, Lcom/danikula/videocache/SourceInfo;->length:J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-wide v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 74
    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/danikula/videocache/HttpUrlSource;->openConnection(JI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    .line 75
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->inputStream:Ljava/io/InputStream;

    .line 77
    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/danikula/videocache/HttpUrlSource;->readSourceAvailableBytes(Ljava/net/HttpURLConnection;JI)J

    move-result-wide v1

    .line 78
    new-instance v3, Lcom/danikula/videocache/SourceInfo;

    iget-object v4, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v4, v4, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/danikula/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v3, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    .line 79
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfoStorage:Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;

    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v1, v1, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-interface {v0, v1, v2}, Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;->put(Ljava/lang/String;Lcom/danikula/videocache/SourceInfo;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception v0

    .line 81
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v3, v3, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read([B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/danikula/videocache/HttpUrlSource;->inputStream:Ljava/io/InputStream;

    const-string v1, "Error reading data from "

    if-eqz v0, :cond_48

    const/4 v2, 0x0

    .line 121
    :try_start_7
    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_c
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_c} :catch_27
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    .line 125
    new-instance v0, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v1, v1, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_27
    move-exception p1

    .line 123
    new-instance v0, Lcom/danikula/videocache/InterruptedProxyCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v2, v2, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/danikula/videocache/InterruptedProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 118
    :cond_48
    new-instance p1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    iget-object v1, v1, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": connection is absent!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpUrlSource{sourceInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/danikula/videocache/HttpUrlSource;->sourceInfo:Lcom/danikula/videocache/SourceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
