.class final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImaAdPcmOutputWriter"
.end annotation


# static fields
.field private static final INDEX_TABLE:[I

.field private static final STEP_TABLE:[I


# instance fields
.field private final decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final framesPerBlock:I

.field private final header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

.field private final inputData:[B

.field private outputFrameCount:J

.field private pendingInputBytes:I

.field private pendingOutputBytes:I

.field private startTimeUs:J

.field private final targetSampleSizeFrames:I

.field private final trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 293
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    const/16 v0, 0x59

    .line 297
    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_38
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavHeader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 341
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 342
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    .line 343
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->frameRateHz:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    .line 345
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->extraData:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 346
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 347
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    .line 349
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    .line 353
    iget v0, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    mul-int/lit8 v1, p1, 0x4

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->bitsPerSample:I

    mul-int/2addr v1, p1

    div-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 355
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    if-ne p2, v0, :cond_90

    .line 362
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p2

    .line 363
    iget v0, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    .line 364
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    .line 366
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result v1

    mul-int/2addr p2, v1

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 370
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->frameRateHz:I

    iget v0, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    mul-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x8

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    div-int/2addr p2, v0

    .line 371
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "audio/raw"

    .line 373
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    .line 376
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    .line 377
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->frameRateHz:I

    .line 378
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 379
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 356
    :cond_90
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const/16 p3, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Expected frames per block: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; got: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decode([BILcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_18

    move v2, v0

    .line 470
    :goto_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    if-ge v2, v3, :cond_15

    .line 471
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodeBlockForChannel([BII[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 474
    :cond_18
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(I)I

    move-result p1

    .line 475
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 476
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method private decodeBlockForChannel([BII[B)V
    .registers 14

    .line 481
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    .line 482
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    mul-int v2, p2, v0

    mul-int/lit8 v3, p3, 0x4

    add-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, v2

    .line 494
    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v4, v2, 0x1

    .line 498
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-short v4, v4

    add-int/lit8 v2, v2, 0x2

    .line 500
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x58

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 501
    sget-object v5, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    aget v5, v5, v2

    .line 504
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int/2addr p2, v6

    mul-int/2addr p2, v1

    add-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x2

    and-int/lit16 p3, v4, 0xff

    int-to-byte p3, p3

    .line 505
    aput-byte p3, p4, p2

    add-int/lit8 p3, p2, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    .line 506
    aput-byte v6, p4, p3

    const/4 p3, 0x0

    move v6, p2

    move p2, p3

    :goto_47
    mul-int/lit8 v7, v0, 0x2

    if-ge p2, v7, :cond_9e

    .line 510
    div-int/lit8 v7, p2, 0x8

    .line 511
    div-int/lit8 v8, p2, 0x2

    rem-int/lit8 v8, v8, 0x4

    mul-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v3

    add-int/2addr v7, v8

    .line 514
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    .line 515
    rem-int/lit8 v8, p2, 0x2

    if-nez v8, :cond_61

    and-int/lit8 v7, v7, 0xf

    goto :goto_63

    :cond_61
    shr-int/lit8 v7, v7, 0x4

    :goto_63
    and-int/lit8 v8, v7, 0x7

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v8, v5

    shr-int/lit8 v5, v8, 0x3

    and-int/lit8 v8, v7, 0x8

    if-eqz v8, :cond_71

    neg-int v5, v5

    :cond_71
    add-int/2addr v4, v5

    const/16 v5, -0x8000

    const/16 v8, 0x7fff

    .line 529
    invoke-static {v4, v5, v8}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v6, v5

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    .line 533
    aput-byte v5, p4, v6

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    .line 534
    aput-byte v8, p4, v5

    .line 536
    sget-object v5, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    aget v5, v5, v7

    add-int/2addr v2, v5

    .line 537
    sget-object v5, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, p3, v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v2

    .line 538
    sget-object v5, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    aget v5, v5, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_47

    :cond_9e
    return-void
.end method

.method private numOutputBytesToFrames(I)I
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr p1, v0

    return p1
.end method

.method private numOutputFramesToBytes(I)I
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->numChannels:I

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result p1

    return p1
.end method

.method private static numOutputFramesToBytes(II)I
    .registers 2

    mul-int/lit8 p0, p0, 0x2

    mul-int/2addr p0, p1

    return p0
.end method

.method private writeSampleMetadata(I)V
    .registers 13

    .line 450
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->frameRateHz:I

    int-to-long v6, v4

    const-wide/32 v4, 0xf4240

    .line 452
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    add-long v5, v0, v2

    .line 453
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(I)I

    move-result v0

    .line 454
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int v9, v1, v0

    .line 455
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move v8, v0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 457
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    .line 458
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    return-void
.end method


# virtual methods
.method public init(IJ)V
    .registers 13

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    int-to-long v4, p1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/wav/WavHeader;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 395
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public reset(J)V
    .registers 4

    const/4 v0, 0x0

    .line 385
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 386
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    .line 387
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    .line 388
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 403
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 405
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    mul-int/2addr v0, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    const/4 v2, 0x1

    if-nez v1, :cond_1d

    :goto_1b
    move v1, v2

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-nez v1, :cond_3e

    .line 410
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    if-ge v3, v0, :cond_3e

    sub-int v3, v0, v3

    int-to-long v3, v3

    .line 411
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 412
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    invoke-interface {p1, v4, v5, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_38

    goto :goto_1b

    .line 416
    :cond_38
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    goto :goto_1e

    .line 420
    :cond_3e
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    div-int/2addr p1, p2

    if-lez p1, :cond_77

    .line 423
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decode([BILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 424
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->header:Lcom/google/android/exoplayer2/extractor/wav/WavHeader;

    iget p3, p3, Lcom/google/android/exoplayer2/extractor/wav/WavHeader;->blockSize:I

    mul-int/2addr p1, p3

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 427
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p1

    .line 428
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p2, p3, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 429
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 432
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result p1

    .line 433
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    if-lt p1, p2, :cond_77

    .line 434
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    :cond_77
    if-eqz v1, :cond_84

    .line 440
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result p1

    if-lez p1, :cond_84

    .line 442
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    :cond_84
    return v1
.end method
