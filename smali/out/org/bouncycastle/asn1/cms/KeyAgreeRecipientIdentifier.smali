.class public Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private issuerSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

.field private rKeyID:Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->issuerSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->rKeyID:Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->issuerSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->rKeyID:Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .registers 4

    if-eqz p0, :cond_4c

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    if-eqz v0, :cond_7

    goto :goto_4c

    :cond_7
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_15

    new-instance v0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    return-object v0

    :cond_15
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2d

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-nez v1, :cond_2d

    new-instance p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;)V

    return-object p0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyAgreeRecipientIdentifier: "

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

    :cond_4c
    :goto_4c
    check-cast p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;
    .registers 2

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIssuerAndSerialNumber()Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->issuerSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    return-object v0
.end method

.method public getRKeyID()Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->rKeyID:Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->issuerSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->rKeyID:Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
