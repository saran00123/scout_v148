.class public Lorg/bouncycastle/asn1/crmf/POPOPrivKey;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final agreeMAC:I = 0x3

.field public static final dhMAC:I = 0x2

.field public static final encryptedKey:I = 0x4

.field public static final subsequentMessage:I = 0x1

.field public static final thisMessage:I


# instance fields
.field private obj:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private tagNo:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    iget v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_39

    const/4 v2, 0x3

    if-eq v0, v2, :cond_27

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1f

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object p1

    goto :goto_3d

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in POPOPrivKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/crmf/PKMACValue;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object p1

    goto :goto_3d

    :cond_2c
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->valueOf(I)Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    move-result-object p1

    goto :goto_3d

    :cond_39
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p1

    :goto_3d
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/PKMACValue;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/SubsequentMessage;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOPrivKey;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/crmf/POPOPrivKey;
    .registers 2

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getType()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    return v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
