.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;
.super Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;
.source "SpliceInfoDecoder.java"


# static fields
.field private static final TYPE_PRIVATE_COMMAND:I = 0xff

.field private static final TYPE_SPLICE_INSERT:I = 0x5

.field private static final TYPE_SPLICE_NULL:I = 0x0

.field private static final TYPE_SPLICE_SCHEDULE:I = 0x4

.field private static final TYPE_TIME_SIGNAL:I = 0x6


# instance fields
.field private final sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;-><init>()V

    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method protected decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .registers 9

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v0, :cond_10

    iget-wide v0, p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 52
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    .line 53
    :cond_10
    new-instance v0, Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 57
    :cond_23
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 58
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 63
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 64
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 67
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x14

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 68
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 69
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x0

    .line 72
    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-eqz v2, :cond_9e

    const/16 v4, 0xff

    if-eq v2, v4, :cond_97

    const/4 p1, 0x4

    if-eq v2, p1, :cond_90

    const/4 p1, 0x5

    if-eq v2, p1, :cond_87

    const/4 p1, 0x6

    if-eq v2, p1, :cond_7e

    goto :goto_a3

    .line 85
    :cond_7e
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->parseFromSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v3

    goto :goto_a3

    .line 81
    :cond_87
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->parseFromSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object v3

    goto :goto_a3

    .line 78
    :cond_90
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v3

    goto :goto_a3

    .line 88
    :cond_97
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->parseFromSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;IJ)Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v3

    goto :goto_a3

    .line 75
    :cond_9e
    new-instance v3, Lcom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    :goto_a3
    const/4 p1, 0x0

    if-nez v3, :cond_ae

    .line 94
    new-instance p2, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p1, p1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_b8

    :cond_ae
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p2, p2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v3, p2, p1

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object p2, v0

    :goto_b8
    return-object p2
.end method
