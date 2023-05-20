.class public Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
.super Ljava/lang/Object;


# instance fields
.field private checksumsize:I

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[[B

.field private w:I


# direct methods
.method public constructor <init>([BLorg/bouncycastle/crypto/Digest;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance p2, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p2, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 p2, p2, 0x3

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p2, p3

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    shl-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getLog(I)I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p3

    add-int/2addr p2, v0

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    new-array p2, p2, [[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array p2, p2, [B

    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_47
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v0, p1, :cond_58

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {p3, p2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object p3

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_58
    return-void
.end method

.method private hashPrivateKeyBlock(II[BI)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_e

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object p1, p2, p1

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {p1, v0, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    :cond_e
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object p1, v2, p1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-interface {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :goto_19
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, p3, p4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2a

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-interface {p1, p3, p4, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_19

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public getLog(I)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    :goto_2
    if-ge v1, p1, :cond_9

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return v0
.end method

.method public getPrivateKey()[[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    return-object v0
.end method

.method public getPublicKey()[B
    .registers 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_10
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v3, v5, :cond_1d

    invoke-direct {p0, v3, v1, v0, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1d
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public getSignature([B)[B
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    new-array v3, v3, [B

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v1

    const/4 v6, 0x0

    invoke-interface {v4, v1, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v3, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v4, 0x8

    rem-int v5, v4, v1

    const/4 v7, 0x1

    if-nez v5, :cond_63

    div-int/2addr v4, v1

    shl-int v1, v7, v1

    sub-int/2addr v1, v7

    move v5, v6

    move v8, v5

    move v9, v8

    :goto_29
    array-length v10, v3

    if-ge v5, v10, :cond_4b

    move v10, v8

    move v8, v6

    :goto_2e
    if-ge v8, v4, :cond_47

    aget-byte v11, v3, v5

    and-int/2addr v11, v1

    add-int/2addr v10, v11

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v12, v9

    invoke-direct {v0, v9, v11, v2, v12}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    aget-byte v11, v3, v5

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v5

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_47
    add-int/lit8 v5, v5, 0x1

    move v8, v10

    goto :goto_29

    :cond_4b
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v3, v4

    sub-int/2addr v3, v8

    :goto_51
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v6, v4, :cond_1d2

    and-int v4, v3, v1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v5, v9

    invoke-direct {v0, v9, v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v3, v4

    add-int/2addr v9, v7

    add-int/2addr v6, v4

    goto :goto_51

    :cond_63
    if-ge v1, v4, :cond_e8

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    div-int/2addr v5, v1

    shl-int v1, v7, v1

    sub-int/2addr v1, v7

    move v10, v6

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_6f
    if-ge v10, v5, :cond_a1

    move/from16 v16, v11

    const-wide/16 v14, 0x0

    move v11, v6

    :goto_76
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    if-ge v11, v8, :cond_88

    aget-byte v8, v3, v16

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v11, 0x3

    shl-int/2addr v8, v9

    int-to-long v8, v8

    xor-long/2addr v14, v8

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_76

    :cond_88
    move v8, v6

    :goto_89
    if-ge v8, v4, :cond_9c

    long-to-int v9, v14

    and-int/2addr v9, v1

    add-int/2addr v13, v9

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v11, v12

    invoke-direct {v0, v12, v9, v2, v11}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v14, v9

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    :cond_9c
    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v16

    goto :goto_6f

    :cond_a1
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    rem-int/2addr v4, v5

    move v5, v6

    const-wide/16 v17, 0x0

    :goto_a9
    if-ge v5, v4, :cond_b9

    aget-byte v8, v3, v11

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v5, 0x3

    shl-int/2addr v8, v9

    int-to-long v8, v8

    xor-long v17, v17, v8

    add-int/2addr v11, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    :cond_b9
    shl-int/lit8 v3, v4, 0x3

    move v4, v6

    move-wide/from16 v8, v17

    :goto_be
    if-ge v4, v3, :cond_d0

    long-to-int v5, v8

    and-int/2addr v5, v1

    add-int/2addr v13, v5

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v10, v12

    invoke-direct {v0, v12, v5, v2, v10}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v8, v5

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v4, v5

    goto :goto_be

    :cond_d0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v3, v4

    sub-int/2addr v3, v13

    :goto_d6
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v6, v4, :cond_1d2

    and-int v4, v3, v1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v5, v12

    invoke-direct {v0, v12, v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v3, v4

    add-int/2addr v12, v7

    add-int/2addr v6, v4

    goto :goto_d6

    :cond_e8
    const/16 v5, 0x39

    if-ge v1, v5, :cond_1d2

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v8, v5, 0x3

    sub-int/2addr v8, v1

    shl-int v1, v7, v1

    sub-int/2addr v1, v7

    new-array v5, v5, [B

    move v9, v6

    move v10, v9

    move v11, v10

    :goto_f9
    if-gt v9, v8, :cond_14c

    ushr-int/lit8 v14, v9, 0x3

    rem-int/lit8 v15, v9, 0x8

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v9, v4

    add-int/lit8 v4, v9, 0x7

    ushr-int/lit8 v4, v4, 0x3

    move/from16 v16, v6

    const-wide/16 v19, 0x0

    :goto_10a
    if-ge v14, v4, :cond_11b

    aget-byte v12, v3, v14

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v13, v16, 0x3

    shl-int/2addr v12, v13

    int-to-long v12, v12

    xor-long v19, v19, v12

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_10a

    :cond_11b
    ushr-long v12, v19, v15

    int-to-long v14, v1

    and-long/2addr v12, v14

    int-to-long v14, v11

    add-long/2addr v14, v12

    long-to-int v11, v14

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v4, v4, v10

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v4, v6, v5, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_12b
    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-lez v4, :cond_140

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v14, v5

    invoke-interface {v4, v5, v6, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v5, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    goto :goto_12b

    :cond_140
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v12, v10, v4

    invoke-static {v5, v6, v2, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    const/16 v4, 0x8

    goto :goto_f9

    :cond_14c
    ushr-int/lit8 v4, v9, 0x3

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v4, v8, :cond_195

    const/16 v8, 0x8

    rem-int/2addr v9, v8

    move v8, v6

    const-wide/16 v12, 0x0

    :goto_158
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v4, v14, :cond_169

    aget-byte v14, v3, v4

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v15, v8, 0x3

    shl-int/2addr v14, v15

    int-to-long v14, v14

    xor-long/2addr v12, v14

    add-int/2addr v8, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_158

    :cond_169
    ushr-long v3, v12, v9

    int-to-long v7, v1

    and-long/2addr v3, v7

    int-to-long v7, v11

    add-long/2addr v7, v3

    long-to-int v11, v7

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v10

    invoke-static {v7, v6, v5, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_177
    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_18c

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v8, v5

    invoke-interface {v7, v5, v6, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v5, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    goto :goto_177

    :cond_18c
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v4, v10, v3

    invoke-static {v5, v6, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    :cond_195
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v3, v4

    sub-int/2addr v3, v11

    move v4, v3

    move v3, v6

    :goto_19d
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v3, v7, :cond_1d2

    and-int v7, v4, v1

    int-to-long v7, v7

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v9, v9, v10

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v9, v6, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v11, 0x0

    :goto_1af
    cmp-long v9, v7, v11

    if-lez v9, :cond_1c2

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v13, v5

    invoke-interface {v9, v5, v6, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v5, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v13, 0x1

    sub-long/2addr v7, v13

    goto :goto_1af

    :cond_1c2
    const-wide/16 v13, 0x1

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v8, v10, v7

    invoke-static {v5, v6, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v7

    goto :goto_19d

    :cond_1d2
    return-object v2
.end method
