.class public Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field private static final algid_hmacWithSHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private final iterationCount:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final keyLength:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final octStr:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_39

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3c

    :cond_37
    move-object p1, v1

    goto :goto_3c

    :cond_39
    iput-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/ASN1Integer;

    move-object p1, v0

    :goto_3c
    if-eqz p1, :cond_47

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_49

    :cond_45
    iput-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/ASN1Integer;

    :cond_47
    iput-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_49
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void
.end method

.method public constructor <init>([BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/bouncycastle/asn1/ASN1OctetString;

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/bouncycastle/asn1/ASN1Integer;

    if-lez p3, :cond_1f

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p4, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>([BILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getKeyLength()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSalt()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public isDefaultPrf()Z
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_f

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_17
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_28

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_28
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
