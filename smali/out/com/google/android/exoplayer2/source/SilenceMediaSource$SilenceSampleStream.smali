.class final Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;
.super Ljava/lang/Object;
.source "SilenceMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SilenceMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SilenceSampleStream"
.end annotation


# instance fields
.field private final durationBytes:J

.field private positionBytes:J

.field private sentFormat:Z


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$300(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    const-wide/16 p1, 0x0

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .registers 1

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .registers 12

    .line 296
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->sentFormat:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_48

    if-eqz p3, :cond_8

    goto :goto_48

    .line 302
    :cond_8
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    const/4 p3, -0x4

    if-nez p1, :cond_19

    const/4 p1, 0x4

    .line 304
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    return p3

    .line 308
    :cond_19
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$400(J)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 309
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 310
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result p1

    if-eqz p1, :cond_29

    return p3

    .line 314
    :cond_29
    invoke-static {}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$500()[B

    move-result-object p1

    array-length p1, p1

    int-to-long v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    .line 315
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 316
    iget-object p2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$500()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 317
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    return p3

    .line 297
    :cond_48
    :goto_48
    invoke-static {}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$200()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 298
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->sentFormat:Z

    const/4 p1, -0x5

    return p1
.end method

.method public seekTo(J)V
    .registers 9

    .line 282
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$300(J)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    return-void
.end method

.method public skipData(J)I
    .registers 5

    .line 323
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    .line 325
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    sub-long/2addr p1, v0

    invoke-static {}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->access$500()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method
