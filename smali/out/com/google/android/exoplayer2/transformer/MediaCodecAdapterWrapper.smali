.class final Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;
.super Ljava/lang/Object;
.source "MediaCodecAdapterWrapper.java"


# static fields
.field private static final MEDIA_CODEC_PCM_ENCODING:I = 0x2


# instance fields
.field private final codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

.field private inputBufferIndex:I

.field private inputStreamEnded:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputBufferIndex:I

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputFormat:Lcom/google/android/exoplayer2/Format;

.field private outputStreamEnded:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V
    .registers 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    .line 135
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 p1, -0x1

    .line 136
    iput p1, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->inputBufferIndex:I

    .line 137
    iput p1, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferIndex:I

    return-void
.end method

.method public static createForAudioDecoding(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_40

    .line 77
    :try_start_d
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 78
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "max-input-size"

    .line 80
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 82
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 83
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;->createAdapter(Landroid/media/MediaCodec;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2c} :catch_3e

    const/4 v3, 0x0

    .line 84
    :try_start_2d
    invoke-interface {p0, v2, v0, v0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 85
    invoke-interface {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->start()V

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_39

    return-object v0

    :catch_39
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_42

    :catch_3e
    move-exception p0

    goto :goto_42

    :catch_40
    move-exception p0

    move-object v1, v0

    :goto_42
    if-nez v0, :cond_4a

    if-eqz v1, :cond_4d

    .line 91
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    goto :goto_4d

    .line 89
    :cond_4a
    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->release()V

    .line 93
    :cond_4d
    :goto_4d
    throw p0
.end method

.method public static createForAudioEncoding(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_3b

    .line 111
    :try_start_d
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 112
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "bitrate"

    .line 114
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 115
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;->createAdapter(Landroid/media/MediaCodec;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_39

    const/4 v3, 0x1

    .line 116
    :try_start_28
    invoke-interface {p0, v2, v0, v0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 121
    invoke-interface {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->start()V

    .line 122
    new-instance v0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_34

    return-object v0

    :catch_34
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_3d

    :catch_39
    move-exception p0

    goto :goto_3d

    :catch_3b
    move-exception p0

    move-object v1, v0

    :goto_3d
    if-nez v0, :cond_45

    if-eqz v1, :cond_48

    .line 127
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    goto :goto_48

    .line 125
    :cond_45
    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->release()V

    .line 129
    :cond_48
    :goto_48
    throw p0
.end method

.method private static getFormat(Landroid/media/MediaFormat;)Lcom/google/android/exoplayer2/Format;
    .registers 5

    .line 270
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0xf

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "csd-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_78

    const-string v1, "mime"

    .line 282
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 285
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 286
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 287
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string/jumbo v1, "width"

    .line 289
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const-string v2, "height"

    .line 290
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    goto :goto_73

    .line 291
    :cond_55
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "channel-count"

    .line 295
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const-string v2, "sample-rate"

    .line 296
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    const/4 v1, 0x2

    .line 297
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 299
    :cond_73
    :goto_73
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0

    .line 277
    :cond_78
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 278
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 279
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private maybeDequeueOutputBuffer()Z
    .registers 5

    .line 235
    iget v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferIndex:I

    const/4 v1, 0x1

    if-ltz v0, :cond_6

    return v1

    .line 238
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputStreamEnded:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    return v2

    .line 242
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget-object v3, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferIndex:I

    .line 243
    iget v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferIndex:I

    if-gez v0, :cond_2a

    const/4 v1, -0x2

    if-ne v0, v1, :cond_29

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->getFormat(Landroid/media/MediaFormat;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputFormat:Lcom/google/android/exoplayer2/Format;

    :cond_29
    return v2

    .line 249
    :cond_2a
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3e

    .line 250
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputStreamEnded:Z

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_3e

    .line 252
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->releaseOutputBuffer()V

    return v2

    .line 256
    :cond_3e
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4a

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->releaseOutputBuffer()V

    return v2

    .line 262
    :cond_4a
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v2, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferIndex:I

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return v1
.end method


# virtual methods
.method public getOutputBuffer()Ljava/nio/ByteBuffer;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 198
    invoke-direct {p0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->maybeDequeueOutputBuffer()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 204
    invoke-direct {p0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->maybeDequeueOutputBuffer()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getOutputFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->maybeDequeueOutputBuffer()Z

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public isEnded()Z
    .registers 3

    .line 221
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputStreamEnded:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public maybeDequeueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z
    .registers 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1.data"
        }
        result = true
    .end annotation

    .line 148
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->inputStreamEnded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 151
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->inputBufferIndex:I

    if-gez v0, :cond_22

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->dequeueInputBufferIndex()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->inputBufferIndex:I

    .line 153
    iget v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->inputBufferIndex:I

    if-gez v0, :cond_17

    return v1

    .line 156
    :cond_17
    iget-object v1, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 159
    :cond_22
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 13

    .line 168
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Input buffer can not be queued after the input stream has ended."

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 173
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 174
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 175
    iget-object v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    move v6, v0

    move v7, v3

    goto :goto_27

    :cond_25
    move v6, v2

    move v7, v6

    .line 178
    :goto_27
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 179
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->inputStreamEnded:Z

    const/4 v2, 0x4

    :cond_30
    move v10, v2

    .line 182
    iget-object v4, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v5, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->inputBufferIndex:I

    iget-wide v8, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    const/4 v0, -0x1

    .line 183
    iput v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->inputBufferIndex:I

    const/4 v0, 0x0

    .line 184
    iput-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->release()V

    return-void
.end method

.method public releaseOutputBuffer()V
    .registers 4

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->codec:Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    iget v1, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferIndex:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    const/4 v0, -0x1

    .line 216
    iput v0, p0, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->outputBufferIndex:I

    return-void
.end method
