.class public Lorg/bouncycastle/asn1/cms/Evidence;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

.field private otherEvidence:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    goto :goto_2c

    :cond_11
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Evidence;->ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    goto :goto_2c

    :cond_1f
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2d

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Evidence;->otherEvidence:Lorg/bouncycastle/asn1/ASN1Sequence;

    :goto_2c
    return-void

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in Evidence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Evidence;->ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Evidence;
    .registers 2

    if-eqz p0, :cond_1d

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;

    if-eqz v0, :cond_7

    goto :goto_1d

    :cond_7
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_15

    new-instance v0, Lorg/bouncycastle/asn1/cms/Evidence;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/Evidence;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    check-cast p0, Lorg/bouncycastle/asn1/cms/Evidence;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/Evidence;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/Evidence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Evidence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getErsEvidence()Lorg/bouncycastle/asn1/tsp/EvidenceRecord;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    return-object v0
.end method

.method public getTstEvidence()Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->tstEvidence:Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v2, v1, v1, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    :cond_b
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Evidence;->ersEvidence:Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    if-eqz v0, :cond_16

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    :cond_16
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/Evidence;->otherEvidence:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
