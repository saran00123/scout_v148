.class public Lorg/android/spdy/SpdyByteArray;
.super Ljava/lang/Object;
.source "SpdyByteArray.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/android/spdy/SpdyByteArray;",
        ">;"
    }
.end annotation


# instance fields
.field private byteArray:[B

.field dataLength:I

.field length:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/android/spdy/SpdyByteArray;->byteArray:[B

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lorg/android/spdy/SpdyByteArray;->length:I

    .line 16
    iput v0, p0, Lorg/android/spdy/SpdyByteArray;->dataLength:I

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/android/spdy/SpdyByteArray;->byteArray:[B

    .line 21
    iput p1, p0, Lorg/android/spdy/SpdyByteArray;->length:I

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lorg/android/spdy/SpdyByteArray;->dataLength:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 5
    check-cast p1, Lorg/android/spdy/SpdyByteArray;

    invoke-virtual {p0, p1}, Lorg/android/spdy/SpdyByteArray;->compareTo(Lorg/android/spdy/SpdyByteArray;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/android/spdy/SpdyByteArray;)I
    .registers 4

    .line 52
    iget v0, p0, Lorg/android/spdy/SpdyByteArray;->length:I

    iget v1, p1, Lorg/android/spdy/SpdyByteArray;->length:I

    if-ne v0, v1, :cond_1c

    .line 53
    iget-object v0, p0, Lorg/android/spdy/SpdyByteArray;->byteArray:[B

    if-nez v0, :cond_c

    const/4 p1, -0x1

    return p1

    .line 55
    :cond_c
    iget-object v0, p1, Lorg/android/spdy/SpdyByteArray;->byteArray:[B

    if-nez v0, :cond_12

    const/4 p1, 0x1

    return p1

    .line 58
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

.method public getByteArray()[B
    .registers 2

    .line 30
    iget-object v0, p0, Lorg/android/spdy/SpdyByteArray;->byteArray:[B

    return-object v0
.end method

.method public getDataLength()I
    .registers 2

    .line 34
    iget v0, p0, Lorg/android/spdy/SpdyByteArray;->dataLength:I

    return v0
.end method

.method public recycle()V
    .registers 3

    .line 41
    iget-object v0, p0, Lorg/android/spdy/SpdyByteArray;->byteArray:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 42
    iput v1, p0, Lorg/android/spdy/SpdyByteArray;->dataLength:I

    .line 43
    invoke-static {}, Lorg/android/spdy/SpdyBytePool;->getInstance()Lorg/android/spdy/SpdyBytePool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/android/spdy/SpdyBytePool;->recycle(Lorg/android/spdy/SpdyByteArray;)V

    return-void
.end method

.method setByteArrayDataLength(I)V
    .registers 2

    .line 26
    iput p1, p0, Lorg/android/spdy/SpdyByteArray;->dataLength:I

    return-void
.end method
