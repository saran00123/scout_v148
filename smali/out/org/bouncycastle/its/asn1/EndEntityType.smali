.class public Lorg/bouncycastle/its/asn1/EndEntityType;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final app:I = 0x80

.field public static final enrol:I = 0x40


# instance fields
.field private final type:Lorg/bouncycastle/asn1/ASN1BitString;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/16 v0, 0x80

    if-eq p1, v0, :cond_14

    const/16 v0, 0x40

    if-ne p1, v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/EndEntityType;->type:Lorg/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/DERBitString;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/asn1/EndEntityType;->type:Lorg/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/EndEntityType;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/its/asn1/EndEntityType;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/its/asn1/EndEntityType;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/its/asn1/EndEntityType;

    invoke-static {p0}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/asn1/EndEntityType;-><init>(Lorg/bouncycastle/asn1/DERBitString;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/its/asn1/EndEntityType;->type:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method
