.class public Lorg/bouncycastle/asn1/x509/V2Form;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

.field issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_67

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x1

    if-nez v1, :cond_20

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    move v1, v2

    goto :goto_21

    :cond_20
    move v1, v0

    :goto_21
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v1, v3, :cond_66

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {v3, v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    goto :goto_48

    :cond_3c
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-ne v4, v2, :cond_4b

    invoke-static {v3, v0}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    return-void

    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/IssuerSerial;Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/IssuerSerial;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/IssuerSerial;Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/IssuerSerial;Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/IssuerSerial;Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/V2Form;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/x509/V2Form;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2Form;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/V2Form;
    .registers 2

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/V2Form;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getIssuerName()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2Form;->issuerName:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_d
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/bouncycastle/asn1/x509/IssuerSerial;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1a
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v1, :cond_27

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_27
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
