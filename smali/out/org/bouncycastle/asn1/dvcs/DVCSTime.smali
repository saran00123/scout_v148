.class public Lorg/bouncycastle/asn1/dvcs/DVCSTime;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private final genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private final timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSTime;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    return-object p0

    :cond_7
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_15

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    return-object v0

    :cond_15
    if-eqz p0, :cond_21

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/DVCSTime;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getGenTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
