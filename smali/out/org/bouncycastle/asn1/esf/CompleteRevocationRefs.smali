.class public Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    goto :goto_7

    :cond_15
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/esf/CrlOcspRef;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCrlOcspRefs()[Lorg/bouncycastle/asn1/esf/CrlOcspRef;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/esf/CrlOcspRef;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlOcspRef;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method