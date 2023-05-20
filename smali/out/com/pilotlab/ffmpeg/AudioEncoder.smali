.class public Lcom/pilotlab/ffmpeg/AudioEncoder;
.super Ljava/lang/Object;
.source "AudioEncoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioEncoder"


# instance fields
.field public bitRate:I

.field public bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public inputBuffers:[Ljava/nio/ByteBuffer;

.field private mediaCodec:Landroid/media/MediaCodec;

.field public outputBuffers:[Ljava/nio/ByteBuffer;

.field public presentationTimeUs:I

.field public pts:J

.field public smpleRate:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    const-string v0, "audio/mp4a-latm"

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 28
    iput-object v1, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    const v2, 0x17700

    .line 33
    iput v2, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->bitRate:I

    const/4 v2, 0x0

    .line 37
    iput v2, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->presentationTimeUs:I

    .line 44
    iput p1, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->smpleRate:I

    .line 47
    :try_start_14
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    .line 50
    invoke-static {v0, p1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v3, "mime"

    .line 53
    invoke-virtual {p1, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "aac-profile"

    const/4 v3, 0x2

    .line 54
    invoke-virtual {p1, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate"

    .line 57
    iget v3, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->bitRate:I

    invoke-virtual {p1, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "max-input-size"

    const/high16 v3, 0x100000

    .line 60
    invoke-virtual {p1, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 65
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 67
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 68
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 69
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5e
    return-void
.end method

.method private addADTStoPacket([BI)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 147
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, -0xf

    .line 148
    aput-byte v1, p1, v0

    const/16 v0, 0x60

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 149
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0xb

    const/16 v1, 0x40

    add-int/2addr v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x3

    .line 150
    aput-byte v0, p1, v1

    and-int/lit16 v0, p2, 0x7ff

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 151
    aput-byte v0, p1, v1

    and-int/lit8 p2, p2, 0x7

    const/4 v0, 0x5

    shl-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1f

    int-to-byte p2, p2

    .line 152
    aput-byte p2, p1, v0

    const/4 p2, 0x6

    const/4 v0, -0x4

    .line 153
    aput-byte v0, p1, p2

    return-void
.end method

.method private computePresentationTime(J)J
    .registers 5

    .line 159
    iget v0, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->smpleRate:I

    const v1, 0x57e4000

    div-int/2addr v1, v0

    int-to-long v0, v1

    mul-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 82
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method

.method public offerEncoder([B)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is coming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioEncoder"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_4c

    .line 97
    iget-object v2, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v7

    .line 98
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    array-length v4, v1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 103
    iget v2, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->presentationTimeUs:I

    int-to-long v4, v2

    invoke-direct {v0, v4, v5}, Lcom/pilotlab/ffmpeg/AudioEncoder;->computePresentationTime(J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->pts:J

    .line 105
    iget-object v6, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    array-length v9, v1

    iget-wide v10, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->pts:J

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 106
    iget v1, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->presentationTimeUs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->presentationTimeUs:I

    .line 110
    :cond_4c
    iget-object v1, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v2, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    :goto_56
    if-ltz v1, :cond_c3

    .line 113
    iget-object v2, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v6, v2, 0x7

    .line 115
    iget-object v7, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v1

    .line 117
    iget-object v8, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    iget-object v8, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 121
    new-array v8, v6, [B

    .line 122
    invoke-direct {v0, v8, v6}, Lcom/pilotlab/ffmpeg/AudioEncoder;->addADTStoPacket([BI)V

    const/4 v6, 0x7

    .line 124
    invoke-virtual {v7, v8, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 125
    iget-object v2, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    new-instance v2, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;

    iget v11, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->presentationTimeUs:I

    iget-wide v12, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->pts:J

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v9, v2

    move-object v10, v8

    invoke-direct/range {v9 .. v20}, Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;-><init>([BIJIIIIIII)V

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes written"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 133
    iget-object v1, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v2, v0, Lcom/pilotlab/ffmpeg/AudioEncoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    goto :goto_56

    :cond_c3
    return-void
.end method
