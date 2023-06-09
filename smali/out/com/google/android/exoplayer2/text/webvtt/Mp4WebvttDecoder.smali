.class public final Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "Mp4WebvttDecoder.java"


# static fields
.field private static final BOX_HEADER_SIZE:I = 0x8

.field private static final TYPE_payl:I = 0x7061796c

.field private static final TYPE_sttg:I = 0x73747467

.field private static final TYPE_vttc:I = 0x76747463


# instance fields
.field private final sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Mp4WebvttDecoder"

    .line 47
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private static parseVttCueBox(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/text/Cue;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_3
    :goto_3
    if-lez p1, :cond_48

    const/16 v3, 0x8

    if-lt p1, v3, :cond_40

    .line 82
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 83
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    add-int/lit8 p1, p1, -0x8

    sub-int/2addr v4, v3

    .line 87
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    invoke-static {v3, v6, v4}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr p1, v4

    const v4, 0x73747467

    if-ne v5, v4, :cond_2e

    .line 91
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    goto :goto_3

    :cond_2e
    const v4, 0x7061796c

    if-ne v5, v4, :cond_3

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 94
    invoke-static {v0, v1, v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v1

    goto :goto_3

    .line 80
    :cond_40
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p1, "Incomplete vtt cue box header found."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    if-nez v1, :cond_4c

    const-string v1, ""

    :cond_4c
    if-eqz v2, :cond_57

    .line 104
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object p0

    goto :goto_5b

    .line 105
    :cond_57
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->newCueForText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object p0

    :goto_5b
    return-object p0
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 56
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :goto_a
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-lez p2, :cond_49

    .line 59
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    const/16 p3, 0x8

    if-lt p2, p3, :cond_41

    .line 62
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p2

    .line 63
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p3

    const v0, 0x76747463

    if-ne p3, v0, :cond_39

    .line 65
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/lit8 p2, p2, -0x8

    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->parseVttCueBox(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/text/Cue;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 68
    :cond_39
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_a

    .line 60
    :cond_41
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_49
    new-instance p2, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/webvtt/Mp4WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object p2
.end method
