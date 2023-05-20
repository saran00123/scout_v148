.class public Lorg/bouncycastle/asn1/cmc/ExtensionReq;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final extensions:[Lorg/bouncycastle/asn1/x509/Extension;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/Extension;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Extension;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/Extension;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/Extension;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/cmc/Utils;->clone([Lorg/bouncycastle/asn1/x509/Extension;)[Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/ExtensionReq;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/ExtensionReq;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmc/ExtensionReq;
    .registers 2

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/ExtensionReq;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExtensions()[Lorg/bouncycastle/asn1/x509/Extension;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/Utils;->clone([Lorg/bouncycastle/asn1/x509/Extension;)[Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/ExtensionReq;->extensions:[Lorg/bouncycastle/asn1/x509/Extension;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
