.class public Lorg/bouncycastle/asn1/DLSet;
.super Lorg/bouncycastle/asn1/ASN1Set;


# instance fields
.field private bodyLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSet;->bodyLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/DLSet;->bodyLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/DLSet;->bodyLength:I

    return-void
.end method

.method constructor <init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/DLSet;->bodyLength:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/DLSet;->bodyLength:I

    return-void
.end method

.method private getBodyLength()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/DLSet;->bodyLength:I

    if-gez v0, :cond_21

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_1f

    iget-object v3, p0, Lorg/bouncycastle/asn1/DLSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1f
    iput v2, p0, Lorg/bouncycastle/asn1/DLSet;->bodyLength:I

    :cond_21
    iget v0, p0, Lorg/bouncycastle/asn1/DLSet;->bodyLength:I

    return v0
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_7

    const/16 p2, 0x31

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    :cond_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lorg/bouncycastle/asn1/ASN1OutputStream;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/DLSet;->bodyLength:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_44

    const/16 v1, 0x10

    if-le v0, v1, :cond_19

    goto :goto_44

    :cond_19
    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1Primitive;

    move v4, v2

    move v5, v4

    :goto_1d
    if-ge v4, v0, :cond_35

    iget-object v6, p0, Lorg/bouncycastle/asn1/DLSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_35
    iput v5, p0, Lorg/bouncycastle/asn1/DLSet;->bodyLength:I

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    :goto_3a
    if-ge v2, v0, :cond_5b

    aget-object p1, v1, v2

    invoke-virtual {p2, p1, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_44
    :goto_44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLSet;->getBodyLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    :goto_4b
    if-ge v2, v0, :cond_5b

    iget-object p1, p0, Lorg/bouncycastle/asn1/DLSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_5b
    return-void
.end method

.method encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLSet;->getBodyLength()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    return-object p0
.end method
