.class final Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field public final childStream:Lcom/google/android/exoplayer2/source/SampleStream;

.field private sentEos:Z

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;)V
    .registers 3

    .line 282
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    return-void
.end method


# virtual methods
.method public clearSentEos()V
    .registers 2

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return-void
.end method

.method public isReady()Z
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->isReady()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .registers 14

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_a

    return v1

    .line 306
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_14

    .line 307
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    return v3

    .line 310
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleStream;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_5c

    .line 312
    iget-object p2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    .line 313
    iget p3, p2, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    if-nez p3, :cond_2f

    iget p3, p2, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-eqz p3, :cond_5b

    .line 315
    :cond_2f
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v1, p3, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v6, 0x0

    cmp-long p3, v1, v6

    const/4 v1, 0x0

    if-eqz p3, :cond_3c

    move p3, v1

    goto :goto_3e

    :cond_3c
    iget p3, p2, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 316
    :goto_3e
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_47

    goto :goto_49

    :cond_47
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 319
    :goto_49
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 320
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 321
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 322
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    :cond_5b
    return v0

    .line 326
    :cond_5c
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_8a

    if-ne p3, v3, :cond_70

    iget-wide v6, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v6, v8

    if-gez p1, :cond_80

    :cond_70
    if-ne p3, v1, :cond_8a

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    .line 329
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_8a

    iget-boolean p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z

    if-nez p1, :cond_8a

    .line 331
    :cond_80
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 332
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return v3

    :cond_8a
    return p3
.end method

.method public skipData(J)I
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, -0x3

    return p1

    .line 344
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplayer2/source/SampleStream;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method
