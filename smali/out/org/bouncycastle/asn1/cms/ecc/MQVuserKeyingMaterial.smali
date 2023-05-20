.class public Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private addedukm:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private ephemeralPublicKey:Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    goto :goto_1a

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence has incorrect number of elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_37

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    :cond_37
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_a

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ephemeral public key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
    .registers 2

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAddedukm()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getEphemeralPublicKey()Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_19

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_19
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
