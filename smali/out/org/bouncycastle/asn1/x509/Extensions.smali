.class public Lorg/bouncycastle/asn1/x509/Extensions;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private extensions:Ljava/util/Hashtable;

.field private ordering:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_15

    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repeated extension found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Extension;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/Extension;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_12
    array-length v1, p1

    if-eq v0, v1, :cond_2c

    aget-object v1, p1, v0

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2c
    return-void
.end method

.method public static getExtension(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method private getExtensionOIDs(Z)[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_28

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/x509/Extension;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-ne v3, p1, :cond_25

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_28
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->toOidArray(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    return-object p1
.end method

.method public static getExtensionParsedValue(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/x509/Extensions;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/Extensions;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;
    .registers 2

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    return-object p0
.end method

.method private toOidArray(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_15

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-object v0
.end method


# virtual methods
.method public equivalent(Lorg/bouncycastle/asn1/x509/Extensions;)Z
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p1, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    return v2

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_33
    const/4 p1, 0x1

    return p1
.end method

.method public getCriticalExtensionOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs(Z)[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/x509/Extension;

    return-object p1
.end method

.method public getExtensionOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->toOidArray(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionParsedValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNonCriticalExtensionOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs(Z)[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public oids()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/x509/Extension;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_11

    :cond_29
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
