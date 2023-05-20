.class public Lorg/bouncycastle/crypto/engines/ElGamalEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private bitSize:I

.field private forEncryption:Z

.field private key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    return v0

    :cond_b
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOutputBlockSize()I
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    return v0

    :cond_d
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_13

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_1b

    :cond_13
    check-cast p2, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p2

    :goto_1b
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    if-eqz p1, :cond_40

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    instance-of p1, p1, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    if-eqz p1, :cond_38

    goto :goto_46

    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ElGamalPublicKeyParameters are required for encryption."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    instance-of p1, p1, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    if-eqz p1, :cond_47

    :goto_46
    return-void

    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ElGamalPrivateKeyParameters are required for decryption."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BII)[B
    .registers 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    if-eqz v0, :cond_10b

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->forEncryption:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->bitSize:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->getInputBlockSize()I

    move-result v0

    :goto_15
    const-string v2, "input too large for ElGamal cipher.\n"

    if-gt p3, v0, :cond_105

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    instance-of v3, v3, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    const/4 v4, 0x0

    if-eqz v3, :cond_67

    div-int/lit8 p3, p3, 0x2

    new-array v2, p3, [B

    new-array p3, p3, [B

    array-length v3, v2

    invoke-static {p1, p2, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    add-int/2addr p2, v3

    array-length v3, p3

    invoke-static {p1, p2, p3, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    check-cast p3, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1, p3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1

    :cond_67
    if-nez p2, :cond_6c

    array-length v3, p1

    if-eq p3, v3, :cond_72

    :cond_6c
    new-array v3, p3, [B

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    :cond_72
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_ff

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    check-cast p1, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p3

    :cond_85
    :goto_85
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->random:Ljava/security/SecureRandom;

    invoke-static {p3, v2}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    sget-object v3, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_a0

    goto :goto_85

    :cond_a0
    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->key:Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElGamalEngine;->getOutputBlockSize()I

    move-result p3

    new-array p3, p3, [B

    array-length v0, p2

    array-length v2, p3

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_de

    array-length v0, p3

    div-int/lit8 v0, v0, 0x2

    array-length v2, p2

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    array-length v2, p2

    sub-int/2addr v2, v1

    invoke-static {p2, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e7

    :cond_de
    array-length v0, p3

    div-int/lit8 v0, v0, 0x2

    array-length v2, p2

    sub-int/2addr v0, v2

    array-length v2, p2

    invoke-static {p2, v4, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e7
    array-length p2, p1

    array-length v0, p3

    div-int/lit8 v0, v0, 0x2

    if-le p2, v0, :cond_f7

    array-length p2, p3

    array-length v0, p1

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v1, p3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_fe

    :cond_f7
    array-length p2, p3

    array-length v0, p1

    sub-int/2addr p2, v0

    array-length v0, p1

    invoke-static {p1, v4, p3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_fe
    return-object p3

    :cond_ff
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_105
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ElGamal engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
