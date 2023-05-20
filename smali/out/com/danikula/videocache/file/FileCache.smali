.class public Lcom/danikula/videocache/file/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Lcom/danikula/videocache/Cache;


# static fields
.field private static final TEMP_POSTFIX:Ljava/lang/String; = ".download"


# instance fields
.field private dataFile:Ljava/io/RandomAccessFile;

.field private final diskUsage:Lcom/danikula/videocache/file/DiskUsage;

.field public file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/danikula/videocache/file/UnlimitedDiskUsage;

    invoke-direct {v0}, Lcom/danikula/videocache/file/UnlimitedDiskUsage;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/danikula/videocache/file/FileCache;-><init>(Ljava/io/File;Lcom/danikula/videocache/file/DiskUsage;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/danikula/videocache/file/DiskUsage;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_49

    .line 32
    :try_start_5
    iput-object p2, p0, Lcom/danikula/videocache/file/FileCache;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 34
    invoke-static {p2}, Lcom/danikula/videocache/file/Files;->makeDir(Ljava/io/File;)V

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_16

    move-object v0, p1

    goto :goto_34

    .line 36
    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_34
    iput-object v0, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    .line 37
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    if-eqz p2, :cond_3f

    const-string p2, "r"

    goto :goto_41

    :cond_3f
    const-string p2, "rw"

    :goto_41
    invoke-direct {v0, v1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    return-void

    :catch_47
    move-exception p2

    goto :goto_4f

    .line 30
    :cond_49
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    throw p2
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4f} :catch_47

    .line 39
    :goto_4f
    new-instance v0, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error using file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as disc cache"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private isTempFile(Ljava/io/File;)Z
    .registers 3

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public declared-synchronized append([BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 66
    :try_start_2
    invoke-virtual {p0}, Lcom/danikula/videocache/file/FileCache;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_18

    .line 69
    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 70
    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, v0, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_38
    .catchall {:try_start_2 .. :try_end_16} :catchall_36

    .line 75
    monitor-exit p0

    return-void

    .line 67
    :cond_18
    :try_start_18
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error append cache: cache file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_36} :catch_38
    .catchall {:try_start_18 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p1

    goto :goto_5b

    :catch_38
    move-exception v1

    :try_start_39
    const-string v2, "Error writing %d bytes to %s from buffer with size %d"

    .line 73
    new-instance v3, Lcom/danikula/videocache/ProxyCacheException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    aput-object v0, v4, p2

    const/4 p2, 0x2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_36

    :goto_5b
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized available()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_d
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    long-to-int v0, v0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    goto :goto_27

    :catch_d
    move-exception v0

    .line 48
    :try_start_e
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading length of file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_b

    :goto_27
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 81
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/danikula/videocache/file/DiskUsage;->touch(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_11
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 85
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    goto :goto_2b

    :catch_11
    move-exception v0

    .line 83
    :try_start_12
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    :goto_2b
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized complete()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_1
    invoke-virtual {p0}, Lcom/danikula/videocache/file/FileCache;->isCompleted()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_91

    if-eqz v0, :cond_9

    .line 90
    monitor-exit p0

    return-void

    .line 93
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/danikula/videocache/file/FileCache;->close()V

    .line 94
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 100
    iput-object v1, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_91

    .line 102
    :try_start_38
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    .line 103
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/danikula/videocache/file/DiskUsage;->touch(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4a} :catch_4c
    .catchall {:try_start_38 .. :try_end_4a} :catchall_91

    .line 107
    monitor-exit p0

    return-void

    :catch_4c
    move-exception v0

    .line 105
    :try_start_4d
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as disc cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :cond_6b
    new-instance v0, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error renaming file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for completion!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_91
    .catchall {:try_start_4d .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized isCompleted()Z
    .registers 2

    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/danikula/videocache/file/FileCache;->isTempFile(Ljava/io/File;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BJI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 55
    :try_start_2
    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 56
    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, v0, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_11
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    monitor-exit p0

    return p1

    :catchall_f
    move-exception p1

    goto :goto_41

    :catch_11
    move-exception v1

    :try_start_12
    const-string v2, "Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]"

    .line 59
    new-instance v3, Lcom/danikula/videocache/ProxyCacheException;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v4, v0

    const/4 p4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v4, p4

    const/4 p2, 0x2

    invoke-virtual {p0}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v4, p2

    const/4 p2, 0x3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_f

    :goto_41
    monitor-exit p0

    throw p1
.end method
