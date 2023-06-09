.class public Lorg/bouncycastle/crypto/engines/SkipjackEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field static final BLOCK_SIZE:I = 0x8

.field static ftable:[S


# instance fields
.field private encrypting:Z

.field private key0:[I

.field private key1:[I

.field private key2:[I

.field private key3:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    return-void

    :array_a
    .array-data 2
        0xa3s
        0xd7s
        0x9s
        0x83s
        0xf8s
        0x48s
        0xf6s
        0xf4s
        0xb3s
        0x21s
        0x15s
        0x78s
        0x99s
        0xb1s
        0xafs
        0xf9s
        0xe7s
        0x2ds
        0x4ds
        0x8as
        0xces
        0x4cs
        0xcas
        0x2es
        0x52s
        0x95s
        0xd9s
        0x1es
        0x4es
        0x38s
        0x44s
        0x28s
        0xas
        0xdfs
        0x2s
        0xa0s
        0x17s
        0xf1s
        0x60s
        0x68s
        0x12s
        0xb7s
        0x7as
        0xc3s
        0xe9s
        0xfas
        0x3ds
        0x53s
        0x96s
        0x84s
        0x6bs
        0xbas
        0xf2s
        0x63s
        0x9as
        0x19s
        0x7cs
        0xaes
        0xe5s
        0xf5s
        0xf7s
        0x16s
        0x6as
        0xa2s
        0x39s
        0xb6s
        0x7bs
        0xfs
        0xc1s
        0x93s
        0x81s
        0x1bs
        0xees
        0xb4s
        0x1as
        0xeas
        0xd0s
        0x91s
        0x2fs
        0xb8s
        0x55s
        0xb9s
        0xdas
        0x85s
        0x3fs
        0x41s
        0xbfs
        0xe0s
        0x5as
        0x58s
        0x80s
        0x5fs
        0x66s
        0xbs
        0xd8s
        0x90s
        0x35s
        0xd5s
        0xc0s
        0xa7s
        0x33s
        0x6s
        0x65s
        0x69s
        0x45s
        0x0s
        0x94s
        0x56s
        0x6ds
        0x98s
        0x9bs
        0x76s
        0x97s
        0xfcs
        0xb2s
        0xc2s
        0xb0s
        0xfes
        0xdbs
        0x20s
        0xe1s
        0xebs
        0xd6s
        0xe4s
        0xdds
        0x47s
        0x4as
        0x1ds
        0x42s
        0xeds
        0x9es
        0x6es
        0x49s
        0x3cs
        0xcds
        0x43s
        0x27s
        0xd2s
        0x7s
        0xd4s
        0xdes
        0xc7s
        0x67s
        0x18s
        0x89s
        0xcbs
        0x30s
        0x1fs
        0x8ds
        0xc6s
        0x8fs
        0xaas
        0xc8s
        0x74s
        0xdcs
        0xc9s
        0x5ds
        0x5cs
        0x31s
        0xa4s
        0x70s
        0x88s
        0x61s
        0x2cs
        0x9fs
        0xds
        0x2bs
        0x87s
        0x50s
        0x82s
        0x54s
        0x64s
        0x26s
        0x7ds
        0x3s
        0x40s
        0x34s
        0x4bs
        0x1cs
        0x73s
        0xd1s
        0xc4s
        0xfds
        0x3bs
        0xccs
        0xfbs
        0x7fs
        0xabs
        0xe6s
        0x3es
        0x5bs
        0xa5s
        0xads
        0x4s
        0x23s
        0x9cs
        0x14s
        0x51s
        0x22s
        0xf0s
        0x29s
        0x79s
        0x71s
        0x7es
        0xffs
        0x8cs
        0xes
        0xe2s
        0xcs
        0xefs
        0xbcs
        0x72s
        0x75s
        0x6fs
        0x37s
        0xa1s
        0xecs
        0xd3s
        0x8es
        0x62s
        0x8bs
        0x86s
        0x10s
        0xe8s
        0x8s
        0x77s
        0x11s
        0xbes
        0x92s
        0x4fs
        0x24s
        0xc5s
        0x32s
        0x36s
        0x9ds
        0xcfs
        0xf3s
        0xa6s
        0xbbs
        0xacs
        0x5es
        0x6cs
        0xa9s
        0x13s
        0x57s
        0x25s
        0xb5s
        0xe3s
        0xbds
        0xa8s
        0x3as
        0x1s
        0x5s
        0x59s
        0x2as
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private g(II)I
    .registers 6

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p2, p2, 0xff

    sget-object v1, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    aget v2, v2, p1

    xor-int/2addr v2, p2

    aget-short v2, v1, v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    aget v2, v2, p1

    xor-int/2addr v2, v0

    aget-short v2, v1, v2

    xor-int/2addr p2, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    aget v2, v2, p1

    xor-int/2addr v2, p2

    aget-short v2, v1, v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    aget p1, v2, p1

    xor-int/2addr p1, v0

    aget-short p1, v1, p1

    xor-int/2addr p1, p2

    shl-int/lit8 p2, v0, 0x8

    add-int/2addr p2, p1

    return p2
.end method

.method private h(II)I
    .registers 6

    and-int/lit16 v0, p2, 0xff

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    sget-object v1, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    aget v2, v2, p1

    xor-int/2addr v2, p2

    aget-short v2, v1, v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    aget v2, v2, p1

    xor-int/2addr v2, v0

    aget-short v2, v1, v2

    xor-int/2addr p2, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    aget v2, v2, p1

    xor-int/2addr v2, p2

    aget-short v2, v1, v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    aget p1, v2, p1

    xor-int/2addr p1, v0

    aget-short p1, v1, p1

    xor-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public decryptBlock([BI[BI)I
    .registers 14

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    shl-int/2addr v2, v1

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    shl-int/2addr v3, v1

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    shl-int/2addr v4, v1

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v4, p1

    const/4 p1, 0x0

    const/16 p2, 0x1f

    move v5, p2

    move p2, p1

    :goto_37
    const/4 v6, 0x2

    if-ge p2, v6, :cond_6b

    move v6, v2

    move v2, v0

    move v0, p1

    :goto_3d
    if-ge v0, v1, :cond_51

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->h(II)I

    move-result v6

    xor-int/2addr v3, v6

    add-int/lit8 v7, v5, 0x1

    xor-int/2addr v3, v7

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, 0x1

    move v8, v4

    move v4, v2

    move v2, v6

    move v6, v3

    move v3, v8

    goto :goto_3d

    :cond_51
    move v0, p1

    :goto_52
    if-ge v0, v1, :cond_66

    xor-int/2addr v2, v6

    add-int/lit8 v7, v5, 0x1

    xor-int/2addr v2, v7

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->h(II)I

    move-result v6

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, 0x1

    move v8, v4

    move v4, v2

    move v2, v6

    move v6, v3

    move v3, v8

    goto :goto_52

    :cond_66
    add-int/lit8 p2, p2, 0x1

    move v0, v2

    move v2, v6

    goto :goto_37

    :cond_6b
    add-int/lit8 p1, p4, 0x0

    shr-int/lit8 p2, v0, 0x8

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x1

    int-to-byte p2, v0

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    shr-int/lit8 p2, v2, 0x8

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x3

    int-to-byte p2, v2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x4

    shr-int/lit8 p2, v3, 0x8

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x5

    int-to-byte p2, v3

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x6

    shr-int/lit8 p2, v4, 0x8

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 p4, p4, 0x7

    int-to-byte p1, v4

    aput-byte p1, p3, p4

    return v1
.end method

.method public encryptBlock([BI[BI)I
    .registers 14

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    shl-int/2addr v2, v1

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    shl-int/2addr v3, v1

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    shl-int/2addr v4, v1

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v4, p1

    const/4 p1, 0x0

    move p2, p1

    move v5, p2

    :goto_35
    const/4 v6, 0x2

    if-ge p2, v6, :cond_63

    move v6, v0

    move v0, p1

    :goto_3a
    if-ge v0, v1, :cond_4c

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->g(II)I

    move-result v6

    xor-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    xor-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move v3, v2

    move v2, v6

    move v6, v4

    move v4, v8

    goto :goto_3a

    :cond_4c
    move v0, p1

    :goto_4d
    if-ge v0, v1, :cond_5f

    xor-int/2addr v2, v6

    add-int/lit8 v7, v5, 0x1

    xor-int/2addr v2, v7

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->g(II)I

    move-result v5

    add-int/lit8 v0, v0, 0x1

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v7

    goto :goto_4d

    :cond_5f
    add-int/lit8 p2, p2, 0x1

    move v0, v6

    goto :goto_35

    :cond_63
    add-int/lit8 p1, p4, 0x0

    shr-int/lit8 p2, v0, 0x8

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x1

    int-to-byte p2, v0

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    shr-int/lit8 p2, v2, 0x8

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x3

    int-to-byte p2, v2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x4

    shr-int/lit8 p2, v3, 0x8

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x5

    int-to-byte p2, v3

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x6

    shr-int/lit8 p2, v4, 0x8

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 p4, p4, 0x7

    int-to-byte p1, v4

    aput-byte p1, p3, p4

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "SKIPJACK"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 7

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_55

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    const/16 p1, 0x20

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, p1, :cond_54

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key0:[I

    mul-int/lit8 v2, v0, 0x4

    rem-int/lit8 v3, v2, 0xa

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key2:[I

    add-int/lit8 v3, v2, 0x2

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key3:[I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit8 v2, v2, 0xa

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_54
    return-void

    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to SKIPJACK init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->key1:[I

    if-eqz v0, :cond_2c

    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_24

    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_1c

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->encryptBlock([BI[BI)I

    goto :goto_19

    :cond_16
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;->decryptBlock([BI[BI)I

    :goto_19
    const/16 p1, 0x8

    return p1

    :cond_1c
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SKIPJACK engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 1

    return-void
.end method
