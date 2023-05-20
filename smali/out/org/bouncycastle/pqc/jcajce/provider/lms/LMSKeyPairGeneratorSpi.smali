.class public Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# instance fields
.field private engine:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

.field private initialised:Z

.field private param:Lorg/bouncycastle/crypto/KeyGenerationParameters;

.field private random:Ljava/security/SecureRandom;

.field private treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "LMS"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 5

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_20

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/KeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->initialised:Z

    :cond_20
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    instance-of v1, v1, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;

    if-eqz v1, :cond_48

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    :cond_48
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "use AlgorithmParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;

    if-eqz v0, :cond_2a

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->getSigParams()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->getOtsParams()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)V

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/KeyGenerationParameters;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;-><init>()V

    :goto_1f
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    goto/16 :goto_b2

    :cond_2a
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/spec/LMSHSSKeyGenParameterSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/spec/LMSHSSKeyGenParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/LMSHSSKeyGenParameterSpec;->getLMSSpecs()[Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    :goto_38
    array-length v2, p1

    if-eq v1, v2, :cond_51

    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->getSigParams()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/jcajce/spec/LMSKeyGenParameterSpec;->getOtsParams()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_51
    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;-><init>([Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/KeyGenerationParameters;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyPairGenerator;-><init>()V

    goto :goto_1f

    :cond_5e
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;

    if-eqz v0, :cond_7e

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;->getSigParams()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;->getOtsParams()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)V

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/KeyGenerationParameters;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;-><init>()V

    goto :goto_1f

    :cond_7e
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/spec/LMSHSSParameterSpec;

    if-eqz v0, :cond_b6

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/spec/LMSHSSParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/LMSHSSParameterSpec;->getLMSSpecs()[Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    :goto_8b
    array-length v2, p1

    if-eq v1, v2, :cond_a4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;->getSigParams()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/jcajce/spec/LMSParameterSpec;->getOtsParams()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    :cond_a4
    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;-><init>([Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/KeyGenerationParameters;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyPairGenerator;-><init>()V

    goto/16 :goto_1f

    :goto_b2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyPairGeneratorSpi;->initialised:Z

    return-void

    :cond_b6
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a LMSParameterSpec/LMSHSSParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
