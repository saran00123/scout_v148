.class public Lorg/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    return-void

    :array_16
    .array-data 1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static ignore(C)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x24

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_8
    if-lez v1, :cond_1a

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_1a

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_1e
    if-ge v3, v1, :cond_73

    :goto_20
    if-ge v3, v1, :cond_2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_2f

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2f
    iget-object v6, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v6, v3

    :goto_39
    if-ge v7, v1, :cond_48

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v6

    if-eqz v6, :cond_48

    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    :cond_48
    iget-object v6, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v6, v6, v7

    or-int v7, v3, v6

    if-ltz v7, :cond_6b

    add-int/lit8 v7, v4, 0x1

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    array-length v3, v0

    if-ne v7, v3, :cond_66

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    move v4, v2

    goto :goto_67

    :cond_66
    move v4, v7

    :goto_67
    add-int/lit8 v5, v5, 0x1

    move v3, v8

    goto :goto_1e

    :cond_6b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid characters encountered in Hex string"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_73
    if-lez v4, :cond_78

    invoke-virtual {p2, v0, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    :cond_78
    return v5
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x24

    new-array v0, v0, [B

    add-int/2addr p3, p2

    :goto_5
    if-le p3, p2, :cond_16

    add-int/lit8 v1, p3, -0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_16
    :goto_16
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_19
    if-ge p2, p3, :cond_68

    :goto_1b
    if-ge p2, p3, :cond_29

    aget-byte v4, p1, p2

    int-to-char v4, v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v4

    if-eqz v4, :cond_29

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :cond_29
    iget-object v4, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v5, p2, 0x1

    aget-byte p2, p1, p2

    aget-byte p2, v4, p2

    :goto_31
    if-ge v5, p3, :cond_3f

    aget-byte v4, p1, v5

    int-to-char v4, v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v4

    if-eqz v4, :cond_3f

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_3f
    iget-object v4, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    aget-byte v4, v4, v5

    or-int v5, p2, v4

    if-ltz v5, :cond_60

    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, v0, v2

    array-length p2, v0

    if-ne v5, p2, :cond_5b

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    move v2, v1

    goto :goto_5c

    :cond_5b
    move v2, v5

    :goto_5c
    add-int/lit8 v3, v3, 0x1

    move p2, v6

    goto :goto_19

    :cond_60
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid characters encountered in Hex data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    if-lez v2, :cond_6d

    invoke-virtual {p4, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_6d
    return v3
.end method

.method decodeStrict(Ljava/lang/String;II)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_51

    if-ltz p2, :cond_49

    if-ltz p3, :cond_49

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_49

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_41

    ushr-int/lit8 p3, p3, 0x1

    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p3, :cond_40

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    aget-byte p2, v2, p2

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p2, v2

    if-ltz p2, :cond_38

    int-to-byte p2, p2

    aput-byte p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    move p2, v4

    goto :goto_16

    :cond_38
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid characters encountered in Hex string"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    return-object v0

    :cond_41
    new-instance p1, Ljava/io/IOException;

    const-string p2, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "invalid offset and/or length specified"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'str\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x48

    new-array v0, v0, [B

    :goto_4
    if-lez p3, :cond_1d

    const/16 v1, 0x24

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v7

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/util/encoders/HexEncoder;->encode([BII[BI)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    goto :goto_4

    :cond_1d
    mul-int/lit8 p3, p3, 0x2

    return p3
.end method

.method public encode([BII[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    move v0, p5

    :goto_2
    if-ge p2, p3, :cond_1e

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v4, p2, 0x4

    aget-byte v4, v3, v4

    aput-byte v4, p4, v0

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 p2, p2, 0xf

    aget-byte p2, v3, p2

    aput-byte p2, p4, v2

    move p2, v1

    goto :goto_2

    :cond_1e
    sub-int/2addr v0, p5

    return v0
.end method

.method protected initialiseDecodingTable()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    array-length v3, v2

    if-ge v1, v3, :cond_d

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    :goto_d
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x41

    const/16 v2, 0x61

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x62

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x63

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x64

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x65

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x66

    aget-byte v2, v0, v2

    aput-byte v2, v0, v1

    return-void
.end method
