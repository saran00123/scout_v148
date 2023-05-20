.class public Lorg/bouncycastle/asn1/x509/NameConstraints;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

.field private permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2a

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->createArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    goto :goto_7

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->createArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    goto :goto_7

    :cond_50
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/GeneralSubtree;[Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p2}, Lorg/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    return-void
.end method

.method private static cloneSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 4

    if-eqz p0, :cond_b

    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private createArray(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_17

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NameConstraints;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/x509/NameConstraints;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/x509/NameConstraints;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/NameConstraints;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getExcludedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public getPermittedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 7

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->permitted:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v2, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_18
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/NameConstraints;->excluded:[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_2a

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v2, v4, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2a
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
