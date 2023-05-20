.class public Lorg/bouncycastle/x509/CertPathReviewerException;
.super Lorg/bouncycastle/i18n/LocalizedException;


# instance fields
.field private certPath:Ljava/security/cert/CertPath;

.field private index:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    if-eqz p3, :cond_24

    if-eq p4, p1, :cond_24

    if-lt p4, p1, :cond_1e

    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p4, p1, :cond_1e

    iput-object p3, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    iput p4, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    return-void

    :cond_1e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/bouncycastle/i18n/LocalizedException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    if-eqz p2, :cond_24

    if-eq p3, p1, :cond_24

    if-lt p3, p1, :cond_1e

    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_1e

    iput-object p2, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    iput p3, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    return-void

    :cond_1e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/x509/CertPathReviewerException;->index:I

    return v0
.end method
