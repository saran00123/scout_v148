.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field transient xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->populateFromPubKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void
.end method

.method constructor <init>([B[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/Utils;->isValidPrefix([B[B)Z

    move-result p1

    const-string v1, "raw key data not recognised"

    if-eqz p1, :cond_2d

    array-length p1, p2

    sub-int/2addr p1, v0

    const/16 v2, 0x38

    if-ne p1, v2, :cond_1a

    new-instance p1, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;-><init>([BI)V

    :goto_17
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_26

    :cond_1a
    array-length p1, p2

    sub-int/2addr p1, v0

    const/16 v2, 0x20

    if-ne p1, v2, :cond_27

    new-instance p1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    goto :goto_17

    :goto_26
    return-void

    :cond_27
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private populateFromPubKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 4

    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    new-instance v0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;-><init>([BI)V

    goto :goto_2c

    :cond_1f
    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    :goto_2c
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->populateFromPubKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method engineGetKeyParameters()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Ljava/security/PublicKey;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Ljava/security/PublicKey;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    if-eqz v0, :cond_9

    const-string v0, "X448"

    goto :goto_b

    :cond_9
    const-string v0, "X25519"

    :goto_b
    return-object v0
.end method

.method public getEncoded()[B
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x448Prefix:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x38

    new-array v0, v0, [B

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x448Prefix:[B

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x448Prefix:[B

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v1, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x448Prefix:[B

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;->encode([BI)V

    return-object v0

    :cond_21
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x25519Prefix:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    new-array v0, v0, [B

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x25519Prefix:[B

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x25519Prefix:[B

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x25519Prefix:[B

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->encode([BI)V

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->xdhPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const-string v2, "Public Key"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/Utils;->keyToString(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
