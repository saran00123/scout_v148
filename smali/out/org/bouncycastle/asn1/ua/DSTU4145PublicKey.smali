.class public Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private pubKey:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;->pubKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ua/DSTU4145PointEncoder;->encodePoint(Lorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;->pubKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;->pubKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
