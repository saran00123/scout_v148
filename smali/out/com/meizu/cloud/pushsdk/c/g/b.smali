.class public final Lcom/meizu/cloud/pushsdk/c/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meizu/cloud/pushsdk/c/g/c;
.implements Lcom/meizu/cloud/pushsdk/c/g/d;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:Lcom/meizu/cloud/pushsdk/c/g/j;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/meizu/cloud/pushsdk/c/g/b;->c:[B

    return-void

    :array_a
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

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 11

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/meizu/cloud/pushsdk/c/g/o;->a(JJJ)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    if-nez v0, :cond_d

    const/4 p1, -0x1

    return p1

    :cond_d
    iget v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget-wide p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    iget p1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget p2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    if-ne p1, p2, :cond_37

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/j;->a()Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/g/k;->a(Lcom/meizu/cloud/pushsdk/c/g/j;)V

    :cond_37
    return p3
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    return-wide v0
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/g/m;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_13

    const-wide/16 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x800

    invoke-interface {p1, p0, v2, v3}, Lcom/meizu/cloud/pushsdk/c/g/m;->b(Lcom/meizu/cloud/pushsdk/c/g/b;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_12

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    :goto_4
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    goto :goto_60

    :cond_8
    const/16 v1, 0x800

    if-ge p1, v1, :cond_17

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    :goto_10
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    goto :goto_4

    :cond_17
    const/high16 v1, 0x10000

    const-string v2, "Unexpected code point: "

    if-ge p1, v1, :cond_46

    const v1, 0xd800

    if-lt p1, v1, :cond_41

    const v1, 0xdfff

    if-le p1, v1, :cond_28

    goto :goto_41

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    :goto_41
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    goto :goto_57

    :cond_46
    const v1, 0x10ffff

    if-gt p1, v1, :cond_61

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    :goto_57
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    goto :goto_10

    :goto_60
    return-object p0

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/g/e;)Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 3

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lcom/meizu/cloud/pushsdk/c/g/e;->a(Lcom/meizu/cloud/pushsdk/c/g/b;)V

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(Ljava/lang/String;II)Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;II)Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 11

    if-eqz p1, :cond_11d

    if-ltz p2, :cond_106

    if-lt p3, p2, :cond_e7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_c4

    :goto_c
    if-ge p2, p3, :cond_c3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x800

    const/16 v2, 0x80

    if-ge v0, v2, :cond_4f

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/meizu/cloud/pushsdk/c/g/b;->c(I)Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v3

    iget-object v4, v3, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v5, v3, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    sub-int/2addr v5, p2

    sub-int/2addr v1, v5

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v5

    int-to-byte v0, v0

    aput-byte v0, v4, p2

    :goto_2d
    if-ge v6, v1, :cond_3e

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v2, :cond_36

    goto :goto_3e

    :cond_36
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v5

    int-to-byte p2, p2

    aput-byte p2, v4, v6

    move v6, v0

    goto :goto_2d

    :cond_3e
    :goto_3e
    add-int/2addr v5, v6

    iget p2, v3, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    sub-int/2addr v5, p2

    iget p2, v3, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    add-int/2addr p2, v5

    iput p2, v3, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    int-to-long v2, v5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    move p2, v6

    goto :goto_c

    :cond_4f
    if-ge v0, v1, :cond_61

    shr-int/lit8 v1, v0, 0x6

    or-int/lit16 v1, v1, 0xc0

    :goto_55
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_61
    const v1, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v1, :cond_b7

    const v1, 0xdfff

    if-le v0, v1, :cond_6e

    goto :goto_b7

    :cond_6e
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_77

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_78

    :cond_77
    const/4 v5, 0x0

    :goto_78
    const v6, 0xdbff

    if-gt v0, v6, :cond_b1

    const v6, 0xdc00

    if-lt v5, v6, :cond_b1

    if-le v5, v1, :cond_85

    goto :goto_b1

    :cond_85
    const/high16 v1, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    shr-int/lit8 v1, v0, 0xc

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    shr-int/lit8 v1, v0, 0x6

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_c

    :cond_b1
    :goto_b1
    invoke-virtual {p0, v3}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    move p2, v4

    goto/16 :goto_c

    :cond_b7
    :goto_b7
    shr-int/lit8 v1, v0, 0xc

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    shr-int/lit8 v1, v0, 0x6

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    goto :goto_55

    :cond_c3
    return-object p0

    :cond_c4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_e7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_106
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/c/g/o;->a(JJJ)V

    if-eqz p3, :cond_6e

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_57

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    const-string p1, ""

    return-object p1

    :cond_1a
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_31

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_31
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    int-to-long v2, p3

    add-long/2addr v2, p1

    long-to-int p3, v2

    iput p3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget-wide v2, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    iget p1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget p2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    if-ne p1, p2, :cond_56

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/j;->a()Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/g/k;->a(Lcom/meizu/cloud/pushsdk/c/g/j;)V

    :cond_56
    return-object v1

    :cond_57
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/meizu/cloud/pushsdk/c/g/b;J)V
    .registers 10

    if-eqz p1, :cond_95

    if-eq p1, p0, :cond_8d

    iget-wide v0, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/c/g/o;->a(JJJ)V

    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_8c

    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v0, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget-object v1, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v1, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_5c

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    if-eqz v0, :cond_27

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_53

    iget-boolean v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->e:Z

    if-eqz v1, :cond_53

    iget v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->d:Z

    if-eqz v3, :cond_38

    const/4 v3, 0x0

    goto :goto_3a

    :cond_38
    iget v3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    :goto_3a
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x800

    cmp-long v1, v1, v3

    if-gtz v1, :cond_53

    iget-object v1, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/meizu/cloud/pushsdk/c/g/j;->a(Lcom/meizu/cloud/pushsdk/c/g/j;I)V

    iget-wide v0, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    return-void

    :cond_53
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/c/g/j;->a(I)Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v0

    iput-object v0, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    :cond_5c
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/j;->a()Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v3

    iput-object v3, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    if-nez v3, :cond_77

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object v0, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object v0, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    goto :goto_80

    :cond_77
    iget-object v3, v3, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-virtual {v3, v0}, Lcom/meizu/cloud/pushsdk/c/g/j;->a(Lcom/meizu/cloud/pushsdk/c/g/j;)Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/j;->b()V

    :goto_80
    iget-wide v3, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    iget-wide v3, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    sub-long/2addr p2, v1

    goto :goto_c

    :cond_8c
    return-void

    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->a([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/2addr v0, v1

    goto :goto_1

    :cond_f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_15
    return-void
.end method

.method public a(J)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/c/g/o;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_16

    long-to-int p1, p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->a([B)V

    return-object p1

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/meizu/cloud/pushsdk/c/g/b;J)J
    .registers 8

    if-eqz p1, :cond_31

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    iget-wide v2, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(Lcom/meizu/cloud/pushsdk/c/g/b;J)V

    return-wide p2

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 1

    return-object p0
.end method

.method public b(I)Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->c(I)Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v0

    iget-object v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    return-object p0
.end method

.method public b([B)Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b([BII)Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([BII)Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 13

    if-eqz p1, :cond_30

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/meizu/cloud/pushsdk/c/g/o;->a(JJJ)V

    add-int/2addr p3, p2

    :goto_b
    if-ge p2, p3, :cond_2a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->c(I)Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    rsub-int v2, v2, 0x800

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    goto :goto_b

    :cond_2a
    iget-wide p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    return-object p0

    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(Lcom/meizu/cloud/pushsdk/c/g/e;)Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(Lcom/meizu/cloud/pushsdk/c/g/e;)Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object p1

    return-object p1
.end method

.method public b(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_41

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    if-eqz v0, :cond_3b

    iget v0, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v1, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    sub-long/2addr p1, v3

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v2, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v0, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v1, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/j;->a()Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/g/k;->a(Lcom/meizu/cloud/pushsdk/c/g/j;)V

    goto :goto_0

    :cond_3b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_41
    return-void
.end method

.method public c(J)Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1e

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1d

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object p1

    return-object p1

    :cond_1d
    move v3, v4

    :cond_1e
    const-wide/32 v5, 0x5f5e100

    cmp-long v2, p1, v5

    const-wide/16 v5, 0xa

    if-gez v2, :cond_6a

    const-wide/16 v7, 0x2710

    cmp-long v2, p1, v7

    if-gez v2, :cond_48

    const-wide/16 v7, 0x64

    cmp-long v2, p1, v7

    if-gez v2, :cond_3c

    cmp-long v2, p1, v5

    if-gez v2, :cond_39

    goto/16 :goto_e2

    :cond_39
    const/4 v4, 0x2

    goto/16 :goto_e2

    :cond_3c
    const-wide/16 v7, 0x3e8

    cmp-long v2, p1, v7

    if-gez v2, :cond_45

    const/4 v4, 0x3

    goto/16 :goto_e2

    :cond_45
    const/4 v4, 0x4

    goto/16 :goto_e2

    :cond_48
    const-wide/32 v7, 0xf4240

    cmp-long v2, p1, v7

    if-gez v2, :cond_5c

    const-wide/32 v7, 0x186a0

    cmp-long v2, p1, v7

    if-gez v2, :cond_59

    const/4 v4, 0x5

    goto/16 :goto_e2

    :cond_59
    const/4 v4, 0x6

    goto/16 :goto_e2

    :cond_5c
    const-wide/32 v7, 0x989680

    cmp-long v2, p1, v7

    if-gez v2, :cond_66

    const/4 v4, 0x7

    goto/16 :goto_e2

    :cond_66
    const/16 v4, 0x8

    goto/16 :goto_e2

    :cond_6a
    const-wide v7, 0xe8d4a51000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_98

    const-wide v7, 0x2540be400L

    cmp-long v2, p1, v7

    if-gez v2, :cond_89

    const-wide/32 v7, 0x3b9aca00

    cmp-long v2, p1, v7

    if-gez v2, :cond_86

    const/16 v4, 0x9

    goto :goto_e2

    :cond_86
    const/16 v4, 0xa

    goto :goto_e2

    :cond_89
    const-wide v7, 0x174876e800L

    cmp-long v2, p1, v7

    if-gez v2, :cond_95

    const/16 v4, 0xb

    goto :goto_e2

    :cond_95
    const/16 v4, 0xc

    goto :goto_e2

    :cond_98
    const-wide v7, 0x38d7ea4c68000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_bc

    const-wide v7, 0x9184e72a000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_ad

    const/16 v4, 0xd

    goto :goto_e2

    :cond_ad
    const-wide v7, 0x5af3107a4000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_b9

    const/16 v4, 0xe

    goto :goto_e2

    :cond_b9
    const/16 v4, 0xf

    goto :goto_e2

    :cond_bc
    const-wide v7, 0x16345785d8a0000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_d4

    const-wide v7, 0x2386f26fc10000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_d1

    const/16 v4, 0x10

    goto :goto_e2

    :cond_d1
    const/16 v4, 0x11

    goto :goto_e2

    :cond_d4
    const-wide v7, 0xde0b6b3a7640000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_e0

    const/16 v4, 0x12

    goto :goto_e2

    :cond_e0
    const/16 v4, 0x13

    :goto_e2
    if-eqz v3, :cond_e6

    add-int/lit8 v4, v4, 0x1

    :cond_e6
    invoke-virtual {p0, v4}, Lcom/meizu/cloud/pushsdk/c/g/b;->c(I)Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v2

    iget-object v7, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v8, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    add-int/2addr v8, v4

    :goto_ef
    cmp-long v9, p1, v0

    if-eqz v9, :cond_100

    rem-long v9, p1, v5

    long-to-int v9, v9

    add-int/lit8 v8, v8, -0x1

    sget-object v10, Lcom/meizu/cloud/pushsdk/c/g/b;->c:[B

    aget-byte v9, v10, v9

    aput-byte v9, v7, v8

    div-long/2addr p1, v5

    goto :goto_ef

    :cond_100
    if-eqz v3, :cond_108

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    aput-byte p1, v7, v8

    :cond_108
    iget p1, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    add-int/2addr p1, v4

    iput p1, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget-wide p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    return-object p0
.end method

.method public synthetic c([B)Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b([B)Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c([BII)Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/c/g/b;->b([BII)Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object p1

    return-object p1
.end method

.method c(I)Lcom/meizu/cloud/pushsdk/c/g/j;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2c

    const/16 v0, 0x800

    if-gt p1, v0, :cond_2c

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    if-nez v1, :cond_18

    invoke-static {}, Lcom/meizu/cloud/pushsdk/c/g/k;->a()Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object p1, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object p1, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    return-object p1

    :cond_18
    iget-object v1, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v2, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_23

    iget-boolean p1, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->e:Z

    if-nez p1, :cond_2b

    :cond_23
    invoke-static {}, Lcom/meizu/cloud/pushsdk/c/g/k;->a()Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/meizu/cloud/pushsdk/c/g/j;->a(Lcom/meizu/cloud/pushsdk/c/g/j;)Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v1

    :cond_2b
    return-object v1

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public c()Z
    .registers 5

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/b;->k()Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public d(J)Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(I)Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->c(I)Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v2

    iget-object v3, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v4, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    :goto_26
    if-lt v4, v5, :cond_36

    sget-object v6, Lcom/meizu/cloud/pushsdk/c/g/b;->c:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    ushr-long/2addr p1, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    :cond_36
    iget p1, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    add-int/2addr p1, v0

    iput p1, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget-wide p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    return-object p0
.end method

.method public d()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/g/b$1;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/c/g/b$1;-><init>(Lcom/meizu/cloud/pushsdk/c/g/b;)V

    return-object v0
.end method

.method public e()J
    .registers 6

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    :cond_9
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v2, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v3, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1e

    iget-boolean v3, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->e:Z

    if-eqz v3, :cond_1e

    iget v3, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget v2, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1e
    return-wide v0
.end method

.method public synthetic e(J)Lcom/meizu/cloud/pushsdk/c/g/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/c/g/b;->c(J)Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/meizu/cloud/pushsdk/c/g/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/meizu/cloud/pushsdk/c/g/b;

    iget-wide v3, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    iget-wide v5, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object p1, p1, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v3, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget v4, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    :goto_24
    iget-wide v7, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_67

    iget v7, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    move v3, v2

    :goto_38
    int-to-long v10, v3

    cmp-long v10, v10, v7

    if-gez v10, :cond_51

    iget-object v10, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4c

    return v2

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_38

    :cond_51
    iget v3, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    if-ne v4, v3, :cond_5a

    iget-object v1, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v3, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    goto :goto_5b

    :cond_5a
    move v3, v4

    :goto_5b
    iget v4, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    if-ne v9, v4, :cond_64

    iget-object p1, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v4, p1, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    goto :goto_65

    :cond_64
    move v4, v9

    :goto_65
    add-long/2addr v5, v7

    goto :goto_24

    :cond_67
    return v0
.end method

.method public f()B
    .registers 10

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v1, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget-object v3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v5, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    if-ne v4, v2, :cond_27

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/j;->a()Lcom/meizu/cloud/pushsdk/c/g/j;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/g/k;->a(Lcom/meizu/cloud/pushsdk/c/g/j;)V

    goto :goto_29

    :cond_27
    iput v4, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    :goto_29
    return v1

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public g()Lcom/meizu/cloud/pushsdk/c/g/e;
    .registers 3

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/g/e;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/b;->i()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/c/g/e;-><init>([B)V

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    sget-object v2, Lcom/meizu/cloud/pushsdk/c/g/o;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iget v2, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget v3, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public i()[B
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->a(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public j()V
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/c/g/b;->b(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public k()Lcom/meizu/cloud/pushsdk/c/g/b;
    .registers 6

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/g/b;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/c/g/b;-><init>()V

    iget-wide v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    new-instance v1, Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-direct {v1, v2}, Lcom/meizu/cloud/pushsdk/c/g/j;-><init>(Lcom/meizu/cloud/pushsdk/c/g/j;)V

    iput-object v1, v0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v1, v0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object v1, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    iput-object v1, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    :goto_1f
    iget-object v1, v1, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    if-eq v1, v2, :cond_32

    iget-object v2, v0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v2, v2, Lcom/meizu/cloud/pushsdk/c/g/j;->g:Lcom/meizu/cloud/pushsdk/c/g/j;

    new-instance v3, Lcom/meizu/cloud/pushsdk/c/g/j;

    invoke-direct {v3, v1}, Lcom/meizu/cloud/pushsdk/c/g/j;-><init>(Lcom/meizu/cloud/pushsdk/c/g/j;)V

    invoke-virtual {v2, v3}, Lcom/meizu/cloud/pushsdk/c/g/j;->a(Lcom/meizu/cloud/pushsdk/c/g/j;)Lcom/meizu/cloud/pushsdk/c/g/j;

    goto :goto_1f

    :cond_32
    iget-wide v1, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    iput-wide v1, v0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-string v0, "Buffer[size=0]"

    return-object v0

    :cond_b
    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gtz v0, :cond_33

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/g/b;->k()Lcom/meizu/cloud/pushsdk/c/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/b;->g()Lcom/meizu/cloud/pushsdk/c/g/e;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/e;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Buffer[size=%s data=%s]"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    :try_start_33
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v4, v4, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v5, v5, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v6, v6, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget-object v7, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget v7, v7, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    :goto_4f
    iget-object v4, v4, Lcom/meizu/cloud/pushsdk/c/g/j;->f:Lcom/meizu/cloud/pushsdk/c/g/j;

    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->a:Lcom/meizu/cloud/pushsdk/c/g/j;

    if-eq v4, v5, :cond_62

    iget-object v5, v4, Lcom/meizu/cloud/pushsdk/c/g/j;->a:[B

    iget v6, v4, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    iget v7, v4, Lcom/meizu/cloud/pushsdk/c/g/j;->c:I

    iget v8, v4, Lcom/meizu/cloud/pushsdk/c/g/j;->b:I

    sub-int/2addr v7, v8

    invoke-virtual {v0, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_4f

    :cond_62
    const-string v4, "Buffer[size=%s md5=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/meizu/cloud/pushsdk/c/g/b;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/g/e;->a([B)Lcom/meizu/cloud/pushsdk/c/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/g/e;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_80
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_80} :catch_81

    return-object v0

    :catch_81
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
