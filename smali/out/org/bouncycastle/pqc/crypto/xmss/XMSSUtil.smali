.class public Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual([[B[[B)Z
    .registers 6

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "a or b == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bytesToXBigEndian([BII)J
    .registers 8

    if-eqz p0, :cond_17

    const-wide/16 v0, 0x0

    move-wide v1, v0

    move v0, p1

    :goto_6
    add-int v3, p1, p2

    if-ge v0, v3, :cond_16

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_16
    return-wide v1

    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateTau(II)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_f

    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_f

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    :goto_f
    return v0
.end method

.method public static cloneArray([B)[B
    .registers 4

    if-eqz p0, :cond_b

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cloneArray([[B)[[B
    .registers 7

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v0

    if-nez v0, :cond_23

    array-length v0, p0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    array-length v3, p0

    if-ge v2, v3, :cond_22

    aget-object v3, p0, v2

    array-length v3, v3

    new-array v3, v3, [B

    aput-object v3, v0, v2

    aget-object v3, p0, v2

    aget-object v4, v0, v2

    aget-object v5, p0, v2

    array-length v5, v5

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_22
    return-object v0

    :cond_23
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "in has null pointers"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyBytesAtOffset([B[BI)V
    .registers 6

    if-eqz p0, :cond_31

    if-eqz p1, :cond_29

    if-ltz p2, :cond_21

    array-length v0, p1

    add-int/2addr v0, p2

    array-length v1, p0

    if-gt v0, v1, :cond_19

    const/4 v0, 0x0

    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_18

    add-int v1, p2, v0

    aget-byte v2, p1, v0

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "src length + offset must not be greater than size of destination"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset hast to be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "src == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "dst == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deserialize([BLjava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;-><init>(Ljava/lang/Class;Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->available()I

    move-result p0

    if-nez p0, :cond_23

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return-object v0

    :cond_1b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unexpected class found in ObjectInputStream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unexpected data found at end of ObjectInputStream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dumpByteArray([[B)V
    .registers 4

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_18

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    return-void

    :cond_19
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "x has null pointers"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractBytesAtOffset([BII)[B
    .registers 5

    if-eqz p0, :cond_33

    if-ltz p1, :cond_2b

    if-ltz p2, :cond_23

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_1b

    new-array p2, p2, [B

    const/4 v0, 0x0

    :goto_e
    array-length v1, p2

    if-ge v0, v1, :cond_1a

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    return-object p2

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset + length must not be greater then size of source array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length hast to be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset hast to be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "src == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDigestSize(Lorg/bouncycastle/crypto/Digest;)I
    .registers 3

    if-eqz p0, :cond_21

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 p0, 0x20

    return p0

    :cond_11
    const-string v1, "SHAKE256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 p0, 0x40

    return p0

    :cond_1c
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    return p0

    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "digest == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLeafIndex(JI)I
    .registers 7

    const-wide/16 v0, 0x1

    shl-long v2, v0, p2

    sub-long/2addr v2, v0

    and-long/2addr p0, v2

    long-to-int p0, p0

    return p0
.end method

.method public static getTreeIndex(JI)J
    .registers 3

    shr-long/2addr p0, p2

    return-wide p0
.end method

.method public static hasNullPointer([[B)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    array-length v3, p0

    if-ge v2, v3, :cond_11

    aget-object v3, p0, v2

    if-nez v3, :cond_e

    return v0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return v1
.end method

.method public static isIndexValid(IJ)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_11

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "index must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isNewAuthenticationPathNeeded(JII)Z
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    if-nez v2, :cond_8

    return v3

    :cond_8
    const-wide/16 v4, 0x1

    add-long/2addr p0, v4

    const/4 v2, 0x1

    shl-int p2, v2, p2

    int-to-double v4, p2

    int-to-double p2, p3

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-long p2, p2

    rem-long/2addr p0, p2

    cmp-long p0, p0, v0

    if-nez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v3

    :goto_1c
    return v2
.end method

.method public static isNewBDSInitNeeded(JII)Z
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    if-nez v2, :cond_8

    return v3

    :cond_8
    const/4 v2, 0x1

    shl-int p2, v2, p2

    int-to-double v4, p2

    add-int/2addr p3, v2

    int-to-double p2, p3

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-long p2, p2

    rem-long/2addr p0, p2

    cmp-long p0, p0, v0

    if-nez p0, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    return v2
.end method

.method public static log2(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    shr-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method public static longToBigEndian(J[BI)V
    .registers 10

    if-eqz p2, :cond_63

    array-length v0, p2

    sub-int/2addr v0, p3

    const/16 v1, 0x8

    if-lt v0, v1, :cond_5b

    const/16 v0, 0x38

    shr-long v2, p0, v0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, p3, 0x6

    shr-long v1, p0, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x7

    and-long/2addr p0, v4

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void

    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not enough space in array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_63
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toBytesBigEndian(JI)[B
    .registers 5

    new-array v0, p2, [B

    add-int/lit8 p2, p2, -0x1

    :goto_4
    if-ltz p2, :cond_10

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    const/16 v1, 0x8

    ushr-long/2addr p0, v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_10
    return-object v0
.end method
