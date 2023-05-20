.class public Lorg/bouncycastle/its/asn1/IValue;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final value:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_19

    const v1, 0xffff

    if-gt v0, v1, :cond_19

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/IValue;->value:Ljava/math/BigInteger;

    return-void

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/IValue;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/its/asn1/IValue;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/its/asn1/IValue;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/its/asn1/IValue;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/asn1/IValue;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/bouncycastle/its/asn1/IValue;->value:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method
