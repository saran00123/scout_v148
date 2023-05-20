.class public Lcom/pilotlab/ffmpeg/ffmpeg;
.super Ljava/lang/Object;
.source "ffmpeg.java"


# instance fields
.field private isEixt:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "player"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/pilotlab/ffmpeg/ffmpeg;->isEixt:Z

    return-void
.end method

.method private native H264Decode([BI[B[I[B[I[B[I)I
.end method

.method private native H264DecoderInit(II)I
.end method

.method private native H264DecoderRelease()I
.end method

.method private native ResetWidthHeight([I[I)I
.end method


# virtual methods
.method public Decode([BI[B[I[B[I[B[I)I
    .registers 10

    .line 35
    monitor-enter p0

    .line 36
    :try_start_1
    iget-boolean v0, p0, Lcom/pilotlab/ffmpeg/ffmpeg;->isEixt:Z

    if-nez v0, :cond_b

    .line 37
    invoke-direct/range {p0 .. p8}, Lcom/pilotlab/ffmpeg/ffmpeg;->H264Decode([BI[B[I[B[I[B[I)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_b
    const/4 p1, -0x1

    .line 38
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    .line 39
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public DecoderInit(II)I
    .registers 3

    .line 16
    monitor-enter p0

    .line 17
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/ffmpeg/ffmpeg;->H264DecoderInit(II)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_7
    move-exception p1

    .line 18
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public DecoderRelease()I
    .registers 2

    .line 28
    monitor-enter p0

    const/4 v0, 0x1

    .line 29
    :try_start_2
    iput-boolean v0, p0, Lcom/pilotlab/ffmpeg/ffmpeg;->isEixt:Z

    .line 30
    invoke-direct {p0}, Lcom/pilotlab/ffmpeg/ffmpeg;->H264DecoderRelease()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    .line 31
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public native GetFFmpegVersion()I
.end method

.method public Rest([I[I)I
    .registers 3

    .line 22
    monitor-enter p0

    .line 23
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/ffmpeg/ffmpeg;->ResetWidthHeight([I[I)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_7
    move-exception p1

    .line 24
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public isEixt()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/pilotlab/ffmpeg/ffmpeg;->isEixt:Z

    return v0
.end method
