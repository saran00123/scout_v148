.class public final Lcom/huawei/appgallery/serviceverifykit/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_12

    sput-object v1, Lcom/huawei/appgallery/serviceverifykit/d/b;->a:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/huawei/appgallery/serviceverifykit/d/b;->b:[C

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

.method public static a([BZ)[C
    .registers 2

    if-eqz p1, :cond_5

    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/b;->b:[C

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/b;->a:[C

    :goto_7
    invoke-static {p0, p1}, Lcom/huawei/appgallery/serviceverifykit/d/b;->a([B[C)[C

    move-result-object p0

    return-object p0
.end method

.method private static a([B[C)[C
    .registers 8

    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_22

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_22
    return-object v1
.end method

.method public static b([BZ)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/huawei/appgallery/serviceverifykit/d/b;->a([BZ)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
