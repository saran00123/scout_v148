.class public Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final PBKD_MAC_CHECK:I = 0x0

.field public static final SIG_CHECK:I = 0x1


# instance fields
.field private final integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

.field private final type:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_26

    instance-of v0, p1, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    if-eqz v0, :cond_c

    goto :goto_26

    :cond_c
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->type:I

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/bc/SignatureCheck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/SignatureCheck;

    move-result-object p1

    goto :goto_2d

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown check object in integrity check."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :goto_26
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->type:I

    invoke-static {p1}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    move-result-object p1

    :goto_2d
    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bc/SignatureCheck;)V
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    return-object p0

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_21

    :try_start_b
    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse integrity check details."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    if-eqz p0, :cond_2d

    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIntegrityCheck()Lorg/bouncycastle/asn1/ASN1Object;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->type:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    instance-of v1, v0, Lorg/bouncycastle/asn1/bc/SignatureCheck;

    if-eqz v1, :cond_d

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_d
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
