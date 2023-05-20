.class public Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field private rand:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/RFC3211Wrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    const-string v1, "RFC3211Wrap requires an IV"

    if-eqz v0, :cond_27

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    instance-of p1, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_21

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_37

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    if-eqz p1, :cond_2f

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    :cond_2f
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_38

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    :goto_37
    return-void

    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unwrap([BII)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    if-nez v0, :cond_ad

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    if-lt p3, v1, :cond_a5

    new-array v1, p3, [B

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, v2

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, v3, p2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    move p1, v0

    :goto_2b
    array-length p2, v1

    if-ge p1, p2, :cond_35

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p2, v1, p1, v1, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr p1, v0

    goto :goto_2b

    :cond_35
    array-length p1, v1

    array-length p2, v2

    sub-int/2addr p1, p2

    array-length p2, v2

    invoke-static {v1, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p3

    invoke-direct {p2, p3, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {p1, v3, p2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p1, v1, v3, v1, v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1, v3, p2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    move p1, v3

    :goto_59
    array-length p2, v1

    if-ge p1, p2, :cond_63

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p2, v1, p1, v1, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr p1, v0

    goto :goto_59

    :cond_63
    aget-byte p1, v1, v3

    and-int/lit16 p1, p1, 0xff

    array-length p2, v1

    const/4 p3, 0x4

    sub-int/2addr p2, p3

    const/4 v0, 0x1

    if-le p1, p2, :cond_6f

    move p1, v0

    goto :goto_70

    :cond_6f
    move p1, v3

    :goto_70
    if-eqz p1, :cond_75

    array-length p2, v1

    sub-int/2addr p2, p3

    goto :goto_79

    :cond_75
    aget-byte p2, v1, v3

    and-int/lit16 p2, p2, 0xff

    :goto_79
    new-array p2, p2, [B

    array-length v2, p2

    invoke-static {v1, p3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p3, v3

    move v2, p3

    :goto_81
    const/4 v4, 0x3

    if-eq p3, v4, :cond_92

    add-int/lit8 v4, p3, 0x1

    aget-byte v5, v1, v4

    not-int v5, v5

    int-to-byte v5, v5

    add-int/lit8 p3, p3, 0x4

    aget-byte p3, v1, p3

    xor-int/2addr p3, v5

    or-int/2addr v2, p3

    move p3, v4

    goto :goto_81

    :cond_92
    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    if-eqz v2, :cond_98

    goto :goto_99

    :cond_98
    move v0, v3

    :goto_99
    or-int/2addr p1, v0

    if-nez p1, :cond_9d

    return-object p2

    :cond_9d
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "wrapped key corrupted"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a5
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "input too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ad
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for unwrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wrap([BII)[B
    .registers 10

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_75

    const/16 v0, 0xff

    if-gt p3, v0, :cond_6d

    if-ltz p3, :cond_6d

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    add-int/lit8 v1, p3, 0x4

    mul-int/lit8 v3, v0, 0x2

    if-ge v1, v3, :cond_21

    :goto_1e
    new-array v3, v3, [B

    goto :goto_2c

    :cond_21
    rem-int v3, v1, v0

    if-nez v3, :cond_27

    move v3, v1

    goto :goto_1e

    :cond_27
    div-int v3, v1, v0

    add-int/2addr v3, v2

    mul-int/2addr v3, v0

    goto :goto_1e

    :goto_2c
    int-to-byte v4, p3

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v4, 0x4

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v3

    sub-int/2addr p1, v1

    new-array p1, p1, [B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    invoke-virtual {p2, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length p2, p1

    invoke-static {p1, v5, v3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p1, v3, v4

    not-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v3, v2

    const/4 p1, 0x5

    aget-byte p1, v3, p1

    not-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x2

    aput-byte p1, v3, p2

    const/4 p1, 0x3

    const/4 p2, 0x6

    aget-byte p2, v3, p2

    not-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, v3, p1

    move p1, v5

    :goto_58
    array-length p2, v3

    if-ge p1, p2, :cond_62

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p2, v3, p1, v3, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr p1, v0

    goto :goto_58

    :cond_62
    :goto_62
    array-length p1, v3

    if-ge v5, p1, :cond_6c

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p1, v3, v5, v3, v5}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v5, v0

    goto :goto_62

    :cond_6c
    return-object v3

    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input must be from 0 to 255 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not set for wrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
