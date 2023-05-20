.class public Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;


# instance fields
.field private crlentries:Lorg/bouncycastle/asn1/ASN1EncodableVector;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field private signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Sequence;

    sput-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    return-void
.end method

.method private static createInvalidityDateExtension(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    :try_start_6
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->invalidityDate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_17} :catch_1d

    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    :catch_1d
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object p0

    :try_start_a
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CRLReason;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1b} :catch_21

    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    :catch_21
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private internalAddCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz p3, :cond_11

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_11
    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method


# virtual methods
.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1UTCTime;I)V
    .registers 5

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;I)V

    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .registers 8

    if-eqz p3, :cond_3f

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    sget-object v1, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    array-length v2, v1

    if-ge p3, v2, :cond_29

    if-ltz p3, :cond_12

    aget-object p3, v1, p3

    goto :goto_2d

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid reason value: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    invoke-static {p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p3

    :goto_2d
    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz p4, :cond_39

    invoke-static {p4}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createInvalidityDateExtension(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_39
    new-instance p3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_4a

    :cond_3f
    if-eqz p4, :cond_4e

    new-instance p3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-static {p4}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createInvalidityDateExtension(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_4a
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->internalAddCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_52

    :cond_4e
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Extensions;)V

    :goto_52
    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .registers 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz p3, :cond_11

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_11
    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public generateTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_57

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v1, :cond_2d

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2d
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3f
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_4c

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_4c
    new-instance v1, Lorg/bouncycastle/asn1/x509/TBSCertList;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/TBSCertList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1

    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all mandatory fields set in V2 TBSCertList generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 2

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .registers 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setNextUpdate(Lorg/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public setThisUpdate(Lorg/bouncycastle/asn1/ASN1UTCTime;)V
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method
