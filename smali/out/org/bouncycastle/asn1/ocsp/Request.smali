.class public Lorg/bouncycastle/asn1/ocsp/Request;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field reqCert:Lorg/bouncycastle/asn1/ocsp/CertID;

.field singleRequestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Request;->reqCert:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    :cond_22
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/Request;->reqCert:Lorg/bouncycastle/asn1/ocsp/CertID;

    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/Request;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/Request;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/ocsp/Request;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/Request;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/Request;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/Request;
    .registers 2

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ocsp/Request;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getReqCert()Lorg/bouncycastle/asn1/ocsp/CertID;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Request;->reqCert:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method

.method public getSingleRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/Request;->reqCert:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_19

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_19
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
