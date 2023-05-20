.class public Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field qualifiers:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    return-object p0

    :cond_7
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_15

    new-instance v0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getInfoAt(I)Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
