.class public Lanet/channel/bytes/ByteArray;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lanet/channel/bytes/ByteArray;",
        ">;"
    }
.end annotation


# instance fields
.field final buffer:[B

.field bufferLength:I

.field dataLength:I


# direct methods
.method private constructor <init>([BI)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    .line 17
    new-array p1, p2, [B

    :cond_7
    iput-object p1, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    .line 18
    iget-object p1, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    array-length p1, p1

    iput p1, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    .line 19
    iput p2, p0, Lanet/channel/bytes/ByteArray;->dataLength:I

    return-void
.end method

.method public static create(I)Lanet/channel/bytes/ByteArray;
    .registers 3

    .line 23
    new-instance v0, Lanet/channel/bytes/ByteArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lanet/channel/bytes/ByteArray;-><init>([BI)V

    return-object v0
.end method

.method public static wrap([B)Lanet/channel/bytes/ByteArray;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_4
    array-length v0, p0

    invoke-static {p0, v0}, Lanet/channel/bytes/ByteArray;->wrap([BI)Lanet/channel/bytes/ByteArray;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([BI)Lanet/channel/bytes/ByteArray;
    .registers 3

    if-eqz p0, :cond_e

    if-ltz p1, :cond_e

    .line 28
    array-length v0, p0

    if-le p1, v0, :cond_8

    goto :goto_e

    .line 31
    :cond_8
    new-instance v0, Lanet/channel/bytes/ByteArray;

    invoke-direct {v0, p0, p1}, Lanet/channel/bytes/ByteArray;-><init>([BI)V

    return-object v0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lanet/channel/bytes/ByteArray;)I
    .registers 4

    .line 76
    iget v0, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    iget v1, p1, Lanet/channel/bytes/ByteArray;->bufferLength:I

    if-ne v0, v1, :cond_1c

    .line 77
    iget-object v0, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    if-nez v0, :cond_c

    const/4 p1, -0x1

    return p1

    .line 79
    :cond_c
    iget-object v0, p1, Lanet/channel/bytes/ByteArray;->buffer:[B

    if-nez v0, :cond_12

    const/4 p1, 0x1

    return p1

    .line 82
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_1c
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 11
    check-cast p1, Lanet/channel/bytes/ByteArray;

    invoke-virtual {p0, p1}, Lanet/channel/bytes/ByteArray;->compareTo(Lanet/channel/bytes/ByteArray;)I

    move-result p1

    return p1
.end method

.method public getBuffer()[B
    .registers 2

    .line 42
    iget-object v0, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    return-object v0
.end method

.method public getBufferLength()I
    .registers 2

    .line 46
    iget v0, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    return v0
.end method

.method public getDataLength()I
    .registers 2

    .line 50
    iget v0, p0, Lanet/channel/bytes/ByteArray;->dataLength:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    iget v1, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    move v2, p1

    .line 66
    :cond_d
    iput v2, p0, Lanet/channel/bytes/ByteArray;->dataLength:I

    return p1
.end method

.method public recycle()V
    .registers 2

    .line 58
    iget v0, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    if-nez v0, :cond_5

    return-void

    .line 1021
    :cond_5
    sget-object v0, Lanet/channel/bytes/a$a;->a:Lanet/channel/bytes/a;

    .line 61
    invoke-virtual {v0, p0}, Lanet/channel/bytes/a;->a(Lanet/channel/bytes/ByteArray;)V

    return-void
.end method

.method public setDataLength(I)V
    .registers 2

    .line 54
    iput p1, p0, Lanet/channel/bytes/ByteArray;->dataLength:I

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    iget v1, p0, Lanet/channel/bytes/ByteArray;->dataLength:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
