.class public Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Lorg/bouncycastle/jce/interfaces/GOST3410Params;


# instance fields
.field private digestParamSetOID:Ljava/lang/String;

.field private encryptionParamSetOID:Ljava/lang/String;

.field private keyParamSetOID:Ljava/lang/String;

.field private keyParameters:Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410NamedParameters;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_1d

    :catch_d
    invoke-static {p1}, Lorg/bouncycastle/asn1/cryptopro/GOST3410NamedParameters;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410NamedParameters;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_39

    new-instance v1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410ParamSetParameters;->getA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParamSetOID:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    return-void

    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no key parameter set for passed in name/OID."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    sget-object p1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    return-void
.end method

.method public static fromPublicKeyAlg(Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;)Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDigestParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_24
    new-instance v0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDigestParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    check-cast p1, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    iget-object v2, p1, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    iget-object v2, p1, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    iget-object p1, p1, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    if-eq v0, p1, :cond_29

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    :cond_29
    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public getDigestParamSetOID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionParamSetOID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyParamSetOID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParamSetOID:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyParameters()Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->keyParameters:Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->digestParamSetOID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->encryptionParamSetOID:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    xor-int/2addr v0, v1

    return v0
.end method
