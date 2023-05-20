.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;
.super Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi$McElieceFujisaki;
    }
.end annotation


# instance fields
.field private buf:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected decryptOutputSize(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public doFinal([BII)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->update([BII)[B

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->opMode:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1a

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messageEncrypt([B)[B

    move-result-object p1

    return-object p1

    :cond_1a
    iget p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->opMode:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_31

    :try_start_1f
    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messageDecrypt([B)[B

    move-result-object p1
    :try_end_25
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1f .. :try_end_25} :catch_26

    return-object p1

    :catch_26
    move-exception p1

    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown mode in doFinal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected encryptOutputSize(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getKeySize(Ljava/security/Key;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    goto :goto_11

    :cond_b
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    :goto_11
    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->getKeySize(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "McElieceFujisakiCipher"

    return-object v0
.end method

.method protected initCipherDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected initCipherEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {p2, p1, p3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public update([BII)[B
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceFujisakiCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method
