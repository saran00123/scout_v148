.class public Lorg/bouncycastle/its/asn1/HashedData;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private hashData:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/HashedData;->hashData:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/HashedData;->hashData:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public getHashData()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/its/asn1/HashedData;->hashData:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public setHashData(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/HashedData;->hashData:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/its/asn1/HashedData;->hashData:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
