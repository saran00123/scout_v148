.class final Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;
.super Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.source "BatchBuffer.java"


# static fields
.field public static final DEFAULT_MAX_SAMPLE_COUNT:I = 0x20

.field static final MAX_SIZE_BYTES:I = 0x2ee000
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private lastSampleTimeUs:J

.field private maxSampleCount:I

.field private sampleCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    .line 44
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    const/16 v0, 0x20

    .line 45
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->maxSampleCount:I

    return-void
.end method

.method private canAppendSampleBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z
    .registers 6

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 124
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->maxSampleCount:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_10

    return v3

    .line 127
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->isDecodeOnly()Z

    move-result v2

    if-eq v0, v2, :cond_1b

    return v3

    .line 130
    :cond_1b
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_34

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    add-int/2addr v0, p1

    const p1, 0x2ee000

    if-le v0, p1, :cond_34

    return v3

    :cond_34
    return v1
.end method


# virtual methods
.method public append(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z
    .registers 6

    .line 95
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 96
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->hasSupplementalData()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 97
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->canAppendSampleBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 p1, 0x0

    return p1

    .line 101
    :cond_21
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    if-nez v0, :cond_36

    .line 102
    iget-wide v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->timeUs:J

    .line 103
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 104
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setFlags(I)V

    .line 107
    :cond_36
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_41

    const/high16 v0, -0x80000000

    .line 108
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setFlags(I)V

    .line 110
    :cond_41
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_51

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->ensureSpaceForWrite(I)V

    .line 113
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 115
    :cond_51
    iget-wide v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    return v1
.end method

.method public clear()V
    .registers 2

    .line 50
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    return-void
.end method

.method public getFirstSampleTimeUs()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->timeUs:J

    return-wide v0
.end method

.method public getLastSampleTimeUs()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->lastSampleTimeUs:J

    return-wide v0
.end method

.method public getSampleCount()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    return v0
.end method

.method public hasSamples()Z
    .registers 2

    .line 83
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->sampleCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setMaxSampleCount(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 56
    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 57
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->maxSampleCount:I

    return-void
.end method
