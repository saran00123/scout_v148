.class public Lcom/nimbusds/jose/util/BoundedInputStream;
.super Ljava/io/InputStream;
.source "BoundedInputStream.java"


# instance fields
.field private final in:Ljava/io/InputStream;

.field private mark:J

.field private final max:J

.field private pos:J

.field private propagateClose:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const-wide/16 v0, -0x1

    .line 86
    invoke-direct {p0, p1, v0, v1}, Lcom/nimbusds/jose/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 6

    .line 71
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    const-wide/16 v0, -0x1

    .line 73
    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->mark:J

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    .line 75
    iput-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    .line 76
    iput-object p1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    :goto_16
    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    if-eqz v0, :cond_9

    .line 163
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_9
    return-void
.end method

.method public getLimitBytes()J
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    return-wide v0
.end method

.method public isPropagateClose()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 177
    :try_start_1
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 178
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->mark:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 179
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2d

    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_f

    goto :goto_2d

    .line 103
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded configured input limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 106
    iget-wide v1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/nimbusds/jose/util/BoundedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-string v5, " bytes"

    const-string v6, "Exceeded configured input limit of "

    if-ltz v4, :cond_2d

    iget-wide v7, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_13

    goto :goto_2d

    .line 121
    :cond_13
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_37

    return p2

    .line 128
    :cond_37
    iget-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    .line 130
    iget-wide p2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    cmp-long v0, p2, v2

    if-ltz v0, :cond_64

    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    cmp-long p2, v0, p2

    if-gez p2, :cond_4a

    goto :goto_64

    .line 131
    :cond_4a
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_64
    :goto_64
    return p1
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 171
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->mark:J

    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 172
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPropagateClose(Z)V
    .registers 2

    .line 211
    iput-boolean p1, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->propagateClose:Z

    return-void
.end method

.method public skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_f

    iget-wide v2, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 142
    :cond_f
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 143
    iget-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->pos:J

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/nimbusds/jose/util/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
