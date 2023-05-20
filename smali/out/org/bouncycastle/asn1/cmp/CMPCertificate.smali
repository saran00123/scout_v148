.class public Lorg/bouncycastle/asn1/cmp/CMPCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private otherCert:Lorg/bouncycastle/asn1/ASN1Object;

.field private otherTagValue:I

.field private x509v3PKCert:Lorg/bouncycastle/asn1/x509/Certificate;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Object;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->otherTagValue:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->otherCert:Lorg/bouncycastle/asn1/ASN1Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(ILorg/bouncycastle/asn1/ASN1Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Certificate;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/bouncycastle/asn1/x509/Certificate;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only version 3 certificates allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .registers 4

    if-eqz p0, :cond_5d

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    if-eqz v0, :cond_7

    goto :goto_5d

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_1c

    :try_start_b
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid encoding in CMPCertificate"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2a

    new-instance v0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v0

    :cond_2a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3e

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    new-instance v0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(ILorg/bouncycastle/asn1/ASN1Object;)V

    return-object v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

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

    :cond_5d
    :goto_5d
    check-cast p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object p0
.end method


# virtual methods
.method public getOtherCert()Lorg/bouncycastle/asn1/ASN1Object;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->otherCert:Lorg/bouncycastle/asn1/ASN1Object;

    return-object v0
.end method

.method public getOtherCertTag()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->otherTagValue:I

    return v0
.end method

.method public getX509v2AttrCert()Lorg/bouncycastle/asn1/x509/AttributeCertificate;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->otherCert:Lorg/bouncycastle/asn1/ASN1Object;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getX509v3PKCert()Lorg/bouncycastle/asn1/x509/Certificate;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/bouncycastle/asn1/x509/Certificate;

    return-object v0
.end method

.method public isX509v3PKCert()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/bouncycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->otherCert:Lorg/bouncycastle/asn1/ASN1Object;

    if-eqz v0, :cond_d

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget v3, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->otherTagValue:I

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
