.class public final Lcom/huawei/hms/utils/HEX;
.super Ljava/lang/Object;
.source "HEX.java"


# static fields
.field public static final a:[C

.field public static final b:[C


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    .line 1
    new-array v1, v0, [C

    fill-array-data v1, :array_12

    sput-object v1, Lcom/huawei/hms/utils/HEX;->a:[C

    .line 8
    new-array v0, v0, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/huawei/hms/utils/HEX;->b:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_26
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B[C)[C
    .registers 8

    .line 1
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    .line 2
    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_22

    add-int/lit8 v4, v3, 0x1

    .line 5
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    .line 6
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_22
    return-object v1
.end method

.method public static encodeHex([B)[C
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/huawei/hms/utils/HEX;->encodeHex([BZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex([BZ)[C
    .registers 2

    if-eqz p1, :cond_5

    .line 2
    sget-object p1, Lcom/huawei/hms/utils/HEX;->b:[C

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/huawei/hms/utils/HEX;->a:[C

    :goto_7
    invoke-static {p0, p1}, Lcom/huawei/hms/utils/HEX;->a([B[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeHexString([BZ)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/huawei/hms/utils/HEX;->encodeHex([BZ)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
