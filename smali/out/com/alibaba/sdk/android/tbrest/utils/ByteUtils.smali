.class public Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2UTF8String([B)Ljava/lang/String;
    .registers 3

    .line 43
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_a

    :catch_8
    const-string v0, ""

    :goto_a
    return-object v0
.end method

.method public static bytes2UTF8string([BII)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_1f

    if-ltz p1, :cond_1f

    if-ltz p2, :cond_1f

    .line 52
    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_c

    goto :goto_1f

    .line 56
    :cond_c
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_f
    if-ge v1, p2, :cond_1a

    .line 58
    aget-byte v2, p0, p1

    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 61
    :cond_1a
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->bytes2UTF8String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    :goto_1f
    const-string p0, ""

    return-object p0
.end method

.method public static bytesToInt([B)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 28
    array-length v1, p0

    const/4 v2, 0x4

    if-le v1, v2, :cond_8

    goto :goto_1c

    :cond_8
    move v1, v0

    .line 33
    :goto_9
    array-length v2, p0

    if-ge v0, v2, :cond_1b

    .line 34
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static bytesToInt([BII)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-ltz p1, :cond_1f

    if-ltz p2, :cond_1f

    .line 14
    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_d

    goto :goto_1f

    .line 18
    :cond_d
    new-array v1, p2, [B

    :goto_f
    if-ge v0, p2, :cond_1a

    .line 20
    aget-byte v2, p0, p1

    aput-byte v2, v1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 23
    :cond_1a
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->bytesToInt([B)I

    move-result p0

    return p0

    :cond_1f
    :goto_1f
    return v0
.end method

.method public static intToBytes(II)[B
    .registers 6

    const/4 v0, 0x4

    if-gt p1, v0, :cond_1c

    const/4 v0, 0x1

    if-ge p1, v0, :cond_7

    goto :goto_1c

    .line 69
    :cond_7
    new-array v1, p1, [B

    const/4 v2, 0x0

    :goto_a
    if-ge v2, p1, :cond_1b

    sub-int v3, p1, v2

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 71
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    return-object v1

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static intToBytes1(I)[B
    .registers 3

    const/4 v0, 0x1

    .line 77
    new-array v0, v0, [B

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static intToBytes2(I)[B
    .registers 4

    const/4 v0, 0x2

    .line 83
    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static intToBytes3(I)[B
    .registers 4

    const/4 v0, 0x3

    .line 90
    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x2

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static intToBytes4(I)[B
    .registers 4

    const/4 v0, 0x4

    .line 98
    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static subBytes([BII)[B
    .registers 7

    if-eqz p0, :cond_1b

    if-ltz p1, :cond_1b

    if-ltz p2, :cond_1b

    .line 107
    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_c

    goto :goto_1b

    .line 111
    :cond_c
    new-array p2, p2, [B

    move v0, p1

    :goto_f
    if-ge v0, v1, :cond_1a

    sub-int v2, v0, p1

    .line 113
    aget-byte v3, p0, v0

    aput-byte v3, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1a
    return-object p2

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method
