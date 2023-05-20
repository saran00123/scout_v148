.class public final Lorg/bouncycastle/util/Strings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/util/Strings$StringListImpl;
    }
.end annotation


# static fields
.field private static LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/util/Strings$1;

    invoke-direct {v0}, Lorg/bouncycastle/util/Strings$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_1e

    :catch_e
    :try_start_e
    const-string v0, "%n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    const-string v0, "\n"

    sput-object v0, Lorg/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    :goto_1e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asCharArray([B)[C
    .registers 4

    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_11

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    return-object v0
.end method

.method public static fromByteArray([B)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->asCharArray([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .registers 4

    array-length v0, p0

    new-array v0, v0, [C

    invoke-static {p0, v0}, Lorg/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([B[C)I

    move-result p0

    if-ltz p0, :cond_10

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid UTF-8 input"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lineSeparator()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method public static newList()Lorg/bouncycastle/util/StringList;
    .registers 2

    new-instance v0, Lorg/bouncycastle/util/Strings$StringListImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/Strings$StringListImpl;-><init>(Lorg/bouncycastle/util/Strings$1;)V

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x1

    :goto_6
    const/4 v2, 0x0

    if-eqz v1, :cond_22

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1d

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_1d
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_6

    :cond_22
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    :goto_28
    array-length p1, p0

    if-eq v2, p1, :cond_36

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_36
    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;[BI)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return v0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_14

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-object v0
.end method

.method public static toByteArray([C)[B
    .registers 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_f

    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_1e

    aget-char v3, v0, v1

    const/16 v4, 0x41

    if-gt v4, v3, :cond_1b

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_1b

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1e
    if-eqz v2, :cond_25

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_25
    return-object p0
.end method

.method public static toUTF8ByteArray([CLjava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_73

    aget-char v1, p0, v0

    const/16 v2, 0x80

    if-ge v1, v2, :cond_b

    goto :goto_53

    :cond_b
    const/16 v3, 0x800

    if-ge v1, v3, :cond_17

    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    :goto_13
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_50

    :cond_17
    const v3, 0xd800

    if-lt v1, v3, :cond_63

    const v3, 0xdfff

    if-gt v1, v3, :cond_63

    add-int/lit8 v0, v0, 0x1

    array-length v3, p0

    const-string v4, "invalid UTF-16 codepoint"

    if-ge v0, v3, :cond_5d

    aget-char v3, p0, v0

    const v5, 0xdbff

    if-gt v1, v5, :cond_57

    and-int/lit16 v1, v1, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v1, v3

    const/high16 v3, 0x10000

    add-int/2addr v1, v3

    shr-int/lit8 v3, v1, 0x12

    or-int/lit16 v3, v3, 0xf0

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    :goto_50
    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    :goto_53
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_70

    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_63
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    goto :goto_13

    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_73
    return-void
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .registers 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static toUTF8ByteArray([C)[B
    .registers 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    invoke-static {p0, v0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([CLjava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot encode string to byte array!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_1e

    aget-char v3, v0, v1

    const/16 v4, 0x61

    if-gt v4, v3, :cond_1b

    const/16 v4, 0x7a

    if-lt v4, v3, :cond_1b

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1e
    if-eqz v2, :cond_25

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_25
    return-object p0
.end method
