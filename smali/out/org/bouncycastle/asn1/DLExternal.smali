.class public Lorg/bouncycastle/asn1/DLExternal;
.super Lorg/bouncycastle/asn1/ASN1External;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1External;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/asn1/ASN1External;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/asn1/DERTaggedObject;)V
    .registers 11

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/DERTaggedObject;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/DLExternal;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Primitive;ILorg/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DL"

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_14
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_21
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_2e
    new-instance v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    const/4 v3, 0x1

    iget v4, p0, Lorg/bouncycastle/asn1/DLExternal;->encoding:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/DLExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-direct {v1, v3, v4, v5}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZII[B)V

    return-void
.end method

.method encodedLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLExternal;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    return-object p0
.end method
