.class public Lorg/bouncycastle/its/asn1/PsidSspRange;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private psid:Lorg/bouncycastle/asn1/ASN1Integer;

.field private sspRange:Lorg/bouncycastle/its/asn1/SspRange;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/PsidSspRange;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/its/asn1/PsidSspRange;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/its/asn1/PsidSspRange;

    return-object p0

    :cond_b
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/its/asn1/PsidSspRange;

    invoke-direct {v0}, Lorg/bouncycastle/its/asn1/PsidSspRange;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_42

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_42

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v2, :cond_31

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, v0, Lorg/bouncycastle/its/asn1/PsidSspRange;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    :cond_31
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v3, :cond_41

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/its/asn1/SspRange;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/SspRange;

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lorg/bouncycastle/its/asn1/SspRange;

    :cond_41
    return-object v0

    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "expected sequences with one or optionally two items"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getPsid()Lorg/bouncycastle/asn1/ASN1Integer;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/its/asn1/PsidSspRange;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSspRange()Lorg/bouncycastle/its/asn1/SspRange;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lorg/bouncycastle/its/asn1/SspRange;

    return-object v0
.end method

.method public setPsid(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/PsidSspRange;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public setSspRange(Lorg/bouncycastle/its/asn1/SspRange;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lorg/bouncycastle/its/asn1/SspRange;

    return-void
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/its/asn1/PsidSspRange;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/its/asn1/PsidSspRange;->sspRange:Lorg/bouncycastle/its/asn1/SspRange;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_11
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
