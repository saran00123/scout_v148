.class public Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private final hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

.field private keyData:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_23

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1b

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    return-void

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "2n-digest needs to produce 64 bytes of output"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n-digest needs to produce 32 bytes of output"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static compute_authpath_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V
    .registers 30

    move-object/from16 v0, p4

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    const/16 v2, 0x800

    new-array v2, v2, [B

    const/16 v3, 0x400

    new-array v3, v3, [B

    const v4, 0x10c00

    new-array v12, v4, [B

    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_18
    iget-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v15, 0x20

    cmp-long v4, v4, v15

    const-wide/16 v17, 0x1

    if-gez v4, :cond_34

    iget-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long/2addr v4, v15

    long-to-int v4, v4

    move-object/from16 v11, p0

    move-object/from16 v5, p5

    invoke-static {v11, v3, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    iget-wide v6, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v6, v6, v17

    iput-wide v6, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_18

    :cond_34
    move-object/from16 v11, p0

    new-instance v19, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    iput-wide v13, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_3d
    iget-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    cmp-long v4, v4, v15

    const-wide/16 v20, 0x43

    if-gez v4, :cond_67

    iget-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v4, v4, v20

    mul-long/2addr v4, v15

    long-to-int v7, v4

    iget-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long/2addr v4, v15

    long-to-int v9, v4

    const/16 v20, 0x0

    move-object/from16 v4, v19

    move-object/from16 v5, p0

    move-object v6, v12

    move-object v8, v3

    move-object/from16 v10, p6

    move/from16 v11, v20

    invoke-virtual/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    iget-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v4, v4, v17

    iput-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move-object/from16 v11, p0

    goto :goto_3d

    :cond_67
    iput-wide v13, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_69
    iget-wide v3, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    cmp-long v3, v3, v15

    if-gez v3, :cond_8d

    const-wide/16 v3, 0x400

    iget-wide v5, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long/2addr v5, v15

    add-long/2addr v5, v3

    long-to-int v5, v5

    iget-wide v3, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v3, v3, v20

    mul-long/2addr v3, v15

    long-to-int v7, v3

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v6, v12

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    iget-wide v3, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v3, v3, v17

    iput-wide v3, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_69

    :cond_8d
    const/4 v1, 0x0

    const/16 v10, 0x20

    move v12, v1

    move v11, v10

    :goto_92
    if-lez v11, :cond_bc

    move v13, v1

    :goto_95
    if-ge v13, v11, :cond_b7

    ushr-int/lit8 v3, v11, 0x1

    mul-int/2addr v3, v10

    ushr-int/lit8 v4, v13, 0x1

    mul-int/2addr v4, v10

    add-int v5, v3, v4

    mul-int/lit8 v3, v11, 0x20

    mul-int/lit8 v4, v13, 0x20

    add-int v7, v3, v4

    add-int/lit8 v3, v12, 0x7

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v9, v3, 0x20

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v6, v2

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v13, v13, 0x2

    goto :goto_95

    :cond_b7
    add-int/lit8 v12, v12, 0x1

    ushr-int/lit8 v11, v11, 0x1

    goto :goto_92

    :cond_bc
    iget-wide v3, v0, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    long-to-int v0, v3

    move/from16 v3, p7

    move v4, v1

    :goto_c2
    if-ge v4, v3, :cond_d9

    ushr-int v5, v10, v4

    mul-int/2addr v5, v10

    ushr-int v6, v0, v4

    xor-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v10

    add-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x20

    add-int v6, p3, v6

    move-object/from16 v7, p2

    invoke-static {v2, v5, v7, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    :cond_d9
    move-object/from16 v4, p1

    invoke-static {v2, v10, v4, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static validate_authpath(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V
    .registers 21

    const/16 v0, 0x40

    new-array v0, v0, [B

    and-int/lit8 v1, p3, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x20

    if-eqz v1, :cond_23

    move v1, v8

    :goto_c
    if-ge v1, v9, :cond_17

    add-int/lit8 v2, v1, 0x20

    aget-byte v3, p2, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    move v1, v8

    :goto_18
    if-ge v1, v9, :cond_3b

    add-int v2, p5, v1

    aget-byte v2, p4, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_23
    move v1, v8

    :goto_24
    if-ge v1, v9, :cond_2d

    aget-byte v2, p2, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2d
    move v1, v8

    :goto_2e
    if-ge v1, v9, :cond_3b

    add-int/lit8 v2, v1, 0x20

    add-int v3, p5, v1

    aget-byte v3, p4, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3b
    add-int/lit8 v1, p5, 0x20

    move v11, v1

    move v10, v8

    move/from16 v1, p3

    :goto_41
    add-int/lit8 v2, p7, -0x1

    if-ge v10, v2, :cond_8c

    ushr-int/lit8 v12, v1, 0x1

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_68

    const/16 v3, 0x20

    const/4 v5, 0x0

    add-int/lit8 v1, v10, 0x7

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    move-object v1, p0

    move-object v2, v0

    move-object v4, v0

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    move v1, v8

    :goto_5d
    if-ge v1, v9, :cond_86

    add-int v2, v11, v1

    aget-byte v2, p4, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_68
    const/4 v3, 0x0

    const/4 v5, 0x0

    add-int/lit8 v1, v10, 0x7

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    move-object v1, p0

    move-object v2, v0

    move-object v4, v0

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    move v1, v8

    :goto_79
    if-ge v1, v9, :cond_86

    add-int/lit8 v2, v1, 0x20

    add-int v3, v11, v1

    aget-byte v3, p4, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_86
    add-int/lit8 v11, v11, 0x20

    add-int/lit8 v10, v10, 0x1

    move v1, v12

    goto :goto_41

    :cond_8c
    const/4 v3, 0x0

    const/4 v5, 0x0

    add-int/lit8 v1, p7, 0x7

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    return-void
.end method

.method private zerobytes([BII)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-eq v1, p3, :cond_b

    add-int v2, p2, v1

    aput-byte v0, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method


# virtual methods
.method crypto_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const v1, 0xa028

    new-array v11, v1, [B

    const/16 v12, 0x20

    new-array v13, v12, [B

    const/16 v1, 0x40

    new-array v14, v1, [B

    const/16 v15, 0x8

    new-array v1, v15, [J

    new-array v8, v12, [B

    new-array v7, v12, [B

    const/16 v6, 0x400

    new-array v5, v6, [B

    const/16 v4, 0x440

    new-array v3, v4, [B

    const/4 v2, 0x0

    move v15, v2

    :goto_25
    if-ge v15, v4, :cond_2e

    aget-byte v17, p3, v15

    aput-byte v17, v3, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_25

    :cond_2e
    const v15, 0xa008

    const/16 v4, 0x420

    invoke-static {v3, v4, v11, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v6, v6, [B

    invoke-interface {v4, v11, v15, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v12, v10

    invoke-interface {v4, v10, v2, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v4, v6, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/16 v4, 0x20

    invoke-direct {v0, v11, v15, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    move v4, v2

    :goto_50
    array-length v12, v1

    if-eq v4, v12, :cond_5e

    mul-int/lit8 v12, v4, 0x8

    invoke-static {v6, v12}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v20

    aput-wide v20, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_5e
    aget-wide v20, v1, v2

    const-wide v22, 0xfffffffffffffffL

    and-long v20, v20, v22

    const/16 v1, 0x10

    const/16 v4, 0x20

    invoke-static {v6, v1, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v12, 0x9be8

    invoke-static {v13, v2, v11, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    const/16 v1, 0xb

    iput v1, v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    move-object v15, v13

    const-wide/16 v12, 0x0

    iput-wide v12, v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    iput-wide v12, v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const v12, 0x9c08

    const/16 v13, 0x400

    invoke-static {v3, v4, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v4, 0xa008

    const/16 v18, 0x5

    move-object/from16 v1, p1

    move v13, v2

    move-object v2, v11

    move-object/from16 v23, v3

    move v3, v4

    const/16 v13, 0x440

    move/from16 v4, v18

    move-object/from16 v24, v5

    move-object/from16 v5, v23

    move-object/from16 v25, v7

    move-object v7, v11

    move-object/from16 v17, v8

    move v8, v12

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->treehash(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    const v2, 0x9be8

    invoke-interface {v1, v11, v2, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v2, v10

    const/4 v3, 0x0

    invoke-interface {v1, v10, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v14, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    const/16 v12, 0xc

    iput v12, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    const-wide/16 v26, 0x1f

    and-long v1, v20, v26

    long-to-int v1, v1

    int-to-long v1, v1

    iput-wide v1, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    ushr-long v1, v20, v18

    iput-wide v1, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 v1, 0x0

    const/16 v2, 0x20

    :goto_d3
    if-ge v1, v2, :cond_dc

    aget-byte v3, v15, v1

    aput-byte v3, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    :cond_dc
    move-object/from16 v7, v23

    move-object/from16 v8, v24

    const/16 v1, 0x400

    const/4 v3, 0x0

    invoke-static {v7, v2, v8, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    const/16 v3, 0x8

    :goto_e9
    if-ge v1, v3, :cond_fb

    add-int v4, v2, v1

    mul-int/lit8 v5, v1, 0x8

    ushr-long v5, v20, v5

    const-wide/16 v15, 0xff

    and-long/2addr v5, v15

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v11, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    :cond_fb
    const/16 v15, 0x28

    move-object/from16 v6, v25

    const/4 v1, 0x0

    invoke-static {v9, v6, v1, v7, v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;-><init>()V

    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v15

    move-object/from16 v4, v17

    move-object v5, v6

    move-object v13, v6

    move-object v6, v8

    move-object/from16 v28, v7

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->horst_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I

    move-result v1

    add-int/2addr v15, v1

    new-instance v14, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v14}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    move v7, v15

    const/4 v15, 0x0

    :goto_120
    if-ge v15, v12, :cond_165

    iput v15, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    move-object/from16 v6, v28

    const/4 v1, 0x0

    invoke-static {v9, v13, v1, v6, v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v11

    move v4, v7

    move-object/from16 v5, v17

    move-object/from16 v23, v6

    move-object v6, v13

    move v12, v7

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V

    add-int/lit16 v12, v12, 0x860

    const/16 v19, 0x5

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move v4, v12

    move-object v5, v10

    move-object/from16 v6, v23

    move-object/from16 v20, v8

    move/from16 v8, v19

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->compute_authpath_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V

    add-int/lit16 v7, v12, 0xa0

    iget-wide v1, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    and-long v1, v1, v26

    long-to-int v1, v1

    int-to-long v1, v1

    iput-wide v1, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    iget-wide v1, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    ushr-long v1, v1, v18

    iput-wide v1, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v20

    move-object/from16 v28, v23

    const/16 v12, 0xc

    goto :goto_120

    :cond_165
    move-object/from16 v1, v28

    const/16 v2, 0x440

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    return-object v11
.end method

.method public generateSignature([B)[B
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->crypto_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 3

    if-eqz p1, :cond_1e

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_15

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    goto :goto_26

    :cond_15
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    goto :goto_26

    :cond_1e
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    :goto_26
    return-void
.end method

.method verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z
    .registers 29

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    array-length v2, v1

    const/16 v3, 0x860

    new-array v11, v3, [B

    const/16 v12, 0x20

    new-array v15, v12, [B

    new-array v14, v12, [B

    const v4, 0xa028

    new-array v13, v4, [B

    const/16 v5, 0x420

    new-array v10, v5, [B

    if-ne v2, v4, :cond_d1

    const/16 v2, 0x40

    new-array v9, v2, [B

    const/4 v2, 0x0

    move v6, v2

    :goto_20
    if-ge v6, v5, :cond_29

    aget-byte v7, p4, v6

    aput-byte v7, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_29
    new-array v6, v12, [B

    move v7, v2

    :goto_2c
    if-ge v7, v12, :cond_35

    aget-byte v8, v1, v7

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_35
    invoke-static {v1, v2, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1, v6, v2, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v10, v2, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v4, v0

    invoke-interface {v1, v0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v1, v9, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v0, 0x0

    move-wide/from16 v16, v0

    move v0, v2

    :goto_4e
    const/16 v1, 0x8

    if-ge v0, v1, :cond_61

    add-int v1, v12, v0

    aget-byte v1, v13, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v4, v1

    xor-long v16, v16, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_61
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;-><init>()V

    const/16 v7, 0x28

    move-object/from16 v4, p1

    move-object v5, v14

    move-object v6, v13

    move-object v8, v10

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->horst_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I

    const/16 v0, 0x3428

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    move v9, v0

    move v0, v2

    move-wide/from16 v21, v16

    :goto_7b
    const/16 v4, 0xc

    if-ge v0, v4, :cond_bc

    move-object v4, v1

    move-object/from16 v5, p1

    move-object v6, v11

    move-object v7, v13

    move v8, v9

    move v2, v9

    move-object v9, v14

    move-object/from16 v23, v10

    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V

    add-int/2addr v2, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move-object v5, v15

    move-object v7, v11

    move-object/from16 v9, v23

    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    const-wide/16 v4, 0x1f

    and-long v4, v21, v4

    long-to-int v4, v4

    const/16 v20, 0x5

    move-object v5, v13

    move-object/from16 v13, p1

    move-object v6, v14

    move-object v7, v15

    move/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v2

    move-object/from16 v19, v23

    invoke-static/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->validate_authpath(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V

    const/4 v4, 0x5

    shr-long v21, v21, v4

    add-int/lit16 v9, v2, 0xa0

    add-int/lit8 v0, v0, 0x1

    move-object v13, v5

    move-object/from16 v10, v23

    const/4 v2, 0x0

    goto :goto_7b

    :cond_bc
    move-object/from16 v23, v10

    move-object v6, v14

    const/4 v0, 0x1

    move v2, v0

    const/4 v0, 0x0

    :goto_c2
    if-ge v0, v12, :cond_d0

    aget-byte v1, v6, v0

    add-int/lit16 v3, v0, 0x400

    aget-byte v3, v23, v3

    if-eq v1, v3, :cond_cd

    const/4 v2, 0x0

    :cond_cd
    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    :cond_d0
    return v2

    :cond_d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature wrong size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifySignature([B[B)Z
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z

    move-result p1

    return p1
.end method
