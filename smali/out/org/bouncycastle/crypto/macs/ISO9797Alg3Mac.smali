.class public Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private mac:[B

.field private macSize:I

.field private padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 4

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_34

    instance-of v0, p1, Lorg/bouncycastle/crypto/engines/DESEngine;

    if-eqz v0, :cond_2c

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    return-void

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cipher must be instance of DESEngine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MAC size must be multiple of 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    :goto_b
    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ge v1, v0, :cond_30

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    goto :goto_b

    :cond_18
    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ne v1, v0, :cond_27

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    :cond_27
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    :cond_30
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    new-instance v0, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/engines/DESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v0, v1, v2, v1, v2}, Lorg/bouncycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/crypto/engines/DESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v0, v1, v2, v1, v2}, Lorg/bouncycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    iget p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "ISO9797Alg3"

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 8

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_14

    instance-of v1, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "params must be an instance of KeyParameter or ParametersWithIV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_23

    :cond_1a
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    :goto_23
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-ne v1, v3, :cond_3e

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v0, v2, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0, v4, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_56

    :cond_3e
    array-length v1, v0

    const/16 v5, 0x18

    if-ne v1, v5, :cond_72

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v0, v2, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0, v4, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/bouncycastle/crypto/params/KeyParameter;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/bouncycastle/crypto/params/KeyParameter;

    :goto_56
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x1

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    invoke-direct {v3, v1, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_71

    :cond_6c
    iget-object p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v2, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_71
    return-void

    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key must be either 112 or 168 bit long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iput v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 6

    iget v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v2, v1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .registers 10

    if-ltz p3, :cond_3a

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_2d

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v5, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_21
    if-le p3, v0, :cond_2d

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v1, p1, p2, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_21

    :cond_2d
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    return-void

    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
