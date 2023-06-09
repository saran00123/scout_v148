.class public final Lcom/google/android/exoplayer2/upstream/FileDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "FileDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/FileDataSource$Factory;,
        Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    return-void
.end method

.method private static openLocalFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 155
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    .line 157
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_2e

    .line 166
    :cond_28
    new-instance p0, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p0

    .line 158
    :cond_2e
    :goto_2e
    new-instance v1, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string/jumbo p0, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    .line 159
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 139
    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_d

    .line 140
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_1b
    .catchall {:try_start_4 .. :try_end_d} :catchall_19

    .line 145
    :cond_d
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 146
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    if-eqz v0, :cond_18

    .line 147
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferEnded()V

    :cond_18
    return-void

    :catchall_19
    move-exception v2

    goto :goto_22

    :catch_1b
    move-exception v2

    .line 143
    :try_start_1c
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    .line 145
    :goto_22
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 146
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    if-eqz v0, :cond_2d

    .line 147
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferEnded()V

    .line 150
    :cond_2d
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 84
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 85
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->uri:Landroid/net/Uri;

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 89
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->openLocalFile(Landroid/net/Uri;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 91
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    goto :goto_28

    .line 92
    :cond_26
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    :goto_28
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    .line 93
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_41

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3b

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->opened:Z

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 103
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    return-wide v0

    .line 94
    :cond_3b
    :try_start_3b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_41} :catch_41

    :catch_41
    move-exception p1

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 110
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 p1, -0x1

    return p1

    .line 115
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_2e

    if-lez p1, :cond_2d

    .line 121
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesRemaining:J

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->bytesTransferred(I)V

    :cond_2d
    return p1

    :catch_2e
    move-exception p1

    .line 117
    new-instance p2, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
