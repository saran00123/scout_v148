.class public Lorg/bouncycastle/crypto/signers/PSSSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# static fields
.field public static final TRAILER_IMPLICIT:B = -0x44t


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private contentDigest:Lorg/bouncycastle/crypto/Digest;

.field private emBits:I

.field private hLen:I

.field private mDash:[B

.field private mgfDigest:Lorg/bouncycastle/crypto/Digest;

.field private mgfhLen:I

.field private random:Ljava/security/SecureRandom;

.field private sLen:I

.field private sSet:Z

.field private salt:[B

.field private trailer:B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V
    .registers 5

    const/16 v0, -0x44

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V
    .registers 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V
    .registers 11

    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    iput p4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    new-array p1, p4, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    add-int/lit8 p4, p4, 0x8

    iget p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr p4, p1

    new-array p1, p4, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iput-byte p5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V
    .registers 11

    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    array-length p1, p4

    iput p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    iput-object p4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    add-int/lit8 p1, p1, 0x8

    iget p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iput-byte p5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V
    .registers 10

    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V

    return-void
.end method

.method private ItoOSP(I[B)V
    .registers 6

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, p2, v2

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, p2, v2

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput-byte p1, p2, v0

    return-void
.end method

.method private clearBlock([B)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p1

    if-eq v1, v2, :cond_a

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .registers 12

    new-array v0, p4, [B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->reset()V

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    div-int v6, p4, v5

    if-ge v4, v6, :cond_33

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v5, v2, v3, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int v6, v4, v5

    invoke-static {v1, v3, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_33
    mul-int/2addr v5, v4

    if-ge v5, p4, :cond_53

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    iget-object p4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    array-length p2, v2

    invoke-interface {p1, v2, v3, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int p2, v4, p1

    array-length p3, v0

    mul-int/2addr v4, p1

    sub-int/2addr p3, v4

    invoke-static {v1, v3, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_53
    return-object v0
.end method


# virtual methods
.method public generateSignature()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_1e
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v0, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v3

    invoke-interface {v2, v3, v1, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v3, v4

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    aput-byte v5, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    array-length v7, v2

    sub-int/2addr v7, v4

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    invoke-static {v3, v1, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    move v3, v1

    :goto_5e
    array-length v4, v2

    if-eq v3, v4, :cond_6e

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v6, v4, v3

    aget-byte v7, v2, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_6e
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xff

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x8

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v3, v4

    ushr-int/2addr v0, v3

    aget-byte v3, v2, v1

    and-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    array-length v0, v2

    sub-int/2addr v0, v5

    iget-byte v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    aput-byte v3, v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_12

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_1b

    :cond_12
    if-eqz p1, :cond_1a

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    :cond_1a
    move-object v1, p2

    :goto_1b
    instance-of v0, v1, Lorg/bouncycastle/crypto/params/RSABlindingParameters;

    if-eqz v0, :cond_2b

    check-cast v1, Lorg/bouncycastle/crypto/params/RSABlindingParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_33

    :cond_2b
    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p2, p1, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_33
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/lit8 p2, p2, 0x8

    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x9

    if-lt p1, p2, :cond_5a

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->reset()V

    return-void

    :cond_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key too small for specified hash and salt lengths"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .registers 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v0, 0x0

    :try_start_f
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    invoke-static {v1, v0, v2, v0}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_f6

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v1, v2

    const/16 v2, 0xff

    ushr-int v1, v2, v1

    aget-byte v3, p1, v0

    and-int/2addr v2, v3

    aget-byte v3, p1, v0

    and-int/2addr v3, v1

    if-ne v2, v3, :cond_f1

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p1, v2

    iget-byte v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    if-eq v2, v4, :cond_4a

    goto/16 :goto_f1

    :cond_4a
    array-length v2, p1

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    array-length v5, p1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    invoke-direct {p0, p1, v2, v4, v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object p1

    move v2, v0

    :goto_57
    array-length v4, p1

    if-eq v2, v4, :cond_67

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v2

    aget-byte v6, p1, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_67
    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v2, p1, v0

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    move p1, v0

    :goto_70
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v1

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v4

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x2

    if-eq p1, v2, :cond_88

    aget-byte v2, v1, p1

    if-eqz v2, :cond_85

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return v0

    :cond_85
    add-int/lit8 p1, p1, 0x1

    goto :goto_70

    :cond_88
    array-length p1, v1

    sub-int/2addr p1, v4

    sub-int/2addr p1, v5

    add-int/lit8 p1, p1, -0x2

    aget-byte p1, v1, p1

    if-eq p1, v3, :cond_95

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return v0

    :cond_95
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-static {p1, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_ae

    :cond_a3
    array-length p1, v1

    sub-int/2addr p1, v5

    sub-int/2addr p1, v4

    sub-int/2addr p1, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v2

    sub-int/2addr v4, v5

    invoke-static {v1, p1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_ae
    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v1

    invoke-interface {p1, v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v1

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v4

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length p1, p1

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    :goto_cc
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v1

    if-eq v2, v4, :cond_e8

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v4, v4, p1

    aget-byte v5, v1, v2

    xor-int/2addr v4, v5

    if-eqz v4, :cond_e3

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return v0

    :cond_e3
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_cc

    :cond_e8
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return v3

    :cond_f1
    :goto_f1
    iget-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    :catch_f6
    return v0
.end method
