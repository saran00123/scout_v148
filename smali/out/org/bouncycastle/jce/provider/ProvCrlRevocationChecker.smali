.class Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getParamsPKIX()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getValidDate()Ljava/util/Date;

    move-result-object v3

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getSigningCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getWorkingPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_2c
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3a

    :cond_39
    move-object v0, p1

    :goto_3a
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v3

    invoke-direct {v1, p1, v0, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method public init(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "forward checking not supported"

    invoke-direct {p1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;->params:Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method
