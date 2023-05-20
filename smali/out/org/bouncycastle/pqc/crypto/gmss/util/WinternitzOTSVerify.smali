.class public Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
.super Ljava/lang/Object;


# instance fields
.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    return-void
.end method

.method private hashSignatureBlock([BII[BI)V
    .registers 8

    const/4 v0, 0x1

    if-ge p3, v0, :cond_9

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-interface {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :goto_10
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, p4, p5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_21

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-interface {p1, p4, p5, p2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_10

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public Verify([B[B)[B
    .registers 28

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v8, v1, [B

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    const/4 v9, 0x0

    invoke-interface {v1, v0, v9, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v8, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v2, v1, -0x1

    add-int/2addr v0, v2

    div-int v10, v0, v1

    shl-int v0, v10, v1

    const/4 v11, 0x1

    add-int/2addr v0, v11

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v12

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v1, v12, v0

    sub-int/2addr v1, v11

    div-int/2addr v1, v0

    add-int/2addr v1, v10

    iget v2, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v1, v2

    array-length v3, v7

    if-eq v1, v3, :cond_38

    const/4 v0, 0x0

    return-object v0

    :cond_38
    new-array v13, v1, [B

    const/16 v14, 0x8

    rem-int v1, v14, v0

    if-nez v1, :cond_a8

    div-int/2addr v14, v0

    shl-int v0, v11, v0

    add-int/lit8 v15, v0, -0x1

    move v0, v9

    move v1, v0

    move v5, v1

    :goto_48
    array-length v2, v8

    if-ge v5, v2, :cond_83

    move/from16 v16, v1

    move v4, v9

    :goto_4e
    if-ge v4, v14, :cond_7c

    aget-byte v1, v8, v5

    and-int/2addr v1, v15

    add-int v17, v0, v1

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v16, v0

    sub-int v3, v15, v1

    mul-int v18, v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v19, v4

    move-object v4, v13

    move/from16 v20, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    aget-byte v0, v8, v20

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v8, v20

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v4, v19, 0x1

    move/from16 v0, v17

    move/from16 v5, v20

    goto :goto_4e

    :cond_7c
    move/from16 v20, v5

    add-int/lit8 v5, v20, 0x1

    move/from16 v1, v16

    goto :goto_48

    :cond_83
    iget v2, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v10, v2

    sub-int/2addr v2, v0

    move v14, v1

    move v10, v2

    move v8, v9

    :goto_8b
    if-ge v8, v12, :cond_a5

    and-int v0, v10, v15

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v14, v1

    sub-int v3, v15, v0

    mul-int v5, v14, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v10, v0

    add-int/2addr v14, v11

    add-int/2addr v8, v0

    goto :goto_8b

    :cond_a5
    move v12, v9

    goto/16 :goto_26d

    :cond_a8
    if-ge v0, v14, :cond_17b

    div-int v5, v2, v0

    shl-int v0, v11, v0

    add-int/lit8 v4, v0, -0x1

    move v0, v9

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_b4
    if-ge v3, v5, :cond_119

    move/from16 v19, v0

    move v0, v9

    const-wide/16 v17, 0x0

    :goto_bb
    iget v15, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    if-ge v0, v15, :cond_d4

    aget-byte v15, v8, v19

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v16, v0, 0x3

    shl-int v15, v15, v16

    move/from16 p1, v10

    int-to-long v9, v15

    xor-long v17, v17, v9

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v10, p1

    const/4 v9, 0x0

    goto :goto_bb

    :cond_d4
    move/from16 p1, v10

    move v10, v2

    const/4 v9, 0x0

    :goto_d8
    if-ge v9, v14, :cond_109

    int-to-long v14, v4

    and-long v14, v17, v14

    long-to-int v0, v14

    add-int v14, v1, v0

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v10, v1

    sub-int v15, v4, v0

    mul-int v22, v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v23, v3

    move v3, v15

    move v15, v4

    move-object v4, v13

    move/from16 v24, v5

    move/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v17, v17, v0

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v1, v14

    move v4, v15

    move/from16 v3, v23

    move/from16 v5, v24

    const/16 v14, 0x8

    goto :goto_d8

    :cond_109
    move/from16 v23, v3

    move v15, v4

    move/from16 v24, v5

    add-int/lit8 v3, v23, 0x1

    move v2, v10

    move/from16 v0, v19

    const/4 v9, 0x0

    const/16 v14, 0x8

    move/from16 v10, p1

    goto :goto_b4

    :cond_119
    move v15, v4

    move/from16 p1, v10

    iget v3, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    iget v4, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    rem-int/2addr v3, v4

    move v4, v0

    const/4 v0, 0x0

    const-wide/16 v20, 0x0

    :goto_125
    if-ge v0, v3, :cond_135

    aget-byte v5, v8, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v9, v0, 0x3

    shl-int/2addr v5, v9

    int-to-long v9, v5

    xor-long v20, v20, v9

    add-int/2addr v4, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_125

    :cond_135
    shl-int/lit8 v8, v3, 0x3

    move v10, v2

    const/4 v9, 0x0

    :goto_139
    if-ge v9, v8, :cond_15a

    int-to-long v2, v15

    and-long v2, v20, v2

    long-to-int v0, v2

    add-int v14, v1, v0

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v10, v1

    sub-int v3, v15, v0

    mul-int v5, v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v20, v20, v0

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v0

    move v1, v14

    goto :goto_139

    :cond_15a
    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v0, p1, v0

    sub-int/2addr v0, v1

    move v9, v0

    const/4 v8, 0x0

    :goto_161
    if-ge v8, v12, :cond_26c

    and-int v0, v9, v15

    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v2, v10, v1

    sub-int v3, v15, v0

    mul-int v5, v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v9, v0

    add-int/2addr v10, v11

    add-int/2addr v8, v0

    goto :goto_161

    :cond_17b
    move/from16 p1, v10

    const/16 v1, 0x39

    if-ge v0, v1, :cond_26c

    shl-int/lit8 v1, v2, 0x3

    sub-int/2addr v1, v0

    shl-int v0, v11, v0

    sub-int/2addr v0, v11

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18c
    if-gt v3, v1, :cond_1e8

    ushr-int/lit8 v14, v3, 0x3

    rem-int/lit8 v15, v3, 0x8

    iget v9, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v3, v9

    add-int/lit8 v9, v3, 0x7

    ushr-int/lit8 v9, v9, 0x3

    const/4 v10, 0x0

    const-wide/16 v22, 0x0

    :goto_19c
    if-ge v14, v9, :cond_1b3

    aget-byte v11, v8, v14

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v24, v10, 0x3

    shl-int v11, v11, v24

    move/from16 v24, v12

    int-to-long v11, v11

    xor-long v22, v22, v11

    const/4 v11, 0x1

    add-int/2addr v10, v11

    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v24

    const/4 v11, 0x1

    goto :goto_19c

    :cond_1b3
    move/from16 v24, v12

    ushr-long v9, v22, v15

    int-to-long v11, v0

    and-long/2addr v9, v11

    int-to-long v14, v4

    add-long/2addr v14, v9

    long-to-int v4, v14

    iget v14, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v15, v5, v14

    move/from16 v22, v1

    const/4 v1, 0x0

    invoke-static {v7, v15, v2, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1c6
    cmp-long v14, v9, v11

    if-gez v14, :cond_1d9

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v2

    invoke-interface {v14, v2, v1, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v14, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v14, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v14, 0x1

    add-long/2addr v9, v14

    goto :goto_1c6

    :cond_1d9
    iget v9, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v10, v5, v9

    invoke-static {v2, v1, v13, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v22

    move/from16 v12, v24

    const/4 v11, 0x1

    goto :goto_18c

    :cond_1e8
    move/from16 v24, v12

    ushr-int/lit8 v1, v3, 0x3

    iget v9, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    if-ge v1, v9, :cond_232

    const/16 v9, 0x8

    rem-int/2addr v3, v9

    const/4 v9, 0x0

    const-wide/16 v20, 0x0

    :goto_1f6
    iget v10, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    if-ge v1, v10, :cond_209

    aget-byte v10, v8, v1

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v11, v9, 0x3

    shl-int/2addr v10, v11

    int-to-long v10, v10

    xor-long v20, v20, v10

    const/4 v11, 0x1

    add-int/2addr v9, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f6

    :cond_209
    ushr-long v8, v20, v3

    int-to-long v11, v0

    and-long/2addr v8, v11

    int-to-long v3, v4

    add-long/2addr v3, v8

    long-to-int v4, v3

    mul-int v1, v5, v10

    const/4 v3, 0x0

    invoke-static {v7, v1, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_216
    cmp-long v1, v8, v11

    if-gez v1, :cond_229

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v10, v2

    invoke-interface {v1, v2, v3, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    goto :goto_216

    :cond_229
    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v8, v5, v1

    invoke-static {v2, v3, v13, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    :cond_232
    iget v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v1, p1, v1

    sub-int/2addr v1, v4

    move v4, v1

    move/from16 v1, v24

    const/4 v3, 0x0

    :goto_23b
    if-ge v3, v1, :cond_26c

    and-int v8, v4, v0

    int-to-long v8, v8

    iget v10, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v11, v5, v10

    const/4 v12, 0x0

    invoke-static {v7, v11, v2, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_248
    int-to-long v10, v0

    cmp-long v10, v8, v10

    if-gez v10, :cond_25c

    iget-object v10, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v11, v2

    invoke-interface {v10, v2, v12, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v10, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v10, v2, v12}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_248

    :cond_25c
    const-wide/16 v10, 0x1

    iget v8, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v9, v5, v8

    invoke-static {v2, v12, v13, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v4, v8

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v8

    goto :goto_23b

    :cond_26c
    const/4 v12, 0x0

    :goto_26d
    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v1, v13

    invoke-interface {v0, v13, v12, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v0, v0, [B

    iget-object v1, v6, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v12}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

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

.method public getSignatureLength()I
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    shl-int/lit8 v1, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v1, v3

    div-int/2addr v1, v2

    shl-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
