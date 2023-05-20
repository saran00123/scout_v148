.class public Lorg/bouncycastle/its/asn1/CertificateBase;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private type:Lorg/bouncycastle/its/asn1/CertificateType;

.field private version:[B


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/CertificateBase;
    .registers 4

    instance-of v0, p0, Lorg/bouncycastle/its/asn1/ImplicitCertificate;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/its/asn1/ImplicitCertificate;

    return-object p0

    :cond_7
    instance-of v0, p0, Lorg/bouncycastle/its/asn1/ExplicitCertificate;

    if-eqz v0, :cond_e

    check-cast p0, Lorg/bouncycastle/its/asn1/ExplicitCertificate;

    return-object p0

    :cond_e
    if-eqz p0, :cond_3f

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/its/asn1/CertificateType;->Implicit:Lorg/bouncycastle/its/asn1/CertificateType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p0}, Lorg/bouncycastle/its/asn1/ImplicitCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/CertificateBase;

    move-result-object p0

    return-object p0

    :cond_26
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/its/asn1/CertificateType;->Explicit:Lorg/bouncycastle/its/asn1/CertificateType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p0}, Lorg/bouncycastle/its/asn1/ExplicitCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/CertificateBase;

    move-result-object p0

    return-object p0

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown certificate type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
