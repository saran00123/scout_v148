.class public Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;
.super Ljava/lang/Object;
.source "MyAudioTrackPlayer.java"


# instance fields
.field private audioPlayVol:I

.field private audioSeesionId:I

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mOutBufferSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 16
    iput v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->audioPlayVol:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 16
    iput v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->audioPlayVol:I

    .line 25
    iput p1, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->audioSeesionId:I

    return-void
.end method

.method private delayms(I)V
    .registers 4

    int-to-long v0, p1

    .line 64
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_9
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_f

    .line 119
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 120
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_f
    return-void
.end method

.method public destroy()V
    .registers 1

    .line 126
    invoke-virtual {p0}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->close()V

    return-void
.end method

.method public open(I)Z
    .registers 11

    .line 30
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_7

    .line 31
    invoke-virtual {p0}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->close()V

    :cond_7
    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 33
    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mOutBufferSize:I

    .line 37
    iget v8, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->audioSeesionId:I

    if-nez v8, :cond_23

    .line 38
    new-instance v7, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    iget v5, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mOutBufferSize:I

    const/4 v6, 0x1

    move-object v0, v7

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v7, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    goto :goto_32

    .line 43
    :cond_23
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    iget v6, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mOutBufferSize:I

    const/4 v7, 0x1

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 48
    :goto_32
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez p1, :cond_38

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_38
    invoke-virtual {p1}, Landroid/media/AudioTrack;->pause()V

    const/4 p1, 0x1

    return p1
.end method

.method public pause()V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1e

    .line 95
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 96
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "mAudioTrack stop flush"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 98
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 99
    iput v1, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->audioPlayVol:I

    :cond_1e
    return-void
.end method

.method pcm_db_count([SI)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p2, :cond_e

    .line 75
    aget-short v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    return v1
.end method

.method public play()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_13

    .line 109
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_13

    .line 110
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    const/16 v0, 0x7530

    .line 112
    iput v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->audioPlayVol:I

    :cond_13
    return-void
.end method

.method public playPcmFile(Ljava/lang/String;I)V
    .registers 4

    .line 131
    invoke-virtual {p0, p2}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->open(I)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 133
    :cond_7
    invoke-virtual {p0}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->play()V

    const/16 p2, 0x200

    .line 134
    new-array p2, p2, [B

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 139
    :try_start_19
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 142
    :goto_1e
    invoke-virtual {p1, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-gtz v0, :cond_25

    goto :goto_29

    .line 146
    :cond_25
    invoke-virtual {p0, p2, v0}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->sendAudio([BI)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_29

    goto :goto_1e

    .line 151
    :catch_29
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->destroy()V

    return-void
.end method

.method public sendAudio([BI)V
    .registers 5

    .line 57
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([BII)I

    :cond_8
    return-void
.end method

.method public sendAudio([SI)V
    .registers 6

    .line 81
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_22

    .line 83
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->pcm_db_count([SI)I

    move-result v0

    .line 84
    iget v1, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->audioPlayVol:I

    if-ge v1, v0, :cond_11

    .line 85
    iput v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->audioPlayVol:I

    goto :goto_1c

    :cond_11
    add-int/lit16 v2, v0, 0x3e8

    if-le v1, v2, :cond_1c

    sub-int v0, v1, v0

    .line 87
    div-int/lit8 v0, v0, 0x5

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->audioPlayVol:I

    .line 89
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/MyAudioTrackPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([SII)I

    :cond_22
    return-void
.end method
