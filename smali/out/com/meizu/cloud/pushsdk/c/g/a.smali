.class public final Lcom/meizu/cloud/pushsdk/c/g/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/meizu/cloud/pushsdk/c/g/a;->a:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_36

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/g/a;->b:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_36
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    const/16 v1, 0x9

    const/16 v2, 0x20

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-lez v0, :cond_24

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_21

    if-eq v5, v4, :cond_21

    if-eq v5, v3, :cond_21

    if-eq v5, v2, :cond_21

    if-eq v5, v1, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_24
    :goto_24
    int-to-long v5, v0

    const-wide/16 v7, 0x6

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x8

    div-long/2addr v5, v7

    long-to-int v5, v5

    new-array v5, v5, [B

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_33
    const/4 v11, 0x0

    if-ge v7, v0, :cond_9d

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x41

    if-lt v12, v13, :cond_45

    const/16 v13, 0x5a

    if-gt v12, v13, :cond_45

    add-int/lit8 v12, v12, -0x41

    goto :goto_7c

    :cond_45
    const/16 v13, 0x61

    if-lt v12, v13, :cond_50

    const/16 v13, 0x7a

    if-gt v12, v13, :cond_50

    add-int/lit8 v12, v12, -0x47

    goto :goto_7c

    :cond_50
    const/16 v13, 0x30

    if-lt v12, v13, :cond_5b

    const/16 v13, 0x39

    if-gt v12, v13, :cond_5b

    add-int/lit8 v12, v12, 0x4

    goto :goto_7c

    :cond_5b
    const/16 v13, 0x2b

    if-eq v12, v13, :cond_7a

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_64

    goto :goto_7a

    :cond_64
    const/16 v13, 0x2f

    if-eq v12, v13, :cond_77

    const/16 v13, 0x5f

    if-ne v12, v13, :cond_6d

    goto :goto_77

    :cond_6d
    if-eq v12, v4, :cond_9a

    if-eq v12, v3, :cond_9a

    if-eq v12, v2, :cond_9a

    if-ne v12, v1, :cond_76

    goto :goto_9a

    :cond_76
    return-object v11

    :cond_77
    :goto_77
    const/16 v12, 0x3f

    goto :goto_7c

    :cond_7a
    :goto_7a
    const/16 v12, 0x3e

    :goto_7c
    shl-int/lit8 v9, v9, 0x6

    int-to-byte v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v11, v8, 0x4

    if-nez v11, :cond_9a

    add-int/lit8 v11, v10, 0x1

    shr-int/lit8 v12, v9, 0x10

    int-to-byte v12, v12

    aput-byte v12, v5, v10

    add-int/lit8 v10, v11, 0x1

    shr-int/lit8 v12, v9, 0x8

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    add-int/lit8 v11, v10, 0x1

    int-to-byte v12, v9

    aput-byte v12, v5, v10

    move v10, v11

    :cond_9a
    :goto_9a
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :cond_9d
    rem-int/lit8 v8, v8, 0x4

    const/4 p0, 0x1

    if-ne v8, p0, :cond_a3

    return-object v11

    :cond_a3
    const/4 p0, 0x2

    if-ne v8, p0, :cond_b1

    shl-int/lit8 p0, v9, 0xc

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, v5, v10

    move v10, v0

    goto :goto_c4

    :cond_b1
    const/4 p0, 0x3

    if-ne v8, p0, :cond_c4

    shl-int/lit8 p0, v9, 0x6

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, v5, v10

    add-int/lit8 v10, v0, 0x1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    aput-byte p0, v5, v0

    :cond_c4
    :goto_c4
    array-length p0, v5

    if-ne v10, p0, :cond_c8

    return-object v5

    :cond_c8
    new-array p0, v10, [B

    invoke-static {v5, v6, p0, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method
