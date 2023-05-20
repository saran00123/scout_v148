.class public Lcom/pilotlab/ffmpeg/AudioDecoder;
.super Ljava/lang/Object;
.source "AudioDecoder.java"


# static fields
.field private static final KEY_CHANNEL_COUNT:I = 0x1

.field private static final KEY_SAMPLE_RATE:I = 0x5622

.field private static final TAG:Ljava/lang/String; = "AudioDecoder"


# instance fields
.field private audioDecoder:Landroid/media/MediaCodec;

.field kk:I

.field private myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

.field myAudioTrackPlayer:Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

.field private obj:Ljava/lang/Object;

.field private prevPresentationTimes:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->obj:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->kk:I

    return-void
.end method

.method public constructor <init>(Lcom/pilotlab/ffmpeg/MyAudioRecord;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->obj:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->kk:I

    .line 42
    iput-object p1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    return-void
.end method

.method private findHead([BII)I
    .registers 5

    :goto_0
    if-gt p2, p3, :cond_c

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/ffmpeg/AudioDecoder;->isHead([BI)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_c
    :goto_c
    if-ne p2, p3, :cond_f

    const/4 p2, -0x1

    :cond_f
    return p2
.end method

.method private getPTSUs()J
    .registers 6

    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 53
    iget-wide v2, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->prevPresentationTimes:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_f

    sub-long/2addr v2, v0

    add-long/2addr v0, v2

    :cond_f
    return-wide v0
.end method

.method private isHead([BI)Z
    .registers 5

    .line 99
    aget-byte v0, p1, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    const/16 v1, -0xf

    if-ne v0, v1, :cond_17

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    const/16 p2, 0x5c

    if-ne p1, p2, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method


# virtual methods
.method public decode([BII)V
    .registers 16

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->kk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->obj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 186
    :try_start_2b
    invoke-direct {p0, p1, v1}, Lcom/pilotlab/ffmpeg/AudioDecoder;->isHead([BI)Z

    move-result v2

    if-nez v2, :cond_33

    .line 187
    monitor-exit v0

    return-void

    :cond_33
    const-wide/16 v2, 0x0

    .line 193
    iget-object v4, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-nez v4, :cond_3b

    .line 194
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_a4

    return-void

    .line 199
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-ltz v6, :cond_5b

    .line 202
    iget-object v4, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v6}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 206
    invoke-virtual {v4, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 208
    iget-object v5, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/pilotlab/ffmpeg/AudioDecoder;->getPTSUs()J

    move-result-wide v9

    const/4 v11, 0x0

    move v8, p3

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 212
    :cond_5b
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 214
    iget-object p2, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p2

    :goto_66
    if-ltz p2, :cond_9c

    .line 224
    iget-object p3, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p3, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 226
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v4, v4, [B

    .line 227
    invoke-virtual {p3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 229
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 231
    iget-object p3, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioTrackPlayer:Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    if-eqz p3, :cond_83

    .line 232
    iget-object p3, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioTrackPlayer:Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p3, v4, v5}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->sendAudio([BI)V

    .line 234
    :cond_83
    iget-object p3, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p3, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 236
    iget-object p2, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p2
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_8e} :catch_8f
    .catchall {:try_start_3b .. :try_end_8e} :catchall_a4

    goto :goto_66

    :catch_8f
    move-exception p1

    :try_start_90
    const-string p2, "AudioDecoder"

    .line 239
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    :cond_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_90 .. :try_end_9d} :catchall_a4

    .line 245
    iget p1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->kk:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->kk:I

    return-void

    :catchall_a4
    move-exception p1

    .line 242
    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw p1
.end method

.method public prepare()Z
    .registers 7

    const-string v0, "audio/mp4a-latm"

    .line 126
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->getRecorder()Landroid/media/AudioRecord;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 127
    new-instance v1, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    iget-object v2, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioRecord:Lcom/pilotlab/ffmpeg/MyAudioRecord;

    invoke-virtual {v2}, Lcom/pilotlab/ffmpeg/MyAudioRecord;->getRecorder()Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;-><init>(I)V

    iput-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioTrackPlayer:Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    goto :goto_2b

    .line 129
    :cond_24
    new-instance v1, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    invoke-direct {v1}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;-><init>()V

    iput-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioTrackPlayer:Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    .line 131
    :goto_2b
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioTrackPlayer:Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    const/16 v2, 0x5622

    invoke-virtual {v1, v2}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->open(I)Z

    .line 132
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioTrackPlayer:Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    invoke-virtual {v1}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->play()V

    const/4 v1, 0x0

    .line 139
    :try_start_38
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x1

    .line 141
    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "mime"

    .line 143
    invoke-virtual {v4, v5, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sample-rate"

    .line 145
    invoke-virtual {v4, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "channel-count"

    .line 148
    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "channel-mask"

    const/16 v2, 0x10

    .line 149
    invoke-virtual {v4, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "max-input-size"

    const/16 v2, 0x400

    .line 150
    invoke-virtual {v4, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "is-adts"

    .line 154
    invoke-virtual {v4, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "aac-profile"

    const/4 v2, 0x2

    .line 155
    invoke-virtual {v4, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 158
    new-array v0, v2, [B

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v2, -0x78

    aput-byte v2, v0, v3

    .line 161
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v2, "csd-0"

    .line 162
    invoke-virtual {v4, v2, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 164
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_84} :catch_8d

    .line 169
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_89

    return v1

    .line 172
    :cond_89
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return v3

    :catch_8d
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method public release()V
    .registers 3

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->obj:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_27

    .line 63
    :try_start_3
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioTrackPlayer:Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    if-eqz v1, :cond_11

    .line 64
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioTrackPlayer:Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    invoke-virtual {v1}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->pause()V

    .line 65
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->myAudioTrackPlayer:Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;

    invoke-virtual {v1}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->destroy()V

    .line 68
    :cond_11
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_22

    .line 69
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 70
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/pilotlab/ffmpeg/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    .line 73
    :cond_22
    monitor-exit v0

    goto :goto_2b

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    :try_start_26
    throw v1
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_27} :catch_27

    :catch_27
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_2b
    return-void
.end method
