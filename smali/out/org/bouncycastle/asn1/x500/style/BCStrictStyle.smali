.class public Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lorg/bouncycastle/asn1/x500/style/BCStyle;


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public areEqual(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x500/X500Name;)Z
    .registers 7

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    return v2

    :cond_e
    move v0, v2

    :goto_f
    array-length v1, p1

    if-eq v0, v1, :cond_20

    aget-object v1, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {p0, v1, v3}, Lorg/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lorg/bouncycastle/asn1/x500/RDN;Lorg/bouncycastle/asn1/x500/RDN;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_20
    const/4 p1, 0x1

    return p1
.end method