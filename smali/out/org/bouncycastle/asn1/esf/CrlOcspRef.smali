.class public Lorg/bouncycastle/asn1/esf/CrlOcspRef;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

.field private ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

.field private otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v2, 0x1

    if-eq v1, v2, :cond_32

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OtherRevRefs;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    goto :goto_7

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OcspListID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OcspListID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    goto :goto_7

    :cond_3d
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/CrlListID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlListID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    goto :goto_7

    :cond_48
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/esf/CrlListID;Lorg/bouncycastle/asn1/esf/OcspListID;Lorg/bouncycastle/asn1/esf/OtherRevRefs;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlOcspRef;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/CrlOcspRef;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCrlids()Lorg/bouncycastle/asn1/esf/CrlListID;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    return-object v0
.end method

.method public getOcspids()Lorg/bouncycastle/asn1/esf/OcspListID;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    return-object v0
.end method

.method public getOtherRev()Lorg/bouncycastle/asn1/esf/OtherRevRefs;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/bouncycastle/asn1/esf/CrlListID;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/esf/CrlListID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_18
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/bouncycastle/asn1/esf/OcspListID;

    if-eqz v1, :cond_28

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/esf/OcspListID;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_28
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/bouncycastle/asn1/esf/OtherRevRefs;

    if-eqz v1, :cond_39

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/esf/OtherRevRefs;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_39
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
