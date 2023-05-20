.class public Lorg/bouncycastle/asn1/cms/KEKIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private keyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_34

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2c

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    :goto_25
    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_4a

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid KEKIdentifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_45

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_4a

    :cond_45
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    goto :goto_25

    :cond_4a
    :goto_4a
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEKIdentifier;
    .registers 4

    if-eqz p0, :cond_32

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    if-eqz v0, :cond_7

    goto :goto_32

    :cond_7
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/KEKIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KEKIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    :goto_32
    check-cast p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/KEKIdentifier;
    .registers 2

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEKIdentifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getKeyIdentifier()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getOther()Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->keyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->date:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_12
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KEKIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_19
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
