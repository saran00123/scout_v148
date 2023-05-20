.class public Lorg/bouncycastle/its/asn1/SubjectPermissions;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/SubjectPermissions;
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/its/asn1/SubjectPermissions;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/its/asn1/SubjectPermissions;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    :cond_a
    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
