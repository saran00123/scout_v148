.class public Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lorg/bouncycastle/crypto/PBEParametersGenerator;


# instance fields
.field private hMac:Lorg/bouncycastle/crypto/Mac;

.field private state:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    return-void
.end method

.method private F([BI[B[BI)V
    .registers 10

    if-eqz p2, :cond_47

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_b
    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object p3, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {p1, p3, v0}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length p3, p1

    invoke-static {p1, v0, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    :goto_1f
    if-ge p1, p2, :cond_46

    iget-object p3, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v1

    invoke-interface {p3, v1, v0, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {p3, v1, v0}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    move p3, v0

    :goto_31
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v1

    if-eq p3, v2, :cond_43

    add-int v2, p5, p3

    aget-byte v3, p4, v2

    aget-byte v1, v1, p3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p4, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_31

    :cond_43
    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    :cond_46
    return-void

    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "iteration count must be at least 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateDerivedKey(I)[B
    .registers 14

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    mul-int v3, p1, v0

    new-array v9, v3, [B

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v4, v3}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v3, 0x0

    move v10, v1

    move v11, v3

    :goto_20
    if-gt v10, p1, :cond_3d

    const/4 v3, 0x3

    :goto_23
    aget-byte v4, v2, v3

    add-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    if-nez v4, :cond_2e

    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    :cond_2e
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v5, p0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    move-object v3, p0

    move-object v6, v2

    move-object v7, v9

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([BI[B[BI)V

    add-int/2addr v11, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_3d
    return-object v9
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 5

    div-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 7

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
