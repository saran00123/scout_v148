.class public Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;
.super Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;


# static fields
.field private static final EK_d:[B

.field private static final EK_d128:[B

.field private static final EK_d32:[B

.field private static final EK_d64:[B


# instance fields
.field private theD:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_20

    sput-object v1, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2c

    sput-object v1, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d32:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_38

    sput-object v1, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d64:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_44

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d128:[B

    return-void

    nop

    :array_20
    .array-data 1
        0x22t
        0x2ft
        0x24t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_2c
    .array-data 1
        0x22t
        0x2ft
        0x25t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_38
    .array-data 1
        0x23t
        0x2ft
        0x24t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_44
    .array-data 1
        0x23t
        0x2ft
        0x25t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>()V

    const/16 v0, 0x20

    if-eq p1, v0, :cond_30

    const/16 v0, 0x40

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x80

    if-ne p1, v0, :cond_14

    sget-object p1, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d128:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    goto :goto_34

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    sget-object p1, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d64:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    goto :goto_34

    :cond_30
    sget-object p1, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d32:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    :goto_34
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;)V

    return-void
.end method

.method private static MAKEU31(BBBB)I
    .registers 4

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x17

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;)V

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "Zuc-256"

    return-object v0
.end method

.method protected getMaxIterations()I
    .registers 2

    const/16 v0, 0x271

    return v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->reset(Lorg/bouncycastle/util/Memoable;)V

    iget-object p1, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    return-void
.end method

.method protected setKeyAndIV([I[B[B)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_1b1

    array-length v3, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1b1

    if-eqz v2, :cond_1a9

    array-length v3, v2

    const/16 v4, 0x19

    if-ne v3, v4, :cond_1a9

    const/4 v3, 0x0

    aget-byte v4, v1, v3

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v5, v5, v3

    const/16 v6, 0x15

    aget-byte v6, v1, v6

    const/16 v7, 0x10

    aget-byte v7, v1, v7

    invoke-static {v4, v5, v6, v7}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v4

    aput v4, p1, v3

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v6, v6, v4

    const/16 v7, 0x16

    aget-byte v7, v1, v7

    const/16 v8, 0x11

    aget-byte v8, v1, v8

    invoke-static {v5, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v5

    aput v5, p1, v4

    const/4 v5, 0x2

    aget-byte v6, v1, v5

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v7, v7, v5

    const/16 v8, 0x17

    aget-byte v8, v1, v8

    const/16 v9, 0x12

    aget-byte v9, v1, v9

    invoke-static {v6, v7, v8, v9}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v6

    aput v6, p1, v5

    const/4 v6, 0x3

    aget-byte v7, v1, v6

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v8, v8, v6

    const/16 v9, 0x18

    aget-byte v9, v1, v9

    const/16 v10, 0x13

    aget-byte v10, v1, v10

    invoke-static {v7, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v7

    aput v7, p1, v6

    const/4 v7, 0x4

    aget-byte v8, v1, v7

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v9, v9, v7

    const/16 v10, 0x19

    aget-byte v10, v1, v10

    const/16 v11, 0x14

    aget-byte v11, v1, v11

    invoke-static {v8, v9, v10, v11}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v8

    aput v8, p1, v7

    aget-byte v3, v2, v3

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/4 v9, 0x5

    aget-byte v8, v8, v9

    const/16 v10, 0x11

    aget-byte v10, v2, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aget-byte v10, v1, v9

    const/16 v11, 0x1a

    aget-byte v11, v1, v11

    invoke-static {v3, v8, v10, v11}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v9

    aget-byte v3, v2, v4

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/4 v8, 0x6

    aget-byte v4, v4, v8

    const/16 v10, 0x12

    aget-byte v10, v2, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v4, v10

    int-to-byte v4, v4

    aget-byte v10, v1, v8

    const/16 v11, 0x1b

    aget-byte v11, v1, v11

    invoke-static {v3, v4, v10, v11}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v8

    const/16 v3, 0xa

    aget-byte v4, v2, v3

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/4 v11, 0x7

    aget-byte v10, v10, v11

    const/16 v12, 0x13

    aget-byte v12, v2, v12

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v10, v12

    int-to-byte v10, v10

    aget-byte v12, v1, v11

    aget-byte v5, v2, v5

    invoke-static {v4, v10, v12, v5}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v4

    aput v4, p1, v11

    const/16 v4, 0x8

    aget-byte v5, v1, v4

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v10, v10, v4

    const/16 v12, 0x14

    aget-byte v12, v2, v12

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v10, v12

    int-to-byte v10, v10

    aget-byte v6, v2, v6

    const/16 v12, 0xb

    aget-byte v13, v2, v12

    invoke-static {v5, v10, v6, v13}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v5

    aput v5, p1, v4

    const/16 v5, 0x9

    aget-byte v6, v1, v5

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v10, v10, v5

    const/16 v13, 0x15

    aget-byte v13, v2, v13

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v10, v13

    int-to-byte v10, v10

    const/16 v13, 0xc

    aget-byte v14, v2, v13

    aget-byte v15, v2, v7

    invoke-static {v6, v10, v14, v15}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v6

    aput v6, p1, v5

    aget-byte v6, v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v9, v9, v3

    const/16 v10, 0x16

    aget-byte v10, v2, v10

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aget-byte v10, v1, v3

    const/16 v14, 0x1c

    aget-byte v14, v1, v14

    invoke-static {v6, v9, v10, v14}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v6

    aput v6, p1, v3

    aget-byte v3, v1, v12

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v6, v6, v12

    const/16 v9, 0x17

    aget-byte v9, v2, v9

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aget-byte v8, v2, v8

    const/16 v9, 0xd

    aget-byte v9, v2, v9

    invoke-static {v3, v6, v8, v9}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v12

    aget-byte v3, v1, v13

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v6, v6, v13

    const/16 v8, 0x18

    aget-byte v8, v2, v8

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aget-byte v8, v2, v11

    const/16 v9, 0xe

    aget-byte v9, v2, v9

    invoke-static {v3, v6, v8, v9}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v13

    const/16 v3, 0xd

    const/16 v6, 0xd

    aget-byte v6, v1, v6

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/16 v9, 0xd

    aget-byte v8, v8, v9

    const/16 v9, 0xf

    aget-byte v10, v2, v9

    aget-byte v4, v2, v4

    invoke-static {v6, v8, v10, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v4

    aput v4, p1, v3

    const/16 v3, 0xe

    const/16 v4, 0xe

    aget-byte v4, v1, v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/16 v8, 0xe

    aget-byte v6, v6, v8

    const/16 v8, 0x1f

    aget-byte v8, v1, v8

    ushr-int/lit8 v7, v8, 0x4

    and-int/2addr v7, v9

    or-int/2addr v6, v7

    int-to-byte v6, v6

    const/16 v7, 0x10

    aget-byte v7, v2, v7

    aget-byte v2, v2, v5

    invoke-static {v4, v6, v7, v2}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v2

    aput v2, p1, v3

    aget-byte v2, v1, v9

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v3, v3, v9

    const/16 v4, 0x1f

    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    or-int/2addr v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x1e

    aget-byte v4, v1, v4

    const/16 v5, 0x1d

    aget-byte v1, v1, v5

    invoke-static {v2, v3, v4, v1}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v9

    return-void

    :cond_1a9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An IV of 25 bytes is needed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A key of 32 bytes is needed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
