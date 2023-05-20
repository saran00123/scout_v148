.class public Lcom/xiaomi/push/bl;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static a:[B

.field private static a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/bl;->a:Ljava/lang/String;

    const/16 v0, 0x40

    new-array v1, v0, [C

    sput-object v1, Lcom/xiaomi/push/bl;->a:[C

    const/4 v1, 0x0

    const/16 v2, 0x41

    move v3, v1

    :goto_12
    const/16 v4, 0x5a

    if-gt v2, v4, :cond_21

    sget-object v4, Lcom/xiaomi/push/bl;->a:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_12

    :cond_21
    const/16 v2, 0x61

    :goto_23
    const/16 v4, 0x7a

    if-gt v2, v4, :cond_32

    sget-object v4, Lcom/xiaomi/push/bl;->a:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_23

    :cond_32
    const/16 v2, 0x30

    :goto_34
    const/16 v4, 0x39

    if-gt v2, v4, :cond_43

    sget-object v4, Lcom/xiaomi/push/bl;->a:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_34

    :cond_43
    sget-object v2, Lcom/xiaomi/push/bl;->a:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2b

    aput-char v5, v2, v3

    const/16 v3, 0x2f

    aput-char v3, v2, v4

    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/xiaomi/push/bl;->a:[B

    move v2, v1

    :goto_56
    sget-object v3, Lcom/xiaomi/push/bl;->a:[B

    array-length v4, v3

    if-ge v2, v4, :cond_61

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_61
    :goto_61
    if-ge v1, v0, :cond_6f

    sget-object v2, Lcom/xiaomi/push/bl;->a:[B

    sget-object v3, Lcom/xiaomi/push/bl;->a:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_6f
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/bl;->a([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/bl;->a([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([C)[B
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/xiaomi/push/bl;->a([CII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([CII)[B
    .registers 13

    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_8e

    :goto_4
    if-lez p2, :cond_13

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_13

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_13
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_1b
    if-ge p1, p2, :cond_8d

    add-int/lit8 v3, p1, 0x1

    aget-char p1, p0, p1

    add-int/lit8 v4, v3, 0x1

    aget-char v3, p0, v3

    const/16 v5, 0x41

    if-ge v4, p2, :cond_2e

    add-int/lit8 v6, v4, 0x1

    aget-char v4, p0, v4

    goto :goto_30

    :cond_2e
    move v6, v4

    move v4, v5

    :goto_30
    if-ge v6, p2, :cond_39

    add-int/lit8 v5, v6, 0x1

    aget-char v6, p0, v6

    move v9, v6

    move v6, v5

    move v5, v9

    :cond_39
    const-string v7, "Illegal character in Base64 encoded data."

    const/16 v8, 0x7f

    if-gt p1, v8, :cond_87

    if-gt v3, v8, :cond_87

    if-gt v4, v8, :cond_87

    if-gt v5, v8, :cond_87

    sget-object v8, Lcom/xiaomi/push/bl;->a:[B

    aget-byte p1, v8, p1

    aget-byte v3, v8, v3

    aget-byte v4, v8, v4

    aget-byte v5, v8, v5

    if-ltz p1, :cond_81

    if-ltz v3, :cond_81

    if-ltz v4, :cond_81

    if-ltz v5, :cond_81

    shl-int/lit8 p1, p1, 0x2

    ushr-int/lit8 v7, v3, 0x4

    or-int/2addr p1, v7

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v7, v4, 0x2

    or-int/2addr v3, v7

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    if-ge v5, v0, :cond_75

    add-int/lit8 p1, v5, 0x1

    int-to-byte v2, v3

    aput-byte v2, v1, v5

    goto :goto_76

    :cond_75
    move p1, v5

    :goto_76
    if-ge p1, v0, :cond_7e

    add-int/lit8 v2, p1, 0x1

    int-to-byte v3, v4

    aput-byte v3, v1, p1

    goto :goto_7f

    :cond_7e
    move v2, p1

    :goto_7f
    move p1, v6

    goto :goto_1b

    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    return-object v1

    :cond_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([B)[C
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/xiaomi/push/bl;->a([BII)[C

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)[C
    .registers 13

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    add-int/2addr p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge p1, p2, :cond_67

    add-int/lit8 v4, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    if-ge v4, p2, :cond_22

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_24

    :cond_22
    move v5, v4

    move v4, v2

    :goto_24
    if-ge v5, p2, :cond_2d

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    goto :goto_2f

    :cond_2d
    move v6, v5

    move v5, v2

    :goto_2f
    ushr-int/lit8 v7, p1, 0x2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    ushr-int/lit8 v8, v4, 0x4

    or-int/2addr p1, v8

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v8, v5, 0x6

    or-int/2addr v4, v8

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v8, v3, 0x1

    sget-object v9, Lcom/xiaomi/push/bl;->a:[C

    aget-char v7, v9, v7

    aput-char v7, v1, v3

    add-int/lit8 v3, v8, 0x1

    aget-char p1, v9, p1

    aput-char p1, v1, v8

    const/16 p1, 0x3d

    if-ge v3, v0, :cond_56

    aget-char v4, v9, v4

    goto :goto_57

    :cond_56
    move v4, p1

    :goto_57
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_61

    sget-object p1, Lcom/xiaomi/push/bl;->a:[C

    aget-char p1, p1, v5

    :cond_61
    aput-char p1, v1, v3

    add-int/lit8 v3, v3, 0x1

    move p1, v6

    goto :goto_11

    :cond_67
    return-object v1
.end method
