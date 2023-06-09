.class final Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field public static final BRAND_HEIC:I = 0x68656963

.field public static final BRAND_QUICKTIME:I = 0x71742020

.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1d

    .line 37
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void

    :array_a
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCompatibleBrand(IZ)Z
    .registers 7

    ushr-int/lit8 v0, p0, 0x8

    const/4 v1, 0x1

    const v2, 0x336770

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    const v0, 0x68656963

    if-ne p0, v0, :cond_11

    if-eqz p1, :cond_11

    return v1

    .line 215
    :cond_11
    sget-object p1, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_20

    aget v4, p1, v3

    if-ne v4, p0, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_20
    return v2
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 110
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x1000

    if-eqz v5, :cond_14

    cmp-long v8, v1, v6

    if-lez v8, :cond_13

    goto :goto_14

    :cond_13
    move-wide v6, v1

    :cond_14
    :goto_14
    long-to-int v6, v6

    .line 114
    new-instance v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    const/4 v8, 0x0

    move v9, v6

    move v6, v8

    move v10, v6

    :goto_20
    const/4 v11, 0x1

    if-ge v6, v9, :cond_fa

    const/16 v12, 0x8

    .line 121
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 123
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v13

    invoke-interface {v0, v13, v8, v12, v11}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v13

    if-nez v13, :cond_34

    goto/16 :goto_fa

    .line 128
    :cond_34
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    .line 129
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    const-wide/16 v16, 0x1

    cmp-long v16, v13, v16

    const/16 v11, 0x10

    if-nez v16, :cond_53

    .line 134
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v13

    .line 133
    invoke-interface {v0, v13, v12, v12}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 135
    invoke-virtual {v7, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 136
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v13

    goto :goto_6b

    :cond_53
    const-wide/16 v18, 0x0

    cmp-long v11, v13, v18

    if-nez v11, :cond_6a

    .line 139
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v18

    cmp-long v11, v18, v3

    if-eqz v11, :cond_6a

    .line 141
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v13

    sub-long v18, v18, v13

    int-to-long v13, v12

    add-long v13, v18, v13

    :cond_6a
    move v11, v12

    :goto_6b
    int-to-long v3, v11

    cmp-long v16, v13, v3

    if-gez v16, :cond_71

    return v8

    :cond_71
    add-int/2addr v6, v11

    const v11, 0x6d6f6f76

    if-ne v15, v11, :cond_84

    long-to-int v3, v13

    add-int/2addr v9, v3

    if-eqz v5, :cond_81

    int-to-long v3, v9

    cmp-long v3, v3, v1

    if-lez v3, :cond_81

    long-to-int v9, v1

    :cond_81
    :goto_81
    const-wide/16 v3, -0x1

    goto :goto_20

    :cond_84
    const v11, 0x6d6f6f66

    if-eq v15, v11, :cond_f5

    const v11, 0x6d766578

    if-ne v15, v11, :cond_90

    goto/16 :goto_f5

    :cond_90
    move/from16 v16, v9

    int-to-long v8, v6

    add-long/2addr v8, v13

    sub-long/2addr v8, v3

    move-wide/from16 v21, v13

    move/from16 v11, v16

    int-to-long v12, v11

    cmp-long v8, v8, v12

    if-ltz v8, :cond_a3

    const/4 v9, 0x1

    const/16 v20, 0x0

    goto/16 :goto_fd

    :cond_a3
    sub-long v13, v21, v3

    long-to-int v3, v13

    add-int/2addr v6, v3

    const v4, 0x66747970

    if-ne v15, v4, :cond_e8

    const/16 v4, 0x8

    if-ge v3, v4, :cond_b2

    const/4 v4, 0x0

    return v4

    :cond_b2
    const/4 v4, 0x0

    .line 181
    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 182
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v8

    invoke-interface {v0, v8, v4, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 183
    div-int/lit8 v3, v3, 0x4

    const/4 v8, 0x0

    :goto_c0
    if-ge v8, v3, :cond_dc

    const/4 v9, 0x1

    if-ne v8, v9, :cond_cc

    const/4 v12, 0x4

    .line 187
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v13, p2

    goto :goto_d9

    .line 188
    :cond_cc
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    move/from16 v13, p2

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    move-result v12

    if-eqz v12, :cond_d9

    goto :goto_df

    :cond_d9
    :goto_d9
    add-int/lit8 v8, v8, 0x1

    goto :goto_c0

    :cond_dc
    move/from16 v13, p2

    move v9, v10

    :goto_df
    if-nez v9, :cond_e4

    const/16 v20, 0x0

    return v20

    :cond_e4
    const/16 v20, 0x0

    move v10, v9

    goto :goto_f1

    :cond_e8
    move/from16 v13, p2

    const/16 v20, 0x0

    if-eqz v3, :cond_f1

    .line 199
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    :cond_f1
    :goto_f1
    move v9, v11

    move/from16 v8, v20

    goto :goto_81

    :cond_f5
    :goto_f5
    move/from16 v20, v8

    const/4 v9, 0x1

    move v0, v9

    goto :goto_ff

    :cond_fa
    :goto_fa
    move/from16 v20, v8

    move v9, v11

    :goto_fd
    move/from16 v0, v20

    :goto_ff
    if-eqz v10, :cond_107

    move/from16 v1, p1

    if-ne v1, v0, :cond_107

    move/from16 v20, v9

    :cond_107
    return v20
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method
