.class public Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_8a

    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    const-wide v2, 0x80000000L

    mul-long/2addr v4, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_82

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x1

    :goto_2c
    if-gt v2, v0, :cond_7c

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->shared:[B

    array-length v5, v4

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    array-length v5, v4

    invoke-interface {v3, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    sub-int v3, p3, p2

    array-length v4, v1

    if-le v3, v4, :cond_76

    array-length v3, v1

    invoke-static {v1, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v1

    add-int/2addr p2, v3

    goto :goto_79

    :cond_76
    invoke-static {v1, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_7c
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return p3

    :cond_82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output length too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8a
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too small"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .registers 3

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    if-eqz v0, :cond_13

    check-cast p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->shared:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KDF parameters required for generator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
