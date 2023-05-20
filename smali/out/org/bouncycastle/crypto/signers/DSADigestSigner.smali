.class public Lorg/bouncycastle/crypto/signers/DSADigestSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# instance fields
.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final dsa:Lorg/bouncycastle/crypto/DSA;

.field private final encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

.field private forSigning:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    sget-object p1, Lorg/bouncycastle/crypto/signers/StandardDSAEncoding;->INSTANCE:Lorg/bouncycastle/crypto/signers/StandardDSAEncoding;

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/DSAExt;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/signers/DSAEncoding;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .registers 6

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v0

    :try_start_18
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {v1, v3, v2, v0}, Lorg/bouncycastle/crypto/signers/DSAEncoding;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to encode signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DSADigestSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getOrder()Ljava/math/BigInteger;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    instance-of v1, v0, Lorg/bouncycastle/crypto/DSAExt;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/bouncycastle/crypto/DSAExt;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/DSAExt;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_13

    :cond_10
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    :goto_13
    if-eqz p1, :cond_24

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Signing Requires Private Key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    :goto_24
    if-nez p1, :cond_35

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_35

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Verification Requires Public Key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    :goto_35
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .registers 7

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_12
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lorg/bouncycastle/crypto/signers/DSAEncoding;->decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    aget-object v3, p1, v2

    const/4 v4, 0x1

    aget-object p1, p1, v4

    invoke-interface {v1, v0, v3, p1}, Lorg/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_28

    return p1

    :catch_28
    return v2

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DSADigestSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
