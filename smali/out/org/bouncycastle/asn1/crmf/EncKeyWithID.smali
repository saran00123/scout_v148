.class public Lorg/bouncycastle/asn1/crmf/EncKeyWithID;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2b

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-nez v0, :cond_26

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object p1

    goto :goto_2c

    :cond_26
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/asn1/DERUTF8String;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncKeyWithID;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIdentifier()Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getPrivateKey()Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    return-object v0
.end method

.method public hasIdentifier()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isIdentifierUTF8String()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_12
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
