.class final Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;
.super Ljava/lang/Object;
.source "BundledExtractorsAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;


# instance fields
.field private extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_b

    .line 110
    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->disableSeeking()V

    :cond_b
    return-void
.end method

.method public getCurrentInputPosition()J
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, -0x1

    :goto_b
    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplayer2/upstream/DataReader;JJ)V

    .line 66
    iput-object v6, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 67
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz p1, :cond_10

    return-void

    .line 70
    :cond_10
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    .line 71
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_21

    .line 72
    aget-object p1, p1, p6

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    goto/16 :goto_82

    .line 74
    :cond_21
    array-length p3, p1

    move v0, p6

    :goto_23
    if-ge v0, p3, :cond_7e

    aget-object v1, p1, v0

    .line 76
    :try_start_27
    invoke-interface {v1, v6}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 77
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_2f
    .catch Ljava/io/EOFException; {:try_start_27 .. :try_end_2f} :catch_65
    .catchall {:try_start_27 .. :try_end_2f} :catchall_50

    .line 83
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez p3, :cond_3b

    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p3, v0, p4

    if-nez p3, :cond_3c

    :cond_3b
    move p6, p7

    :cond_3c
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 84
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_7e

    .line 83
    :cond_43
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v1, :cond_74

    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_72

    goto :goto_74

    :catchall_50
    move-exception p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez p2, :cond_5d

    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide p2

    cmp-long p2, p2, p4

    if-nez p2, :cond_5e

    :cond_5d
    move p6, p7

    :cond_5e
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 84
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 85
    throw p1

    .line 83
    :catch_65
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-nez v1, :cond_74

    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_72

    goto :goto_74

    :cond_72
    move v1, p6

    goto :goto_75

    :cond_74
    :goto_74
    move v1, p7

    :goto_75
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 84
    invoke-interface {v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 87
    :cond_7e
    :goto_7e
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    if-eqz p3, :cond_88

    .line 95
    :goto_82
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {p1, p8}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    return-void

    .line 88
    :cond_88
    new-instance p3, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    .line 90
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, 0x3a

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "None of the available extractors ("

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p3
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 127
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public release()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 101
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/Extractor;->release()V

    .line 102
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 104
    :cond_a
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    return-void
.end method

.method public seek(JJ)V
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;->extractor:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    return-void
.end method
