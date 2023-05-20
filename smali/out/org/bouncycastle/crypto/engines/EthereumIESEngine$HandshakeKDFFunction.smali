.class public Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DigestDerivationFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/EthereumIESEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandshakeKDFFunction"
.end annotation


# instance fields
.field private counterStart:I

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method public constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->counterStart:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_7f

    int-to-long v0, p3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    const-wide v3, 0x1ffffffffL

    cmp-long v3, v0, v3

    if-gtz v3, :cond_77

    int-to-long v3, v2

    add-long v5, v0, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    div-long/2addr v5, v3

    long-to-int v3, v5

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    const/4 v5, 0x4

    new-array v5, v5, [B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->counterStart:I

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v6, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->counterStart:I

    and-int/lit16 v6, v6, -0x100

    move v8, v6

    move v6, p2

    move p2, v7

    :goto_34
    if-ge p2, v3, :cond_70

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v10, v5

    invoke-interface {v9, v5, v7, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->shared:[B

    array-length v11, v10

    invoke-interface {v9, v10, v7, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->iv:[B

    if-eqz v9, :cond_4e

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v11, v9

    invoke-interface {v10, v9, v7, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_4e
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v4, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-le p3, v2, :cond_5b

    invoke-static {v4, v7, p1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v2

    sub-int/2addr p3, v2

    goto :goto_5e

    :cond_5b
    invoke-static {v4, v7, p1, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5e
    const/4 v9, 0x3

    aget-byte v10, v5, v9

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    if-nez v10, :cond_6d

    add-int/lit16 v8, v8, 0x100

    invoke-static {v8, v5, v7}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_6d
    add-int/lit8 p2, p2, 0x1

    goto :goto_34

    :cond_70
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    long-to-int p1, v0

    return p1

    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output length too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7f
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too small"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .registers 3

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    if-eqz v0, :cond_13

    check-cast p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->shared:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->iv:[B

    goto :goto_22

    :cond_13
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v0, :cond_23

    check-cast p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->shared:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/EthereumIESEngine$HandshakeKDFFunction;->iv:[B

    :goto_22
    return-void

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KDF parameters required for generator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
