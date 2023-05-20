.class Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;
.super Lorg/bouncycastle/asn1/LimitedInputStream;


# instance fields
.field private _b1:I

.field private _b2:I

.field private _eofOn00:Z

.field private _eofReached:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iget p1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-ltz p1, :cond_1d

    invoke-direct {p0}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    return-void

    :cond_1d
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private checkForEof()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    if-nez v0, :cond_16

    iget v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    :cond_16
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    return v0
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_19

    iget v1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    iget v2, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iput v2, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    iput v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    return v1

    :cond_19
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-nez v0, :cond_49

    const/4 v0, 0x3

    if-ge p3, v0, :cond_8

    goto :goto_49

    :cond_8
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-eqz v0, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    iget-object v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {v0, p1, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_43

    iget v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    iget-object p1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    iget-object p1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iget p1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-ltz p1, :cond_3d

    add-int/lit8 p3, p3, 0x2

    return p3

    :cond_3d
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_43
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_49
    :goto_49
    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/LimitedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method setEofOn00(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    invoke-direct {p0}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    return-void
.end method
