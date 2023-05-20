.class public final Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorInput;


# static fields
.field private static final PEEK_MAX_FREE_SPACE:I = 0x80000

.field private static final PEEK_MIN_FREE_SPACE_AFTER_RESIZE:I = 0x10000

.field private static final SCRATCH_SPACE_SIZE:I = 0x1000


# instance fields
.field private final dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final scratchSpace:[B

.field private final streamLength:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

    .line 52
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 53
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    const/high16 p1, 0x10000

    .line 54
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/16 p1, 0x1000

    .line 55
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    return-void
.end method

.method private commitBytesRead(I)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 300
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    :cond_9
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .registers 5

    .line 206
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 207
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, p1

    if-le v0, v1, :cond_1d

    .line 208
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result p1

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    :cond_1d
    return-void
.end method

.method private readFromPeekBuffer([BII)I
    .registers 6

    .line 235
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 238
    :cond_6
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p3
.end method

.method private readFromUpstream([BIIIZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->dataReader:Lcom/google/android/exoplayer2/upstream/DataReader;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1c

    if-nez p4, :cond_16

    if-eqz p5, :cond_16

    return p2

    .line 288
    :cond_16
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1c
    add-int/2addr p4, p1

    return p4

    .line 281
    :cond_1e
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
.end method

.method private skipFromPeekBuffer(I)I
    .registers 3

    .line 221
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p1
.end method

.method private updatePeekBuffer(I)V
    .registers 7

    .line 250
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 252
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 253
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    array-length v3, v1

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_17

    const/high16 v1, 0x10000

    add-int/2addr v2, v1

    .line 254
    new-array v1, v2, [B

    .line 256
    :cond_17
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v2, p1, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_9
    if-ge v5, p1, :cond_21

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 159
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_1b

    const/4 p1, 0x0

    return p1

    .line 163
    :cond_1b
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_9

    .line 165
    :cond_21
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    const/4 p1, 0x1

    return p1
.end method

.method public getLength()J
    .registers 3

    .line 191
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .registers 5

    .line 181
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .registers 3

    .line 186
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peek([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 116
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1e

    .line 119
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    .line 120
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_18

    return v0

    .line 129
    :cond_18
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_22

    .line 131
    :cond_1e
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 133
    :goto_22
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return p3
.end method

.method public peekFully([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    return-void
.end method

.method public peekFully([BIIZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result p4

    if-nez p4, :cond_8

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_8
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 63
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    .line 66
    :cond_10
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public readFully([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    return-void
.end method

.method public readFully([BIIZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p3, :cond_14

    if-eq v5, v0, :cond_14

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 75
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    goto :goto_5

    .line 77
    :cond_14
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public resetPeekPosition()V
    .registers 2

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 196
    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 197
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 198
    throw p3
.end method

.method public skip(I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    if-nez v0, :cond_15

    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    const/4 v3, 0x0

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    .line 92
    :cond_15
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public skipFully(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    return-void
.end method

.method public skipFully(IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p1, :cond_1c

    if-eq v5, v0, :cond_1c

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 101
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->scratchSpace:[B

    neg-int v3, v5

    move-object v1, p0

    move v6, p2

    .line 102
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    goto :goto_5

    .line 104
    :cond_1c
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method
