.class public final Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;
.super Ljava/lang/Object;


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    return-void

    :array_a
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
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([B)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static concatenate([B[B)[B
    .registers 5

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static concatenate([[B)[B
    .registers 7

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    mul-int/2addr v2, v1

    new-array v2, v2, [B

    move v3, v0

    move v4, v3

    :goto_a
    array-length v5, p0

    if-ge v3, v5, :cond_16

    aget-object v5, p0, v3

    invoke-static {v5, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_16
    return-object v2
.end method

.method public static deepHashCode([B)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_d

    mul-int/lit8 v0, v0, 0x1f

    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return v0
.end method

.method public static deepHashCode([[B)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_11

    mul-int/lit8 v0, v0, 0x1f

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->deepHashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method

.method public static deepHashCode([[[B)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_11

    mul-int/lit8 v0, v0, 0x1f

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->deepHashCode([[B)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method

.method public static equals([B[B)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    if-nez p1, :cond_c

    return v1

    :cond_c
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    array-length v2, p0

    sub-int/2addr v2, v0

    move v3, v0

    :goto_14
    if-ltz v2, :cond_23

    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-ne v4, v5, :cond_1e

    move v4, v0

    goto :goto_1f

    :cond_1e
    move v4, v1

    :goto_1f
    and-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_23
    return v3
.end method

.method public static equals([[B[[B)Z
    .registers 6

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    if-ltz v0, :cond_17

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return v1
.end method

.method public static equals([[[B[[[B)Z
    .registers 9

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v3, v1

    :goto_a
    if-ltz v0, :cond_2e

    aget-object v4, p0, v0

    array-length v4, v4

    aget-object v5, p1, v0

    array-length v5, v5

    if-eq v4, v5, :cond_15

    return v2

    :cond_15
    aget-object v4, p0, v0

    array-length v4, v4

    sub-int/2addr v4, v1

    :goto_19
    if-ltz v4, :cond_2b

    aget-object v5, p0, v0

    aget-object v5, v5, v4

    aget-object v6, p1, v0

    aget-object v6, v6, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v5

    and-int/2addr v3, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_2e
    return v3
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .registers 11

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_b
    array-length v3, p0

    const/16 v4, 0x46

    const/16 v5, 0x39

    const/16 v6, 0x41

    const/16 v7, 0x30

    if-ge v1, v3, :cond_2b

    aget-char v3, p0, v1

    if-lt v3, v7, :cond_1e

    aget-char v3, p0, v1

    if-le v3, v5, :cond_26

    :cond_1e
    aget-char v3, p0, v1

    if-lt v3, v6, :cond_28

    aget-char v3, p0, v1

    if-gt v3, v4, :cond_28

    :cond_26
    add-int/lit8 v2, v2, 0x1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2b
    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    and-int/lit8 v2, v2, 0x1

    :goto_33
    array-length v3, p0

    if-ge v0, v3, :cond_72

    aget-char v3, p0, v0

    if-lt v3, v7, :cond_51

    aget-char v3, p0, v0

    if-gt v3, v5, :cond_51

    shr-int/lit8 v3, v2, 0x1

    aget-byte v8, v1, v3

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    aget-byte v8, v1, v3

    aget-char v9, p0, v0

    sub-int/2addr v9, v7

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    goto :goto_6d

    :cond_51
    aget-char v3, p0, v0

    if-lt v3, v6, :cond_6f

    aget-char v3, p0, v0

    if-gt v3, v4, :cond_6f

    shr-int/lit8 v3, v2, 0x1

    aget-byte v8, v1, v3

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    aget-byte v8, v1, v3

    aget-char v9, p0, v0

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, 0xa

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    :goto_6d
    add-int/lit8 v2, v2, 0x1

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_72
    return-object v1
.end method

.method public static split([BI)[[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    array-length v0, p0

    if-gt p1, v0, :cond_1f

    const/4 v0, 0x2

    new-array v0, v0, [[B

    new-array v1, p1, [B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v1, v1, [B

    const/4 v3, 0x1

    aput-object v1, v0, v3

    aget-object v1, v0, v2

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v0, v3

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1f
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static subArray([BI)[B
    .registers 3

    array-length v0, p0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static subArray([BII)[B
    .registers 5

    sub-int/2addr p2, p1

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toBinaryString([B)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    move v1, v0

    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_41

    aget-byte v3, p0, v1

    move-object v4, v2

    move v2, v0

    :goto_c
    const/16 v5, 0x8

    if-ge v2, v5, :cond_26

    ushr-int v5, v3, v2

    and-int/lit8 v5, v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_26
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3e

    :cond_3d
    move-object v2, v4

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_41
    return-object v2
.end method

.method public static toCharArray([B)[C
    .registers 4

    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_f

    aget-byte v2, p0, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_39
    return-object v0
.end method

.method public static toHexString([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_6
    array-length v1, p0

    if-ge p1, v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v2, p0, p1

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v2, p0, p1

    and-int/lit8 v2, v2, 0xf

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_4d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4d
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_50
    return-object v0
.end method

.method public static xor([B[B)[B
    .registers 6

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_13

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_13
    return-object v0
.end method
