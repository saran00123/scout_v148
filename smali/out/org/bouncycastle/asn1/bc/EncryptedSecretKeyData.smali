.class public Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final encryptedKeyData:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->encryptedKeyData:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance p1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->encryptedKeyData:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEncryptedKeyData()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->encryptedKeyData:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->encryptedKeyData:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
