.class public Lorg/bouncycastle/x509/X509CertPairStoreSelector;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field private certPair:Lorg/bouncycastle/x509/X509CertificatePair;

.field private forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

.field private reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    iput-object v1, v0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V

    :cond_16
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V

    :cond_23
    return-object v0
.end method

.method public getCertPair()Lorg/bouncycastle/x509/X509CertificatePair;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    return-object v0
.end method

.method public getForwardSelector()Lorg/bouncycastle/x509/X509CertStoreSelector;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-object v0
.end method

.method public getReverseSelector()Lorg/bouncycastle/x509/X509CertStoreSelector;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p1, Lorg/bouncycastle/x509/X509CertificatePair;

    if-nez v1, :cond_6

    return v0

    :cond_6
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/x509/X509CertificatePair;

    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v0

    :cond_1a
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1}, Lorg/bouncycastle/x509/X509CertificatePair;->getReverse()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v0

    :cond_2b
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/x509/X509CertificatePair;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_38

    return p1

    :cond_36
    const/4 p1, 0x1

    return p1

    :catch_38
    return v0
.end method

.method public setCertPair(Lorg/bouncycastle/x509/X509CertificatePair;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lorg/bouncycastle/x509/X509CertificatePair;

    return-void
.end method

.method public setForwardSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-void
.end method

.method public setReverseSelector(Lorg/bouncycastle/x509/X509CertStoreSelector;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-void
.end method
