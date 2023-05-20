.class public final Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS:I = 0x40

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 115
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 130
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method private buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;
    .registers 3

    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;
    .registers 3

    .line 212
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 225
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 226
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object p1

    .line 228
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 229
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 230
    :goto_14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_8d

    .line 231
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 232
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 233
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_89

    .line 236
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    move v4, v2

    :goto_38
    if-ge v4, v1, :cond_89

    const/4 v5, 0x3

    .line 239
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_4a

    move v7, v8

    goto :goto_4b

    :cond_4a
    move v7, v2

    :goto_4b
    if-eqz v7, :cond_52

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_55

    :cond_52
    const-string v9, "application/cea-608"

    move v6, v8

    .line 253
    :goto_55
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    int-to-byte v10, v10

    .line 255
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v11, 0x0

    if-eqz v7, :cond_6a

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_65

    goto :goto_66

    :cond_65
    move v8, v2

    .line 262
    :goto_66
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildCea708InitializationData(Z)Ljava/util/List;

    move-result-object v11

    .line 265
    :cond_6a
    new-instance v7, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 267
    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 268
    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 269
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 270
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 271
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 265
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 276
    :cond_89
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_14

    :cond_8d
    return-object p1
.end method

.method private isSet(I)Z
    .registers 3

    .line 283
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_10d

    const/16 v2, 0x15

    if-eq p1, v2, :cond_102

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_e1

    const/16 v1, 0x24

    if-eq p1, v1, :cond_d2

    const/16 v1, 0x59

    if-eq p1, v1, :cond_c5

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_b8

    const/16 v1, 0xac

    if-eq p1, v1, :cond_ab

    const/16 v1, 0x101

    if-eq p1, v1, :cond_9e

    const/16 v1, 0x81

    if-eq p1, v1, :cond_91

    const/16 v1, 0x82

    if-eq p1, v1, :cond_88

    const/16 v1, 0x86

    if-eq p1, v1, :cond_72

    const/16 v1, 0x87

    if-eq p1, v1, :cond_91

    packed-switch p1, :pswitch_data_12a

    return-object v3

    .line 149
    :pswitch_3a
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_4d

    .line 150
    :cond_41
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_4d
    return-object v3

    .line 166
    :pswitch_4e
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 146
    :pswitch_5d
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_64

    goto :goto_71

    .line 147
    :cond_64
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    const/4 v0, 0x0

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_71
    return-object v3

    :cond_72
    const/16 p1, 0x10

    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_7b

    goto :goto_87

    .line 176
    :cond_7b
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;

    const-string p2, "application/x-scte35"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    :goto_87
    return-object v3

    :cond_88
    const/16 p1, 0x40

    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-nez p1, :cond_b8

    return-object v3

    .line 153
    :cond_91
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 183
    :cond_9e
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    return-object p1

    .line 155
    :cond_ab
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 162
    :cond_b8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 180
    :cond_c5
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 172
    :cond_d2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 168
    :cond_e1
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_e8

    goto :goto_101

    .line 169
    :cond_e8
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    move-result-object p2

    const/4 v0, 0x1

    .line 170
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_101
    return-object v3

    .line 178
    :cond_102
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 144
    :cond_10d
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 164
    :cond_11a
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    nop

    :pswitch_data_12a
    .packed-switch 0xf
        :pswitch_5d
        :pswitch_4e
        :pswitch_3a
    .end packed-switch
.end method
