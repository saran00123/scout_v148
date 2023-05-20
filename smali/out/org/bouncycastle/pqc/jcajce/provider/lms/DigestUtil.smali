.class Lorg/bouncycastle/pqc/jcajce/provider/lms/DigestUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDigestResult(Lorg/bouncycastle/crypto/Digest;)[B
    .registers 4

    invoke-static {p0}, Lorg/bouncycastle/pqc/jcajce/provider/lms/DigestUtil;->getDigestSize(Lorg/bouncycastle/crypto/Digest;)I

    move-result v0

    new-array v0, v0, [B

    instance-of v1, p0, Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    check-cast p0, Lorg/bouncycastle/crypto/Xof;

    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_15

    :cond_12
    invoke-interface {p0, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :goto_15
    return-object v0
.end method

.method public static getDigestSize(Lorg/bouncycastle/crypto/Digest;)I
    .registers 2

    instance-of v0, p0, Lorg/bouncycastle/crypto/Xof;

    if-eqz v0, :cond_b

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_b
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    return p0
.end method

.method public static getXMSSDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "SHA256"

    return-object p0

    :cond_b
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "SHA512"

    return-object p0

    :cond_16
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "SHAKE128"

    return-object p0

    :cond_21
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "SHAKE256"

    return-object p0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized digest OID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
