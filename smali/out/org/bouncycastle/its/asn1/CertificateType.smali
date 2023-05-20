.class public Lorg/bouncycastle/its/asn1/CertificateType;
.super Ljava/lang/Object;


# static fields
.field public static final Explicit:Lorg/bouncycastle/its/asn1/CertificateType;

.field public static final Implicit:Lorg/bouncycastle/its/asn1/CertificateType;


# instance fields
.field private final enumerated:Lorg/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/bouncycastle/its/asn1/CertificateType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/its/asn1/CertificateType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/its/asn1/CertificateType;->Explicit:Lorg/bouncycastle/its/asn1/CertificateType;

    new-instance v0, Lorg/bouncycastle/its/asn1/CertificateType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/its/asn1/CertificateType;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/its/asn1/CertificateType;->Implicit:Lorg/bouncycastle/its/asn1/CertificateType;

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/CertificateType;->enumerated:Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/CertificateType;->enumerated:Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/CertificateType;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/its/asn1/CertificateType;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/bouncycastle/its/asn1/CertificateType;

    return-object p1

    :cond_b
    new-instance v0, Lorg/bouncycastle/its/asn1/CertificateType;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/its/asn1/CertificateType;-><init>(Lorg/bouncycastle/asn1/ASN1Enumerated;)V

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/its/asn1/CertificateType;->enumerated:Lorg/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method
