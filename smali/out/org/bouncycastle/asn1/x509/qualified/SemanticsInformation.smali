.class public Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

.field private semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p2}, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->cloneNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_28

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :cond_28
    :goto_28
    if-eqz p1, :cond_4c

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v0, 0x0

    :goto_37
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_4c
    return-void

    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no objects in SemanticsInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->cloneNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method

.method private static cloneNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 4

    if-eqz p0, :cond_b

    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/GeneralName;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getNameRegistrationAuthorities()[Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->cloneNames([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public getSemanticsIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_d
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_19

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_19
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
