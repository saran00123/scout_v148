.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;


# instance fields
.field private final encoding:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B[B)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V

    iput-object p7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v0}, Ljava/security/cert/CertificateEncodingException;-><init>()V

    throw v0
.end method
