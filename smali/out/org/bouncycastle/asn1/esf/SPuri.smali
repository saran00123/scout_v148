.class public Lorg/bouncycastle/asn1/esf/SPuri;
.super Ljava/lang/Object;


# instance fields
.field private uri:Lorg/bouncycastle/asn1/DERIA5String;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DERIA5String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/DERIA5String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SPuri;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/esf/SPuri;

    return-object p0

    :cond_7
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v0, :cond_15

    new-instance v0, Lorg/bouncycastle/asn1/esf/SPuri;

    invoke-static {p0}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/SPuri;-><init>(Lorg/bouncycastle/asn1/DERIA5String;)V

    return-object v0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getUri()Lorg/bouncycastle/asn1/DERIA5String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERIA5String;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
