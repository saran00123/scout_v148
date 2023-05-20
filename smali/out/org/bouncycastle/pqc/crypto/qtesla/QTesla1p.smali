.class Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$Gaussian;,
        Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;
    }
.end annotation


# static fields
.field private static BPLUS1BYTES:I = 0x3

.field static final CRYPTO_BYTES:I = 0xa20

.field private static final CRYPTO_C_BYTES:I = 0x20

.field static final CRYPTO_PUBLICKEYBYTES:I = 0x3a20

.field private static final CRYPTO_RANDOMBYTES:I = 0x20

.field static final CRYPTO_SECRETKEYBYTES:I = 0x1468

.field private static final CRYPTO_SEEDBYTES:I = 0x20

.field private static final HM_BYTES:I = 0x28

.field private static NBLOCKS_SHAKE:I = 0x38

.field private static final PARAM_B:I = 0x7ffff

.field private static final PARAM_BARR_DIV:I = 0x1e

.field private static final PARAM_BARR_MULT:I = 0x3

.field private static final PARAM_B_BITS:I = 0x13

.field private static final PARAM_D:I = 0x16

.field private static final PARAM_E:I = 0x22a

.field private static final PARAM_GEN_A:I = 0x6c

.field private static final PARAM_H:I = 0x19

.field private static final PARAM_K:I = 0x4

.field private static final PARAM_KEYGEN_BOUND_E:I = 0x22a

.field private static final PARAM_KEYGEN_BOUND_S:I = 0x22a

.field private static final PARAM_N:I = 0x400

.field private static final PARAM_Q:I = 0x147a9001

.field private static final PARAM_QINV:J = 0x837a8fffL

.field private static final PARAM_Q_LOG:I = 0x1d

.field private static final PARAM_R2_INVN:I = 0xd00399

.field private static final PARAM_S:I = 0x22a

.field private static final PARAM_S_BITS:I = 0x8

.field private static final RADIX32:I = 0x20

