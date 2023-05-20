.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;
.super Ljava/lang/Object;
.source "CacheDataSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;,
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x5000

.field public static final DEFAULT_FRAGMENT_SIZE:J = 0x500000L

.field private static final MIN_RECOMMENDED_FRAGMENT_SIZE:J = 0x200000L

.field private static final TAG:Ljava/lang/String; = "CacheDataSink"


# instance fields
.field private final bufferSize:I

.field private bufferedOutputStream:Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dataSpecBytesWritten:J

.field private dataSpecFragmentSize:J

.field private file:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fragmentSize:J

.field private outputStream:Ljava/io/OutputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputStreamBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V
    .registers 5

    const/16 v0, 0x5000

    .line 149
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V
    .registers 9

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-wide/16 v1, -0x1

    if-gtz v0, :cond_12

    cmp-long v0, p2, v1

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    const-string v3, "fragmentSize must be positive or C.LENGTH_UNSET."

    .line 163
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    cmp-long v0, p2, v1

    if-eqz v0, :cond_2a

    const-wide/32 v1, 0x200000

    cmp-long v1, p2, v1

    if-gez v1, :cond_2a

    const-string v1, "CacheDataSink"

    const-string v2, "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance."

    .line 167
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_2a
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v0, :cond_39

    const-wide p2, 0x7fffffffffffffffL

    .line 174
    :cond_39
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->fragmentSize:J

    .line 175
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->bufferSize:I

    return-void
.end method

.method private closeCurrentOutputStream()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 264
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_22

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 268
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 270
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    .line 272
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->commitFile(Ljava/io/File;J)V

    return-void

    :catchall_22
    move-exception v0

    .line 267
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 268
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    .line 269
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 270
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    .line 274
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 276
    throw v0
.end method

.method private openNextOutputStream(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    goto :goto_14

    .line 238
    :cond_9
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpecFragmentSize:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_14
    move-wide v8, v2

    .line 239
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    .line 241
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    add-long v6, v0, v2

    .line 240
    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startFile(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    .line 242
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->file:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 243
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->bufferSize:I

    if-lez v0, :cond_4b

    .line 244
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->bufferedOutputStream:Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;

    if-nez v1, :cond_43

    .line 245
    new-instance v1, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;

    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->bufferedOutputStream:Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;

    goto :goto_46

    .line 248
    :cond_43
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;->reset(Ljava/io/OutputStream;)V

    .line 250
    :goto_46
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->bufferedOutputStream:Lcom/google/android/exoplayer2/util/ReusableBufferedOutputStream;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    goto :goto_4d

    .line 252
    :cond_4b
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    :goto_4d
    const-wide/16 v0, 0x0

    .line 254
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-nez v0, :cond_5

    return-void

    .line 228
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->closeCurrentOutputStream()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 230
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .line 180
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x2

    .line 182
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void

    .line 186
    :cond_18
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v0, 0x4

    .line 188
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->fragmentSize:J

    goto :goto_29

    :cond_24
    const-wide v0, 0x7fffffffffffffffL

    :goto_29
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpecFragmentSize:J

    const-wide/16 v0, 0x0

    .line 189
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    .line 191
    :try_start_2f
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->openNextOutputStream(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p1

    .line 193
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public write([BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    :goto_6
    if-ge v1, p3, :cond_44

    .line 206
    :try_start_8
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpecFragmentSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    .line 207
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->closeCurrentOutputStream()V

    .line 208
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->openNextOutputStream(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    :cond_16
    sub-int v2, p3, v1

    int-to-long v2, v2

    .line 210
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpecFragmentSize:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    sub-long/2addr v4, v6

    .line 211
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 212
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStream:Ljava/io/OutputStream;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;

    add-int v4, p2, v1

    invoke-virtual {v3, p1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v2

    .line 214
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->outputStreamBytesWritten:J

    .line 215
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->dataSpecBytesWritten:J
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3c} :catch_3d

    goto :goto_6

    :catch_3d
    move-exception p1

    .line 218
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_44
    return-void
.end method