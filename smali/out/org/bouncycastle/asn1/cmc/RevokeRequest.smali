.class public Lorg/bouncycastle/asn1/cmc/RevokeRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private comment:Lorg/bouncycastle/asn1/DERUTF8String;

.field private invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private final name:Lorg/bouncycastle/asn1/x500/X500Name;

.field private passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final reason:Lorg/bouncycastle/asn1/x509/CRLReason;

.field private final serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_8d

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x6

    if-gt v0, v2, :cond_8d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->name:Lorg/bouncycastle/asn1/x500/X500Name;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLReason;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->reason:Lorg/bouncycastle/asn1/x509/CRLReason;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_50

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_50

    const/4 v0, 0x4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_51

    :cond_50
    move v0, v1

    :goto_51
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v0, :cond_70

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_70

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    move v0, v1

    :cond_70
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v0, :cond_8c

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_8c

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/DERUTF8String;

    :cond_8c
    return-void

    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/CRLReason;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/DERUTF8String;)V
    .registers 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->name:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->reason:Lorg/bouncycastle/asn1/x509/CRLReason;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p6, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/DERUTF8String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/RevokeRequest;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/RevokeRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getComment()Lorg/bouncycastle/asn1/DERUTF8String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getInvalidityDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getName()Lorg/bouncycastle/asn1/x500/X500Name;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->name:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getPassPhrase()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPassphrase()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getReason()Lorg/bouncycastle/asn1/x509/CRLReason;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->reason:Lorg/bouncycastle/asn1/x509/CRLReason;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Lorg/bouncycastle/asn1/DERUTF8String;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/DERUTF8String;

    return-void
.end method

.method public setInvalidityDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-void
.end method

.method public setPassphrase(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->name:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->reason:Lorg/bouncycastle/asn1/x509/CRLReason;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1c
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_23

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_23
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/RevokeRequest;->comment:Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_2a

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2a
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
