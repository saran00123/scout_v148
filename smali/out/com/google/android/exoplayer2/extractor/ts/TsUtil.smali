.class public final Lcom/google/android/exoplayer2/extractor/ts/TsUtil;
.super Ljava/lang/Object;
.source "TsUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findSyncBytePosition([BII)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_b

    .line 30
    aget-byte v0, p0, p1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_b

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_b
    return p1
.end method

.method public static readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J
    .registers 7

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x5

    if-ge p1, v2, :cond_10

    return-wide v0

    .line 53
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    const/high16 v2, 0x800000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1a

    return-wide v0

    :cond_1a
    const v2, 0x1fff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    if-eq v2, p2, :cond_23

    return-wide v0

    :cond_23
    and-int/lit8 p1, p1, 0x20

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2b

    move p1, p2

    goto :goto_2c

    :cond_2b
    move p1, v2

    :goto_2c
    if-nez p1, :cond_2f

    return-wide v0

    .line 67
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    const/4 v3, 0x7

    if-lt p1, v3, :cond_55

    .line 68
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lt p1, v3, :cond_55

    .line 69
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    const/16 v3, 0x10

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_46

    goto :goto_47

    :cond_46
    move p2, v2

    :goto_47
    if-eqz p2, :cond_55

    const/4 p1, 0x6

    .line 72
    new-array p1, p1, [B

    .line 73
    array-length p2, p1

    invoke-virtual {p0, p1, v2, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 74
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrValueFromPcrBytes([B)J

    move-result-wide p0

    return-wide p0

    :cond_55
    return-wide v0
.end method

.method private static readPcrValueFromPcrBytes([B)J
    .registers 9

    const/4 v0, 0x0

    .line 86
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x19

    shl-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x11

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    const/4 v5, 0x2

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x9

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    shl-long v4, v5, v4

    or-long/2addr v0, v4

    const/4 v4, 0x4

    aget-byte p0, p0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/4 p0, 0x7

    shr-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method
