.class public Lorg/bouncycastle/its/asn1/Ieee1609Dot2Content;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/Ieee1609Dot2Content;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/its/asn1/Ieee1609Dot2Content;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/its/asn1/Ieee1609Dot2Content;

    return-object p0

    :cond_7
    if-eqz p0, :cond_12

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/its/asn1/Ieee1609Dot2Content;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/Ieee1609Dot2Content;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
