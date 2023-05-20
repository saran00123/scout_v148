.class public Lorg/bouncycastle/its/asn1/PsidGroupPermissions;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final chainLengthRange:Ljava/math/BigInteger;

.field private final eeType:Ljava/lang/Object;

.field private final minChainLength:Ljava/math/BigInteger;

.field private final subjectPermissions:Lorg/bouncycastle/its/asn1/SubjectPermissions;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/its/asn1/SubjectPermissions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/SubjectPermissions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/PsidGroupPermissions;->subjectPermissions:Lorg/bouncycastle/its/asn1/SubjectPermissions;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/PsidGroupPermissions;->minChainLength:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/PsidGroupPermissions;->chainLengthRange:Ljava/math/BigInteger;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/its/asn1/EndEntityType;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/EndEntityType;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/PsidGroupPermissions;->eeType:Ljava/lang/Object;

    return-void

    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence not length 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/PsidGroupPermissions;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/its/asn1/PsidGroupPermissions;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/its/asn1/PsidGroupPermissions;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/its/asn1/PsidGroupPermissions;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/asn1/PsidGroupPermissions;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
