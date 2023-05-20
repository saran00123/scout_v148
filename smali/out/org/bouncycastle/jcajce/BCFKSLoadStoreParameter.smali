.class public Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
.super Lorg/bouncycastle/jcajce/BCLoadStoreParameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    }
.end annotation


# instance fields
.field private final certificates:[Ljava/security/cert/X509Certificate;

.field private final encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

.field private final macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

.field private final sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field private final sigKey:Ljava/security/Key;

.field private final storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

.field private final validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)V
    .registers 5

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->access$100(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->access$200(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->access$300(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->access$400(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/crypto/util/PBKDFConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->access$500(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->access$600(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->access$700(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->access$800(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/security/Key;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->sigKey:Ljava/security/Key;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->access$900(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->access$1000(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;-><init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)V

    return-void
.end method


# virtual methods
.method public getCertChainValidator()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    return-object v0
.end method

.method public getStoreCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->certificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getStoreEncryptionAlgorithm()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    return-object v0
.end method

.method public getStoreMacAlgorithm()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    return-object v0
.end method

.method public getStorePBKDFConfig()Lorg/bouncycastle/crypto/util/PBKDFConfig;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    return-object v0
.end method

.method public getStoreSignatureAlgorithm()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    return-object v0
.end method

.method public getStoreSignatureKey()Ljava/security/Key;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->sigKey:Ljava/security/Key;

    return-object v0
.end method
