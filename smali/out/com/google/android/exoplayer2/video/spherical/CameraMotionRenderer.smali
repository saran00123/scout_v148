.class public final Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "CameraMotionRenderer.java"


# static fields
.field private static final SAMPLE_WINDOW_DURATION_US:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "CameraMotionRenderer"


# instance fields
.field private final buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private lastTimestampUs:J

.field private listener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private offsetUs:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x6

    .line 48
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private parseMetadata(Ljava/nio/ByteBuffer;)[F
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x3

    .line 135
    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_26
    if-ge v1, p1, :cond_37

    .line 137
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_37
    return-object v0
.end method

.method private resetListener()V
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->listener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_7

    .line 144
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    :cond_7
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    .line 69
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->listener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_b

    .line 71
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :goto_b
    return-void
.end method

.method public isEnded()Z
    .registers 2

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->hasReadStreamToEnd()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .registers 1

    .line 88
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->resetListener()V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 4

    const-wide/high16 p1, -0x8000000000000000L

    .line 82
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 83
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->resetListener()V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .registers 6

    .line 77
    iput-wide p4, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->offsetUs:J

    return-void
.end method

.method public render(JJ)V
    .registers 9

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->hasReadStreamToEnd()Z

    move-result p3

    if-nez p3, :cond_66

    iget-wide p3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_66

    .line 95
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object p3

    .line 98
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_66

    .line 99
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p3

    if-eqz p3, :cond_2c

    goto :goto_66

    .line 103
    :cond_2c
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide p3, p3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 104
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->listener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result p3

    if-eqz p3, :cond_3f

    goto :goto_0

    .line 108
    :cond_3f
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 109
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->buffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object p3, p3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->parseMetadata(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-nez p3, :cond_55

    goto :goto_0

    .line 114
    :cond_55
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->listener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/spherical/CameraMotionRenderer;->offsetUs:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    goto :goto_0

    :cond_66
    :goto_66
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .registers 3

    .line 61
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x4

    .line 62
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    goto :goto_15

    :cond_10
    const/4 p1, 0x0

    .line 63
    invoke-static {p1}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result p1

    :goto_15
    return p1
.end method
