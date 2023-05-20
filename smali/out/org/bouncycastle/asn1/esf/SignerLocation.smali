.class public Lorg/bouncycastle/asn1/esf/SignerLocation;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

.field private localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

.field private postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_54

    if-eq v1, v2, :cond_4d

    const/4 v3, 0x2

    if-ne v1, v3, :cond_45

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    goto :goto_2f

    :cond_2a
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    :goto_2f
    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_3d

    goto :goto_7

    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "postal address must contain less than 6 strings"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    goto :goto_7

    :cond_54
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    goto :goto_7

    :cond_5b
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERUTF8String;Lorg/bouncycastle/asn1/DERUTF8String;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object p1

    invoke-static {p2}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p3, :cond_15

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_d

    goto :goto_15

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "postal address must contain less than 6 strings"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    :goto_15
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;[Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .registers 5

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignerLocation;
    .registers 2

    if-eqz p0, :cond_11

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    if-eqz v0, :cond_7

    goto :goto_11

    :cond_7
    new-instance v0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_11
    :goto_11
    check-cast p0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    return-object p0
.end method


# virtual methods
.method public getCountry()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getCountryName()Lorg/bouncycastle/asn1/DERUTF8String;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/esf/SignerLocation;->getCountry()Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLocality()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getLocalityName()Lorg/bouncycastle/asn1/DERUTF8String;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/esf/SignerLocation;->getLocality()Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPostal()[Lorg/bouncycastle/asn1/x500/DirectoryString;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x500/DirectoryString;

    const/4 v1, 0x0

    :goto_d
    array-length v2, v0

    if-eq v1, v2, :cond_1f

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1f
    return-object v0
.end method

.method public getPostalAddress()Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_14
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_20

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_20
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2d

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2d
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
