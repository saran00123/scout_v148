.class public Lorg/bouncycastle/asn1/cmc/BodyPartID;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final bodyIdMax:J = 0xffffffffL


# instance fields
.field private final id:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_15

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_15

    iput-wide p1, p0, Lorg/bouncycastle/asn1/cmc/BodyPartID;->id:J

    return-void

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .registers 4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cmc/BodyPartID;->convert(Ljava/math/BigInteger;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/cmc/BodyPartID;-><init>(J)V

    return-void
.end method

.method private static convert(Ljava/math/BigInteger;)J
    .registers 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_d

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "id out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/BodyPartID;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/BodyPartID;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/cmc/BodyPartID;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/cmc/BodyPartID;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/BodyPartID;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getID()J
    .registers 3

    iget-wide v0, p0, Lorg/bouncycastle/asn1/cmc/BodyPartID;->id:J

    return-wide v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-wide v1, p0, Lorg/bouncycastle/asn1/cmc/BodyPartID;->id:J

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v0
.end method