.field private static final maskb1:I = 0xfffff


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static absolute(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr p0, v0

    sub-int/2addr p0, v0

    return p0
.end method

.method static synthetic access$000([BII)I
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result p0

    return p0
.end method

.method private static at([BII)I
    .registers 3

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p0

    return p0
.end method

.method private static at([BIII)V
    .registers 4

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    invoke-static {p3, p0, p1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method private static checkPolynomial([III)Z
    .registers 14

    const/16 v0, 0x400

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_15

    add-int v4, p1, v3

    aget v4, p0, v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_15
    move p0, v2

    move p1, p0

    :goto_17
    const/16 v3, 0x19

    if-ge p0, v3, :cond_41

    move v3, v2

    :goto_1c
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_39

    aget v4, v1, v3

    add-int/lit8 v5, v3, 0x1

    aget v6, v1, v5

    sub-int v7, v6, v4

    shr-int/lit8 v7, v7, 0x1f

    and-int v8, v6, v7

    not-int v9, v7

    and-int v10, v4, v9

    or-int/2addr v8, v10

    and-int/2addr v4, v7

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    aput v4, v1, v5

    aput v8, v1, v3

    move v3, v5

    goto :goto_1c

    :cond_39
    aget v3, v1, v4

    add-int/2addr p1, v3

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_17

    :cond_41
    if-le p1, p2, :cond_44

    const/4 v2, 0x1

    :cond_44
    return v2
.end method

.method static decodePublicKey([I[BI[B)V
    .registers 23

    move-object/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x1000

    if-ge v2, v3, :cond_274

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v3

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1d

    const/4 v6, 0x1

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    const/4 v8, 0x3

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x2

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v7, 0x1a

    ushr-int/2addr v5, v7

    const/4 v9, 0x2

    invoke-static {v0, v1, v9}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v10

    const/4 v11, 0x6

    shl-int/2addr v10, v11

    or-int/2addr v5, v10

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x3

    invoke-static {v0, v1, v9}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v10, 0x17

    ushr-int/2addr v5, v10

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v12

    const/16 v13, 0x9

    shl-int/2addr v12, v13

    or-int/2addr v5, v12

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x4

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v12, 0x14

    ushr-int/2addr v5, v12

    const/4 v14, 0x4

    invoke-static {v0, v1, v14}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v15

    const/16 v8, 0xc

    shl-int/2addr v15, v8

    or-int/2addr v5, v15

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x5

    invoke-static {v0, v1, v14}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v15, 0x11

    ushr-int/2addr v5, v15

    const/4 v7, 0x5

    invoke-static {v0, v1, v7}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v16

    const/16 v10, 0xf

    shl-int/lit8 v16, v16, 0xf

    or-int v5, v5, v16

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x6

    invoke-static {v0, v1, v7}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v12, 0xe

    ushr-int/2addr v5, v12

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v17

    shl-int/lit8 v17, v17, 0x12

    or-int v5, v5, v17

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x7

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xb

    const/4 v11, 0x7

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    shl-int/lit8 v11, v11, 0x15

    or-int/2addr v5, v11

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x8

    const/4 v5, 0x7

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x8

    const/16 v11, 0x8

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v5, v11

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x9

    const/16 v5, 0x8

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v7

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    shl-int/lit8 v11, v11, 0x1b

    or-int/2addr v5, v11

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xa

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v9

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xb

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v11, 0xa

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    shl-int/2addr v11, v6

    or-int/2addr v5, v11

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xc

    const/16 v5, 0xa

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1c

    const/16 v11, 0xb

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    shl-int/2addr v11, v14

    or-int/2addr v5, v11

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xd

    const/16 v5, 0xb

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x19

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    shl-int/lit8 v11, v11, 0x7

    or-int/2addr v5, v11

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xe

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x16

    const/16 v11, 0xd

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    shl-int/lit8 v11, v11, 0xa

    or-int/2addr v5, v11

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0xf

    const/16 v5, 0xd

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v11, 0x13

    ushr-int/2addr v5, v11

    invoke-static {v0, v1, v12}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v18

    shl-int/lit8 v18, v18, 0xd

    or-int v5, v5, v18

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x10

    invoke-static {v0, v1, v12}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x10

    invoke-static {v0, v1, v10}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v18

    shl-int/lit8 v18, v18, 0x10

    or-int v5, v5, v18

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x11

    invoke-static {v0, v1, v10}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xd

    const/16 v13, 0x10

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/2addr v13, v11

    or-int/2addr v5, v13

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x12

    const/16 v5, 0x10

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xa

    invoke-static {v0, v1, v15}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v13, v13, 0x16

    or-int/2addr v5, v13

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x13

    invoke-static {v0, v1, v15}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x7

    const/16 v13, 0x12

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v13, v13, 0x19

    or-int/2addr v5, v13

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x14

    const/16 v5, 0x12

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v14

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v13, v13, 0x1c

    or-int/2addr v5, v13

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x15

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x16

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1e

    const/16 v6, 0x14

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v5, v9

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x17

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1b

    const/16 v6, 0x15

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x18

    const/16 v5, 0x15

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x18

    const/16 v6, 0x16

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x19

    const/16 v5, 0x16

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x15

    const/16 v6, 0x17

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    shl-int/lit8 v7, v7, 0xb

    or-int/2addr v5, v7

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x1a

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x12

    const/16 v6, 0x18

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/2addr v6, v12

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x1b

    const/16 v5, 0x18

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v10

    const/16 v6, 0x19

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/2addr v6, v15

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x1c

    const/16 v5, 0x19

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v8

    const/16 v6, 0x1a

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    const/16 v8, 0x14

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x1d

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v6, 0x9

    ushr-int/2addr v5, v6

    const/16 v6, 0x1b

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/16 v7, 0x17

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, p0, v3

    add-int/lit8 v3, v2, 0x1e

    const/16 v5, 0x1b

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/4 v6, 0x6

    ushr-int/2addr v5, v6

    const/16 v6, 0x1c

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/16 v7, 0x1a

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    and-int/2addr v4, v5

    aput v4, p0, v3

    add-int/lit8 v3, v2, 0x1f

    const/16 v4, 0x1c

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v4

    const/4 v5, 0x3

    ushr-int/2addr v4, v5

    aput v4, p0, v3

    add-int/lit8 v1, v1, 0x1d

    add-int/lit8 v2, v2, 0x20

    goto/16 :goto_4

    :cond_274
    const/16 v1, 0x3a00

    const/16 v2, 0x20

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static decodeSignature([B[I[BI)V
    .registers 20

    move-object/from16 v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_5
    const/16 v4, 0x400

    if-ge v2, v4, :cond_d4

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/4 v7, 0x3

    invoke-static {v0, v3, v7}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    const/4 v8, 0x4

    invoke-static {v0, v3, v8}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v8

    const/4 v9, 0x5

    invoke-static {v0, v3, v9}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v9

    const/4 v10, 0x6

    invoke-static {v0, v3, v10}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v10

    const/4 v11, 0x7

    invoke-static {v0, v3, v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    const/16 v12, 0x8

    invoke-static {v0, v3, v12}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v12

    const/16 v13, 0x9

    invoke-static {v0, v3, v13}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v14, v4, 0xc

    shr-int/lit8 v14, v14, 0xc

    aput v14, p1, v2

    add-int/lit8 v14, v2, 0x1

    ushr-int/lit8 v4, v4, 0x14

    shl-int/lit8 v15, v5, 0x18

    shr-int/lit8 v15, v15, 0xc

    or-int/2addr v4, v15

    aput v4, p1, v14

    add-int/lit8 v4, v2, 0x2

    shl-int/lit8 v14, v5, 0x4

    shr-int/lit8 v14, v14, 0xc

    aput v14, p1, v4

    add-int/lit8 v4, v2, 0x3

    ushr-int/lit8 v5, v5, 0x1c

    shl-int/lit8 v14, v6, 0x10

    shr-int/lit8 v14, v14, 0xc

    or-int/2addr v5, v14

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x4

    ushr-int/lit8 v5, v6, 0x10

    shl-int/lit8 v6, v7, 0x1c

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x5

    shl-int/lit8 v5, v7, 0x8

    shr-int/lit8 v5, v5, 0xc

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x6

    ushr-int/lit8 v5, v7, 0x18

    shl-int/lit8 v6, v8, 0x14

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x7

    shr-int/lit8 v5, v8, 0xc

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x8

    shl-int/lit8 v5, v9, 0xc

    shr-int/lit8 v5, v5, 0xc

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0x9

    ushr-int/lit8 v5, v9, 0x14

    shl-int/lit8 v6, v10, 0x18

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xa

    shl-int/lit8 v5, v10, 0x4

    shr-int/lit8 v5, v5, 0xc

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xb

    ushr-int/lit8 v5, v10, 0x1c

    shl-int/lit8 v6, v11, 0x10

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xc

    ushr-int/lit8 v5, v11, 0x10

    shl-int/lit8 v6, v12, 0x1c

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xd

    shl-int/lit8 v5, v12, 0x8

    shr-int/lit8 v5, v5, 0xc

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xe

    ushr-int/lit8 v5, v12, 0x18

    shl-int/lit8 v6, v13, 0x14

    shr-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    aput v5, p1, v4

    add-int/lit8 v4, v2, 0xf

    shr-int/lit8 v5, v13, 0xc

    aput v5, p1, v4

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v2, v2, 0x10

    goto/16 :goto_5

    :cond_d4
    move/from16 v2, p3

    add-int/lit16 v2, v2, 0xa00

    const/16 v3, 0x20

    move-object/from16 v4, p0

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static encodeC([I[S[BI)V
    .registers 17

    const/16 v0, 0x400

    new-array v0, v0, [S

    const/16 v1, 0xa8

    new-array v1, v1, [B

    const/4 v9, 0x1

    int-to-short v10, v9

    const/4 v3, 0x0

    const/16 v4, 0xa8

    const/16 v8, 0x20

    const/4 v5, 0x0

    move-object v2, v1

    move-object v6, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lorg/bouncycastle/util/Arrays;->fill([SS)V

    move v5, v10

    move v2, v11

    move v10, v2

    :goto_1e
    const/16 v3, 0x19

    if-ge v10, v3, :cond_60

    const/16 v3, 0xa5

    if-le v2, v3, :cond_37

    const/4 v3, 0x0

    const/16 v4, 0xa8

    add-int/lit8 v2, v5, 0x1

    int-to-short v12, v2

    const/16 v8, 0x20

    move-object v2, v1

    move-object v6, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    move v2, v11

    move v5, v12

    :cond_37
    aget-byte v3, v1, v2

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x3ff

    aget-short v4, v0, v3

    if-nez v4, :cond_5d

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_53

    const/4 v4, -0x1

    aput-short v4, v0, v3

    goto :goto_55

    :cond_53
    aput-short v9, v0, v3

    :goto_55
    aput v3, p0, v10

    aget-short v3, v0, v3

    aput-short v3, p1, v10

    add-int/lit8 v10, v10, 0x1

    :cond_5d
    add-int/lit8 v2, v2, 0x3

    goto :goto_1e

    :cond_60
    return-void
.end method

.method static encodePrivateKey([B[I[I[BI[B)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x400

    if-ge v1, v2, :cond_10

    add-int v2, v0, v1

    aget v3, p1, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    move p1, v0

    :goto_11
    const/4 v1, 0x4

    if-ge p1, v1, :cond_27

    move v1, v0

    :goto_15
    if-ge v1, v2, :cond_24

    mul-int/lit16 v3, p1, 0x400

    add-int/2addr v3, v1

    add-int v4, v2, v3

    aget v3, p2, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_27
    const/16 p1, 0x1400

    const/16 p2, 0x40

    invoke-static {p3, p4, p0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x1440

    const/16 v2, 0x28

    const/4 v4, 0x0

    const/16 v5, 0x3a00

    move-object v0, p0

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    return-void
.end method

.method static encodePublicKey([B[I[BI)V
    .registers 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0xe80

    if-ge v2, v3, :cond_1e0

    const/4 v3, 0x0

    aget v4, p1, v1

    add-int/lit8 v5, v1, 0x1

    aget v6, p1, v5

    shl-int/lit8 v6, v6, 0x1d

    or-int/2addr v4, v6

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v5

    const/4 v4, 0x3

    shr-int/2addr v3, v4

    add-int/lit8 v5, v1, 0x2

    aget v6, p1, v5

    const/16 v7, 0x1a

    shl-int/2addr v6, v7

    or-int/2addr v3, v6

    const/4 v6, 0x1

    invoke-static {v0, v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v5

    const/4 v5, 0x6

    shr-int/2addr v3, v5

    add-int/lit8 v8, v1, 0x3

    aget v9, p1, v8

    const/16 v10, 0x17

    shl-int/2addr v9, v10

    or-int/2addr v3, v9

    const/4 v9, 0x2

    invoke-static {v0, v2, v9, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v8

    const/16 v8, 0x9

    shr-int/2addr v3, v8

    add-int/lit8 v11, v1, 0x4

    aget v12, p1, v11

    const/16 v13, 0x14

    shl-int/2addr v12, v13

    or-int/2addr v3, v12

    invoke-static {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v11

    const/16 v11, 0xc

    shr-int/2addr v3, v11

    add-int/lit8 v12, v1, 0x5

    aget v14, p1, v12

    const/16 v15, 0x11

    shl-int/2addr v14, v15

    or-int/2addr v3, v14

    const/4 v14, 0x4

    invoke-static {v0, v2, v14, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v12

    const/16 v12, 0xf

    shr-int/2addr v3, v12

    add-int/lit8 v16, v1, 0x6

    aget v17, p1, v16

    const/16 v4, 0xe

    shl-int/lit8 v17, v17, 0xe

    or-int v3, v3, v17

    const/4 v7, 0x5

    invoke-static {v0, v2, v7, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v16

    const/16 v10, 0x12

    shr-int/2addr v3, v10

    add-int/lit8 v18, v1, 0x7

    aget v19, p1, v18

    shl-int/lit8 v19, v19, 0xb

    or-int v3, v3, v19

    invoke-static {v0, v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x7

    aget v18, p1, v18

    shr-int/lit8 v18, v18, 0x15

    add-int/lit8 v19, v1, 0x8

    aget v20, p1, v19

    shl-int/lit8 v20, v20, 0x8

    or-int v5, v18, v20

    invoke-static {v0, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x8

    aget v5, p1, v19

    shr-int/lit8 v5, v5, 0x18

    add-int/lit8 v18, v1, 0x9

    aget v19, p1, v18

    shl-int/lit8 v19, v19, 0x5

    or-int v5, v5, v19

    invoke-static {v0, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v18

    shr-int/lit8 v3, v3, 0x1b

    add-int/lit8 v5, v1, 0xa

    aget v5, p1, v5

    shl-int/2addr v5, v9

    or-int/2addr v3, v5

    add-int/lit8 v5, v1, 0xb

    aget v18, p1, v5

    shl-int/lit8 v18, v18, 0x1f

    or-int v3, v3, v18

    invoke-static {v0, v2, v8, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0xa

    aget v5, p1, v5

    shr-int/2addr v5, v6

    add-int/lit8 v18, v1, 0xc

    aget v19, p1, v18

    shl-int/lit8 v19, v19, 0x1c

    or-int v5, v5, v19

    invoke-static {v0, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0xb

    aget v5, p1, v18

    shr-int/2addr v5, v14

    add-int/lit8 v18, v1, 0xd

    aget v19, p1, v18

    shl-int/lit8 v19, v19, 0x19

    or-int v5, v5, v19

    invoke-static {v0, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v18

    shr-int/lit8 v3, v3, 0x7

    add-int/lit8 v5, v1, 0xe

    aget v18, p1, v5

    shl-int/lit8 v18, v18, 0x16

    or-int v3, v3, v18

    invoke-static {v0, v2, v11, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0xd

    aget v5, p1, v5

    shr-int/lit8 v5, v5, 0xa

    add-int/lit8 v18, v1, 0xf

    aget v19, p1, v18

    shl-int/lit8 v19, v19, 0x13

    or-int v5, v5, v19

    invoke-static {v0, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v18

    shr-int/lit8 v3, v3, 0xd

    add-int/lit8 v5, v1, 0x10

    aget v18, p1, v5

    shl-int/lit8 v18, v18, 0x10

    or-int v3, v3, v18

    invoke-static {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v5

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v5, v1, 0x11

    aget v18, p1, v5

    shl-int/lit8 v18, v18, 0xd

    or-int v3, v3, v18

    invoke-static {v0, v2, v12, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x10

    aget v5, p1, v5

    shr-int/lit8 v5, v5, 0x13

    add-int/lit8 v18, v1, 0x12

    aget v19, p1, v18

    shl-int/lit8 v19, v19, 0xa

    or-int v5, v5, v19

    invoke-static {v0, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v18

    shr-int/lit8 v3, v3, 0x16

    add-int/lit8 v5, v1, 0x13

    aget v18, p1, v5

    shl-int/lit8 v18, v18, 0x7

    or-int v3, v3, v18

    invoke-static {v0, v2, v15, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v5

    shr-int/lit8 v3, v3, 0x19

    add-int/lit8 v5, v1, 0x14

    aget v18, p1, v5

    shl-int/lit8 v14, v18, 0x4

    or-int/2addr v3, v14

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x13

    aget v5, p1, v5

    shr-int/lit8 v5, v5, 0x1c

    add-int/lit8 v14, v1, 0x15

    aget v14, p1, v14

    shl-int/lit8 v6, v14, 0x1

    or-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x16

    aget v14, p1, v6

    shl-int/lit8 v14, v14, 0x1e

    or-int/2addr v5, v14

    invoke-static {v0, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v6

    shr-int/2addr v3, v9

    add-int/lit8 v5, v1, 0x17

    aget v6, p1, v5

    shl-int/lit8 v6, v6, 0x1b

    or-int/2addr v3, v6

    invoke-static {v0, v2, v13, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x15

    aget v5, p1, v5

    shr-int/2addr v5, v7

    add-int/lit8 v6, v1, 0x18

    aget v7, p1, v6

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v5, v7

    invoke-static {v0, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x16

    aget v5, p1, v6

    shr-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v1, 0x19

    aget v7, p1, v6

    shl-int/lit8 v7, v7, 0x15

    or-int/2addr v5, v7

    invoke-static {v0, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v6

    shr-int/lit8 v3, v3, 0xb

    add-int/lit8 v5, v1, 0x1a

    aget v6, p1, v5

    shl-int/2addr v6, v10

    or-int/2addr v3, v6

    const/16 v6, 0x17

    invoke-static {v0, v2, v6, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x18

    aget v5, p1, v5

    shr-int/lit8 v4, v5, 0xe

    add-int/lit8 v5, v1, 0x1b

    aget v6, p1, v5

    shl-int/2addr v6, v12

    or-int/2addr v4, v6

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x19

    aget v4, p1, v5

    shr-int/2addr v4, v15

    add-int/lit8 v5, v1, 0x1c

    aget v6, p1, v5

    shl-int/2addr v6, v11

    or-int/2addr v4, v6

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p1, v5

    shr-int/2addr v3, v13

    add-int/lit8 v4, v1, 0x1d

    aget v5, p1, v4

    shl-int/2addr v5, v8

    or-int/2addr v3, v5

    const/16 v5, 0x1a

    invoke-static {v0, v2, v5, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x1b

    aget v4, p1, v4

    const/16 v5, 0x17

    shr-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x1e

    aget v6, p1, v5

    const/4 v7, 0x6

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x1c

    aget v4, p1, v5

    const/16 v5, 0x1a

    shr-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x1f

    aget v5, p1, v5

    const/4 v6, 0x3

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    add-int/lit8 v1, v1, 0x20

    add-int/lit8 v2, v2, 0x1d

    goto/16 :goto_4

    :cond_1e0
    const/16 v1, 0x3a00

    const/16 v2, 0x20

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static encodeSignature([BI[BI[I)V
    .registers 16

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    const/16 v3, 0x280

    if-ge v1, v3, :cond_d0

    aget v3, p4, v2

    const v4, 0xfffff

    and-int/2addr v3, v4

    add-int/lit8 v5, v2, 0x1

    aget v6, p4, v5

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v3, v6

    invoke-static {p0, v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v5

    ushr-int/lit8 v3, v3, 0xc

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v2, 0x2

    aget v5, p4, v5

    and-int/2addr v5, v4

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v5, v2, 0x3

    aget v7, p4, v5

    shl-int/lit8 v7, v7, 0x1c

    or-int/2addr v3, v7

    const/4 v7, 0x1

    invoke-static {p0, v1, v7, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v5

    const/4 v5, 0x4

    ushr-int/2addr v3, v5

    const v7, 0xffff

    and-int/2addr v3, v7

    add-int/lit8 v8, v2, 0x4

    aget v9, p4, v8

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v3, v9

    const/4 v9, 0x2

    invoke-static {p0, v1, v9, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v8

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v8, v2, 0x5

    aget v8, p4, v8

    and-int/2addr v8, v4

    shl-int/2addr v8, v5

    or-int/2addr v3, v8

    add-int/lit8 v8, v2, 0x6

    aget v9, p4, v8

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v3, v9

    const/4 v9, 0x3

    invoke-static {p0, v1, v9, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v8

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xfff

    add-int/lit8 v8, v2, 0x7

    aget v8, p4, v8

    shl-int/lit8 v8, v8, 0xc

    or-int/2addr v3, v8

    invoke-static {p0, v1, v5, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    add-int/lit8 v3, v2, 0x8

    aget v3, p4, v3

    and-int/2addr v3, v4

    add-int/lit8 v8, v2, 0x9

    aget v9, p4, v8

    shl-int/lit8 v9, v9, 0x14

    or-int/2addr v3, v9

    const/4 v9, 0x5

    invoke-static {p0, v1, v9, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x6

    aget v8, p4, v8

    ushr-int/lit8 v8, v8, 0xc

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v2, 0xa

    aget v9, p4, v9

    and-int/2addr v9, v4

    shl-int/2addr v9, v6

    or-int/2addr v8, v9

    add-int/lit8 v9, v2, 0xb

    aget v10, p4, v9

    shl-int/lit8 v10, v10, 0x1c

    or-int/2addr v8, v10

    invoke-static {p0, v1, v3, v8}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x7

    aget v8, p4, v9

    ushr-int/2addr v8, v5

    and-int/2addr v7, v8

    add-int/lit8 v8, v2, 0xc

    aget v9, p4, v8

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    invoke-static {p0, v1, v3, v7}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    aget v3, p4, v8

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v7, v2, 0xd

    aget v7, p4, v7

    and-int/2addr v4, v7

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0xe

    aget v5, p4, v4

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v3, v5

    invoke-static {p0, v1, v6, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x9

    aget v4, p4, v4

    ushr-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xfff

    add-int/lit8 v5, v2, 0xf

    aget v5, p4, v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    invoke-static {p0, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->at([BIII)V

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v1, v1, 0xa

    goto/16 :goto_3

    :cond_d0
    add-int/lit16 p1, p1, 0xa00

    const/16 p4, 0x20

    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static generateKeyPair([B[BLjava/security/SecureRandom;)I
    .registers 20

    const/16 v0, 0x20

    new-array v4, v0, [B

    const/16 v0, 0xe0

    new-array v8, v0, [B

    const/16 v0, 0x400

    new-array v7, v0, [I

    const/16 v1, 0x1000

    new-array v15, v1, [I

    new-array v14, v1, [I

    new-array v13, v1, [I

    new-array v0, v0, [I

    move-object/from16 v1, p2

    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x0

    const/16 v3, 0xe0

    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object v1, v8

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_28
    const/16 v4, 0x22a

    const/4 v5, 0x4

    if-ge v2, v5, :cond_3f

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v5, v2, 0x20

    mul-int/lit16 v6, v2, 0x400

    invoke-static {v3, v8, v5, v15, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$Gaussian;->sample_gauss_poly(I[BI[II)V

    invoke-static {v15, v6, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->checkPolynomial([III)Z

    move-result v5

    if-nez v5, :cond_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x80

    invoke-static {v3, v8, v2, v7, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$Gaussian;->sample_gauss_poly(I[BI[II)V

    invoke-static {v7, v1, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->checkPolynomial([III)Z

    move-result v2

    if-nez v2, :cond_7e

    const/16 v2, 0xa0

    invoke-static {v14, v8, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    invoke-static {v0, v7}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    move v3, v1

    :goto_55
    if-ge v3, v5, :cond_6e

    mul-int/lit16 v4, v3, 0x400

    invoke-static {v13, v4, v14, v4, v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    move-object v9, v13

    move v10, v4

    move-object v11, v13

    move v12, v4

    move-object v6, v13

    move-object v13, v15

    move-object/from16 v16, v14

    move v14, v4

    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_add_correct([II[II[II)V

    add-int/lit8 v3, v3, 0x1

    move-object v13, v6

    move-object/from16 v14, v16

    goto :goto_55

    :cond_6e
    move-object/from16 v10, p0

    move-object v6, v13

    invoke-static {v10, v6, v8, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->encodePublicKey([B[I[BI)V

    const/16 v9, 0xa0

    move-object/from16 v5, p1

    move-object v6, v7

    move-object v7, v15

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->encodePrivateKey([B[I[I[BI[B)V

    return v1

    :cond_7e
    move-object/from16 v10, p0

    goto :goto_3f
.end method

.method static generateSignature([B[BII[BLjava/security/SecureRandom;)I
    .registers 34

    move-object/from16 v6, p4

    const/16 v0, 0x20

    new-array v7, v0, [B

    new-array v14, v0, [B

    const/16 v1, 0x90

    new-array v15, v1, [B

    const/16 v1, 0x19

    new-array v5, v1, [I

    new-array v4, v1, [S

    const/16 v1, 0x400

    new-array v3, v1, [I

    new-array v2, v1, [I

    new-array v13, v1, [I

    new-array v1, v1, [I

    const/16 v8, 0x1000

    new-array v12, v8, [I

    new-array v11, v8, [I

    new-array v10, v8, [I

    const/4 v9, 0x0

    const/16 v8, 0x1420

    invoke-static {v6, v8, v15, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v8, v0, [B

    move-object/from16 v16, v1

    move-object/from16 v1, p5

    invoke-virtual {v1, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v8, v9, v15, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x40

    const/16 v1, 0x28

    const/16 v17, 0x0

    move-object v8, v15

    move v9, v0

    move-object v0, v10

    move v10, v1

    move-object/from16 v23, v11

    move-object/from16 v11, p1

    move-object v1, v12

    move/from16 v12, v17

    move-object/from16 p1, v13

    move/from16 v13, p3

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    array-length v8, v15

    const/16 v13, 0x28

    add-int/lit8 v17, v8, -0x28

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v12, 0x0

    move-object v8, v14

    move-object v11, v15

    move-object/from16 v18, v4

    move v4, v13

    move/from16 v13, v17

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    array-length v8, v15

    sub-int/2addr v8, v4

    const/16 v9, 0x1440

    invoke-static {v6, v9, v15, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x1400

    invoke-static {v0, v6, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_6f
    add-int/lit8 v8, v4, 0x1

    const/4 v10, 0x0

    invoke-static {v3, v14, v10, v8}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->sample_y([I[BII)V

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    move v4, v10

    :goto_79
    const/4 v11, 0x4

    if-ge v4, v11, :cond_84

    mul-int/lit16 v11, v4, 0x400

    invoke-static {v1, v11, v0, v11, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    :cond_84
    const/16 v4, 0x40

    invoke-static {v7, v10, v1, v15, v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->hashFunction([BI[I[BI)V

    move-object/from16 v4, v18

    invoke-static {v5, v4, v7, v10}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->encodeC([I[S[BI)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 p3, v1

    move-object/from16 v10, v16

    move v1, v12

    move-object v12, v2

    move-object/from16 v2, p4

    move-object v11, v3

    move v3, v13

    move-object v13, v4

    move-object v4, v5

    move-object/from16 v24, v5

    move-object v5, v13

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul8([II[BI[I[S)V

    move-object/from16 v5, p1

    invoke-static {v10, v11, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_add([I[I[I)V

    invoke-static {v10}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->testRejection([I)Z

    move-result v0

    if-eqz v0, :cond_c1

    move-object/from16 v1, p3

    move-object/from16 p1, v5

    move v4, v8

    move-object/from16 v16, v10

    move-object v3, v11

    move-object v2, v12

    move-object/from16 v18, v13

    move-object/from16 v0, v22

    move-object/from16 v5, v24

    goto :goto_6f

    :cond_c1
    const/4 v0, 0x0

    const/4 v4, 0x4

    :goto_c3
    if-ge v0, v4, :cond_101

    mul-int/lit16 v9, v0, 0x400

    add-int/lit8 v3, v0, 0x1

    mul-int/lit16 v2, v3, 0x400

    move-object/from16 v0, v23

    move v1, v9

    move/from16 v16, v2

    move-object/from16 v2, p4

    move/from16 v25, v3

    move/from16 v3, v16

    move/from16 v26, v4

    move-object/from16 v4, v24

    move-object/from16 v27, v5

    move-object v5, v13

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul8([II[BI[I[S)V

    move-object/from16 v16, p3

    move/from16 v17, v9

    move-object/from16 v18, p3

    move/from16 v19, v9

    move-object/from16 v20, v23

    move/from16 v21, v9

    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_sub([II[II[II)V

    move-object/from16 v0, p3

    invoke-static {v0, v9}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->test_correctness([II)Z

    move-result v9

    if-eqz v9, :cond_f8

    goto :goto_105

    :cond_f8
    move-object/from16 p3, v0

    move/from16 v0, v25

    move/from16 v4, v26

    move-object/from16 v5, v27

    goto :goto_c3

    :cond_101
    move-object/from16 v0, p3

    move-object/from16 v27, v5

    :goto_105
    if-eqz v9, :cond_117

    move-object v1, v0

    move v4, v8

    move-object/from16 v16, v10

    move-object v3, v11

    move-object v2, v12

    move-object/from16 v18, v13

    move-object/from16 v0, v22

    move-object/from16 v5, v24

    move-object/from16 p1, v27

    goto/16 :goto_6f

    :cond_117
    const/4 v2, 0x0

    move-object/from16 v1, p0

    invoke-static {v1, v2, v7, v2, v10}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->encodeSignature([BI[BI[I)V

    return v2
.end method

.method private static hashFunction([BI[I[BI)V
    .registers 14

    const/16 v0, 0x1050

    new-array v4, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    const/4 v2, 0x4

    if-ge v1, v2, :cond_42

    mul-int/lit16 v2, v1, 0x400

    move v3, v2

    move v2, v0

    :goto_d
    const/16 v5, 0x400

    if-ge v2, v5, :cond_3f

    aget v5, p2, v3

    const v6, 0xa3d4800

    sub-int/2addr v6, v5

    shr-int/lit8 v6, v6, 0x1f

    const v7, 0x147a9001

    sub-int v7, v5, v7

    and-int/2addr v7, v6

    not-int v6, v6

    and-int/2addr v5, v6

    or-int/2addr v5, v7

    const v6, 0x3fffff

    and-int/2addr v6, v5

    const/high16 v7, 0x200000

    sub-int/2addr v7, v6

    shr-int/lit8 v7, v7, 0x1f

    const/high16 v8, 0x400000

    sub-int v8, v6, v8

    and-int/2addr v8, v7

    not-int v7, v7

    and-int/2addr v6, v7

    or-int/2addr v6, v8

    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x16

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v7

    goto :goto_d

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_42
    const/16 p2, 0x1000

    const/16 v0, 0x50

    invoke-static {p3, p4, v4, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x20

    const/4 v5, 0x0

    array-length v6, v4

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    return-void
.end method

.method static littleEndianToInt24([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method static memoryEqual([BI[BII)Z
    .registers 9

    add-int v0, p1, p4

    array-length v1, p0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1e

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_1e

    move v0, v2

    :goto_c
    if-ge v0, p4, :cond_1c

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    return v2
.end method

.method static sample_y([I[BII)V
    .registers 19

    sget v0, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->BPLUS1BYTES:I

    mul-int/lit16 v1, v0, 0x400

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    shl-int/lit8 v2, p3, 0x8

    int-to-short v5, v2

    mul-int/lit16 v9, v0, 0x400

    add-int/lit8 v2, v5, 0x1

    int-to-short v10, v2

    const/4 v3, 0x0

    const/16 v8, 0x20

    move-object v2, v1

    move v4, v9

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    const/4 v11, 0x0

    const/16 v12, 0x400

    move v5, v10

    move v2, v11

    move v10, v2

    move v3, v12

    :goto_23
    if-ge v10, v12, :cond_59

    mul-int v4, v3, v0

    if-lt v2, v4, :cond_3d

    sget v13, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->NBLOCKS_SHAKE:I

    const/4 v3, 0x0

    add-int/lit8 v2, v5, 0x1

    int-to-short v14, v2

    const/16 v8, 0x20

    move-object v2, v1

    move v4, v9

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    move v2, v11

    move v3, v13

    move v5, v14

    :cond_3d
    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->littleEndianToInt24([BI)I

    move-result v4

    const v6, 0xfffff

    and-int/2addr v4, v6

    aput v4, p0, v10

    aget v4, p0, v10

    const v6, 0x7ffff

    sub-int/2addr v4, v6

    aput v4, p0, v10

    aget v4, p0, v10

    const/high16 v6, 0x80000

    if-eq v4, v6, :cond_57

    add-int/lit8 v10, v10, 0x1

    :cond_57
    add-int/2addr v2, v0

    goto :goto_23

    :cond_59
    return-void
.end method

.method private static testRejection([I)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    const/16 v3, 0x400

    if-ge v1, v3, :cond_15

    const v3, 0x7fdd5

    aget v4, p0, v1

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v4

    sub-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    ushr-int/lit8 p0, v2, 0x1f

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method private static testZ([I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x400

    if-ge v1, v2, :cond_1a

    aget v2, p0, v1

    const v3, -0x7fdd5

    if-lt v2, v3, :cond_18

    aget v2, p0, v1

    const v3, 0x7fdd5

    if-le v2, v3, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    return v0
.end method

.method static test_correctness([II)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x400

    if-ge v1, v2, :cond_40

    add-int v2, p1, v1

    aget v2, p0, v2

    const v3, 0xa3d4800

    sub-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x1f

    const v4, 0x147a9001

    sub-int v4, v2, v4

    and-int/2addr v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v3

    const v4, 0xa3d45d6

    sub-int/2addr v3, v4

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/high16 v4, 0x200000

    add-int/2addr v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x16

    shl-int/lit8 v4, v4, 0x16

    sub-int/2addr v2, v4

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v2

    const v4, 0x1ffdd6

    sub-int/2addr v2, v4

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    if-ne v2, v5, :cond_3d

    return v5

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_40
    return v0
.end method

.method static verifying([B[BII[B)I
    .registers 26

    const/16 v0, 0x20

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v3, v0, [B

    const/16 v4, 0x50

    new-array v4, v4, [B

    const/16 v5, 0x19

    new-array v12, v5, [I

    new-array v13, v5, [S

    const/16 v5, 0x1000

    new-array v14, v5, [I

    new-array v15, v5, [I

    new-array v11, v5, [I

    new-array v10, v5, [I

    const/16 v5, 0x400

    new-array v9, v5, [I

    new-array v8, v5, [I

    const/16 v5, 0xa20

    move/from16 v6, p3

    if-eq v6, v5, :cond_2a

    const/4 v0, -0x1

    return v0

    :cond_2a
    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-static {v1, v9, v5, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->decodeSignature([B[I[BI)V

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->testZ([I)Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v0, -0x2

    return v0

    :cond_39
    const/4 v7, 0x0

    move-object/from16 v6, p4

    invoke-static {v14, v3, v7, v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->decodePublicKey([I[BI[B)V

    const/16 v16, 0x0

    const/16 v17, 0x28

    const/16 v18, 0x0

    move-object/from16 v5, p0

    array-length v0, v5

    move-object v5, v4

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v19, v8

    move-object/from16 v8, p0

    move-object/from16 v20, v9

    move/from16 v9, v18

    move-object/from16 v16, v10

    move v10, v0

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/16 v6, 0x28

    const/16 v7, 0x28

    const/4 v9, 0x0

    const/16 v10, 0x3a00

    move-object/from16 v8, p4

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/4 v0, 0x0

    invoke-static {v11, v3, v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    invoke-static {v12, v13, v1, v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->encodeC([I[S[BI)V

    move-object/from16 v5, v19

    move-object/from16 v3, v20

    invoke-static {v5, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    move v3, v0

    :goto_76
    const/4 v6, 0x4

    if-ge v3, v6, :cond_9d

    mul-int/lit16 v10, v3, 0x400

    move-object/from16 v6, v16

    move v7, v10

    move-object v8, v14

    move v9, v10

    move v0, v10

    move-object v10, v12

    move-object/from16 v17, v12

    move-object v12, v11

    move-object v11, v13

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul32([II[II[I[S)V

    invoke-static {v15, v0, v12, v0, v5}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    move-object v6, v15

    move v7, v0

    move-object v8, v15

    move v9, v0

    move-object/from16 v10, v16

    move v11, v0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_sub_reduce([II[II[II)V

    add-int/lit8 v3, v3, 0x1

    move-object v11, v12

    move-object/from16 v12, v17

    const/4 v0, 0x0

    goto :goto_76

    :cond_9d
    invoke-static {v2, v0, v15, v4, v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->hashFunction([BI[I[BI)V

    const/16 v3, 0x20

    invoke-static {v1, v0, v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTesla1p;->memoryEqual([BI[BII)Z

    move-result v1

    if-nez v1, :cond_a9

    const/4 v0, -0x3

    :cond_a9
    return v0
.end method
