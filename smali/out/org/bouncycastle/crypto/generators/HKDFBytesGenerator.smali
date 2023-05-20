.class public Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private currentT:[B

.field private generatedBytes:I

.field private hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

.field private hashLen:I

.field private info:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    return-void
.end method

.method private expandNext()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    div-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x100

    if-ge v2, v3, :cond_2c

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    invoke-virtual {v0, v4, v3, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    :cond_16
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    array-length v4, v1

    invoke-virtual {v0, v1, v3, v4}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    int-to-byte v1, v2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    invoke-virtual {v0, v1, v3}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    return-void

    :cond_2c
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "HKDF cannot generate more than 255 blocks of HashLen size"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private extract([B[B)Lorg/bouncycastle/crypto/params/KeyParameter;
    .registers 5

    if-nez p1, :cond_11

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    :goto_1b
    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array p1, p1, [B

    iget-object p2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p2, p1, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    new-instance p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {p2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object p2
.end method


# virtual methods
.method public generateBytes([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int v1, v0, p3

    iget v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    mul-int/lit16 v3, v2, 0xff

    if-gt v1, v3, :cond_42

    rem-int/2addr v0, v2

    if-nez v0, :cond_10

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->expandNext()V

    :cond_10
    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    rem-int v2, v0, v1

    rem-int/2addr v0, v1

    sub-int/2addr v1, v0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    sub-int v1, p3, v0

    :goto_28
    add-int/2addr p2, v0

    if-lez v1, :cond_41

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->expandNext()V

    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    sub-int/2addr v1, v0

    goto :goto_28

    :cond_41
    return p3

    :cond_42
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "HKDF may only be used for 255 * HashLen bytes of output"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getUnderlyingDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .registers 5

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/HKDFParameters;

    if-eqz v0, :cond_39

    check-cast p1, Lorg/bouncycastle/crypto/params/HKDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExtract()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getIKM()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_26

    :cond_18
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getSalt()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getIKM()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->extract([B[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v1

    :goto_26
    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getInfo()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget p1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    return-void

    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HKDF parameters required for HKDFBytesGenerator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
