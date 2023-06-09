.class public final Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "ByteArrayDataSource.java"


# instance fields
.field private bytesRemaining:I

.field private final data:[B

.field private opened:Z

.field private readPosition:I

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 41
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    array-length v1, p1

    if-lez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->opened:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->opened:Z

    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->transferEnded()V

    :cond_a
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 50
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    .line 51
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    goto :goto_1e

    :cond_1c
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    :goto_1e
    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 53
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    if-lez v0, :cond_37

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    array-length v0, v0

    if-gt v1, v0, :cond_37

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->opened:Z

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 59
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    int-to-long v0, p1

    return-wide v0

    .line 54
    :cond_37
    new-instance v0, Ljava/io/IOException;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    array-length p1, p1

    const/16 v4, 0x4d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unsatisfiable range: ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], length: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .registers 6

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    .line 70
    :cond_a
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    .line 73
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 74
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesTransferred(I)V

    return p3
.end method
