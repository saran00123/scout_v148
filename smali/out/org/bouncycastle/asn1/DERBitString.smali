.class public Lorg/bouncycastle/asn1/DERBitString;
.super Lorg/bouncycastle/asn1/ASN1BitString;


# direct methods
.method protected constructor <init>(BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method static fromOctetString([B)Lorg/bouncycastle/asn1/DERBitString;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    const/4 v0, 0x0

    aget-byte v2, p0, v0

    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    array-length v4, v3

    if-eqz v4, :cond_13

    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    new-instance p0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "truncated BIT STRING detected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;
    .registers 4

    if-eqz p0, :cond_61

    instance-of v0, p0, Lorg/bouncycastle/asn1/DERBitString;

    if-eqz v0, :cond_7

    goto :goto_61

    :cond_7
    instance-of v0, p0, Lorg/bouncycastle/asn1/DLBitString;

    if-eqz v0, :cond_17

    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    check-cast p0, Lorg/bouncycastle/asn1/DLBitString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLBitString;->data:[B

    iget p0, p0, Lorg/bouncycastle/asn1/DLBitString;->padBits:I

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v0

    :cond_17
    instance-of v0, p0, [B

    if-eqz v0, :cond_42

    :try_start_1b
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/DERBitString;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERBitString;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    :goto_61
    check-cast p0, Lorg/bouncycastle/asn1/DERBitString;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    if-nez p1, :cond_18

    instance-of p1, p0, Lorg/bouncycastle/asn1/DERBitString;

    if-eqz p1, :cond_b

    goto :goto_18

    :cond_b
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/DERBitString;->fromOctetString([B)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_18
    invoke-static {p0}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    array-length v0, v0

    if-eqz v0, :cond_35

    iget v1, p0, Lorg/bouncycastle/asn1/DERBitString;->padBits:I

    if-eqz v1, :cond_35

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    add-int/lit8 v8, v0, -0x1

    aget-byte v0, v1, v8

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    aget-byte v1, v1, v8

    iget v2, p0, Lorg/bouncycastle/asn1/DERBitString;->padBits:I

    const/16 v3, 0xff

    shl-int v2, v3, v2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    if-ne v0, v1, :cond_1e

    goto :goto_35

    :cond_1e
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    aget-byte v0, v0, v8

    iget v1, p0, Lorg/bouncycastle/asn1/DERBitString;->padBits:I

    shl-int v1, v3, v1

    and-int/2addr v0, v1

    int-to-byte v9, v0

    const/4 v4, 0x3

    iget v0, p0, Lorg/bouncycastle/asn1/DERBitString;->padBits:I

    int-to-byte v5, v0

    iget-object v6, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v2 .. v9}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZIB[BIIB)V

    goto :goto_3e

    :cond_35
    :goto_35
    const/4 v0, 0x3

    iget v1, p0, Lorg/bouncycastle/asn1/DERBitString;->padBits:I

    int-to-byte v1, v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZIB[B)V

    :goto_3e
    return-void
.end method

.method encodedLength()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isConstructed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    return-object p0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    return-object p0
.end method
