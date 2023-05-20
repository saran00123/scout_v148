.class public final Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;
.super Ljava/lang/Object;
.source "MpegAudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/MpegAudioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setForHeaderData(I)Z
    .registers 10

    .line 53
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$000(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    ushr-int/lit8 v0, p1, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    ushr-int/lit8 v4, p1, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_16

    return v1

    :cond_16
    ushr-int/lit8 v5, p1, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_b7

    if-ne v5, v6, :cond_21

    goto/16 :goto_b7

    :cond_21
    ushr-int/lit8 v6, p1, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_27

    return v1

    .line 78
    :cond_27
    iput v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->version:I

    .line 79
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$100()[Ljava/lang/String;

    move-result-object v1

    rsub-int/lit8 v7, v4, 0x3

    aget-object v1, v1, v7

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$200()[I

    move-result-object v1

    aget v1, v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_44

    .line 83
    iget v6, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    goto :goto_4c

    :cond_44
    if-nez v0, :cond_4c

    .line 86
    iget v6, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    :cond_4c
    :goto_4c
    ushr-int/lit8 v6, p1, 0x9

    and-int/2addr v6, v3

    .line 89
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$300(II)I

    move-result v7

    iput v7, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    if-ne v4, v2, :cond_77

    if-ne v0, v2, :cond_61

    .line 92
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$400()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_68

    :cond_61
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$500()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_68
    iput v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->bitrate:I

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->bitrate:I

    mul-int/lit8 v0, v0, 0xc

    iget v4, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v0, v4

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    goto :goto_ae

    :cond_77
    const/16 v7, 0x90

    if-ne v0, v2, :cond_98

    if-ne v4, v1, :cond_85

    .line 98
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$600()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_8c

    :cond_85
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$700()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_8c
    iput v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->bitrate:I

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->bitrate:I

    mul-int/2addr v0, v7

    iget v4, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v0, v4

    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    goto :goto_ae

    .line 102
    :cond_98
    invoke-static {}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->access$800()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->bitrate:I

    if-ne v4, v3, :cond_a5

    const/16 v7, 0x48

    .line 103
    :cond_a5
    iget v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->bitrate:I

    mul-int/2addr v7, v0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v7, v0

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    :goto_ae
    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_b4

    move v1, v3

    .line 106
    :cond_b4
    iput v1, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    return v3

    :cond_b7
    :goto_b7
    return v1
.end method
