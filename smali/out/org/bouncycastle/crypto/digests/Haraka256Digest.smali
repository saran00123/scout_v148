.class public Lorg/bouncycastle/crypto/digests/Haraka256Digest;
.super Lorg/bouncycastle/crypto/digests/HarakaBase;


# static fields
.field private static final RC:[[B


# instance fields
.field private final buffer:[B

.field private off:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x14

    new-array v0, v0, [[B

    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_b4

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_c0

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_cc

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_d8

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_e4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_f0

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_fc

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_108

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_114

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_120

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_12c

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_138

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_144

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_150

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_15c

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_168

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_174

    aput-object v2, v0, v1

    new-array v2, v1, [B

    fill-array-data v2, :array_180

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_18c

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_198

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    return-void

    nop

    :array_b4
    .array-data 1
        0x6t
        -0x7ct
        0x70t
        0x4ct
        -0x1at
        0x20t
        -0x40t
        0xat
        -0x4et
        -0x3bt
        -0x2t
        -0x10t
        0x75t
        -0x7ft
        0x7bt
        -0x63t
    .end array-data

    :array_c0
    .array-data 1
        -0x75t
        0x66t
        -0x4ct
        -0x1ft
        -0x78t
        -0xdt
        -0x60t
        0x6bt
        0x64t
        0xft
        0x6bt
        -0x5ct
        0x2ft
        0x8t
        -0x9t
        0x17t
    .end array-data

    :array_cc
    .array-data 1
        0x34t
        0x2t
        -0x22t
        0x2dt
        0x53t
        -0xet
        -0x7ct
        -0x68t
        -0x31t
        0x2t
        -0x63t
        0x60t
        -0x61t
        0x2t
        -0x6ft
        0x14t
    .end array-data

    :array_d8
    .array-data 1
        0xet
        -0x2at
        -0x16t
        -0x1at
        0x2et
        0x7bt
        0x4ft
        0x8t
        -0x45t
        -0xdt
        -0x44t
        -0x51t
        -0x3t
        0x5bt
        0x4ft
        0x79t
    .end array-data

    :array_e4
    .array-data 1
        -0x35t
        -0x31t
        -0x50t
        -0x35t
        0x48t
        0x72t
        0x44t
        -0x75t
        0x79t
        -0x12t
        -0x33t
        0x1ct
        -0x42t
        0x39t
        0x70t
        0x44t
    .end array-data

    :array_f0
    .array-data 1
        0x7et
        -0x16t
        -0x33t
        -0x12t
        0x6et
        -0x70t
        0x32t
        -0x49t
        -0x73t
        0x53t
        0x35t
        -0x13t
        0x2bt
        -0x76t
        0x5t
        0x7bt
    .end array-data

    :array_fc
    .array-data 1
        0x67t
        -0x3et
        -0x71t
        0x43t
        0x5et
        0x2et
        0x7ct
        -0x30t
        -0x1et
        0x41t
        0x27t
        0x61t
        -0x26t
        0x4ft
        -0x11t
        0x1bt
    .end array-data

    :array_108
    .array-data 1
        0x29t
        0x24t
        -0x27t
        -0x50t
        -0x51t
        -0x36t
        -0x34t
        0x7t
        0x67t
        0x5ft
        -0x3t
        -0x1et
        0x1ft
        -0x39t
        0xbt
        0x3bt
    .end array-data

    :array_114
    .array-data 1
        -0x55t
        0x4dt
        0x63t
        -0xft
        -0x1at
        -0x7at
        0x7ft
        -0x17t
        -0x14t
        -0x25t
        -0x71t
        -0x36t
        -0x47t
        -0x2ct
        0x65t
        -0x12t
    .end array-data

    :array_120
    .array-data 1
        0x1ct
        0x30t
        -0x41t
        -0x7ct
        -0x2ct
        -0x49t
        -0x33t
        0x64t
        0x5bt
        0x2at
        0x40t
        0x4ft
        -0x53t
        0x3t
        0x7et
        0x33t
    .end array-data

    :array_12c
    .array-data 1
        -0x4et
        -0x34t
        0xbt
        -0x47t
        -0x6ct
        0x17t
        0x23t
        -0x41t
        0x69t
        0x2t
        -0x75t
        0x2et
        -0x73t
        -0xat
        -0x68t
        0x0t
    .end array-data

    :array_138
    .array-data 1
        -0x6t
        0x4t
        0x78t
        -0x5at
        -0x22t
        0x6ft
        0x55t
        0x72t
        0x4at
        -0x56t
        -0x62t
        -0x38t
        0x5ct
        -0x63t
        0x2dt
        -0x76t
    .end array-data

    :array_144
    .array-data 1
        -0x21t
        -0x4ct
        -0x61t
        0x2bt
        0x6bt
        0x77t
        0x2at
        0x12t
        0xet
        -0x6t
        0x4ft
        0x2et
        0x29t
        0x12t
        -0x61t
        -0x2ct
    .end array-data

    :array_150
    .array-data 1
        0x1et
        -0x5ft
        0x3t
        0x44t
        -0xct
        0x49t
        -0x5et
        0x36t
        0x32t
        -0x2at
        0x11t
        -0x52t
        -0x45t
        0x6at
        0x12t
        -0x12t
    .end array-data

    :array_15c
    .array-data 1
        -0x51t
        0x4t
        0x49t
        -0x78t
        0x4bt
        0x5t
        0x0t
        -0x7ct
        0x5ft
        -0x6at
        0x0t
        -0x37t
        -0x64t
        -0x58t
        -0x14t
        -0x5at
    .end array-data

    :array_168
    .array-data 1
        0x21t
        0x2t
        0x5et
        -0x28t
        -0x63t
        0x19t
        -0x64t
        0x4ft
        0x78t
        -0x5et
        -0x39t
        -0x1dt
        0x27t
        -0x1bt
        -0x6dt
        -0x14t
    .end array-data

    :array_174
    .array-data 1
        -0x41t
        0x3at
        -0x56t
        -0x8t
        -0x59t
        0x59t
        -0x37t
        -0x49t
        -0x47t
        0x28t
        0x2et
        -0x33t
        -0x7et
        -0x2ct
        0x1t
        0x73t
    .end array-data

    :array_180
    .array-data 1
        0x62t
        0x60t
        0x70t
        0xdt
        0x61t
        -0x7at
        -0x50t
        0x17t
        0x37t
        -0xet
        -0x11t
        -0x27t
        0x10t
        0x30t
        0x7dt
        0x6bt
    .end array-data

    :array_18c
    .array-data 1
        0x5at
        -0x36t
        0x45t
        -0x3et
        0x21t
        0x30t
        0x4t
        0x43t
        -0x7ft
        -0x3et
        -0x6ft
        0x53t
        -0xat
        -0x4t
        -0x66t
        -0x3at
    .end array-data

    :array_198
    .array-data 1
        -0x6et
        0x23t
        -0x69t
        0x3ct
        0x22t
        0x6bt
        0x68t
        -0x45t
        0x2ct
        -0x51t
        -0x6et
        -0x18t
        0x36t
        -0x2ft
        -0x6ct
        0x3at
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Haraka256Digest;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    iget p1, p1, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    return-void
.end method

.method private haraka256256([B[BI)I
    .registers 12

    const/4 v0, 0x2

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-class v3, B

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    filled-new-array {v0, v1}, [I

    move-result-object v3

    const-class v4, B

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-static {p1, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-static {p1, v1, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, v2, v4

    sget-object v7, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v7, v7, v4

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v6

    aput-object v6, v2, v4

    aget-object v6, v2, v5

    sget-object v7, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v7, v7, v5

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v6

    aput-object v6, v2, v5

    aget-object v6, v2, v4

    sget-object v7, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v0, v7, v0

    invoke-static {v6, v0}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v2, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    aget-object v0, v3, v4

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v3, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    aget-object v0, v2, v4

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v2, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    aget-object v0, v3, v4

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v3, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    aget-object v0, v2, v4

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0xa

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v2, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0xb

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    aget-object v0, v3, v4

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0xc

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v3, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0xd

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    aget-object v0, v2, v4

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0xe

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v2, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0xf

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    aget-object v0, v3, v4

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v6, v6, v1

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v3, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0x11

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    aget-object v0, v2, v4

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0x12

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v2, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v7, 0x13

    aget-object v6, v6, v7

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v2, v5

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    aget-object v0, v3, v4

    invoke-static {v0, p1, v4}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->xor([B[BI)[B

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, v3, v5

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->xor([B[BI)[B

    move-result-object p1

    aput-object p1, v2, v5

    aget-object p1, v2, v4

    invoke-static {p1, v4, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, v2, v5

    add-int/2addr p3, v1

    invoke-static {p1, v4, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x20

    return p1
.end method

.method private mix256([[B[[B)V
    .registers 10

    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    aget-object v2, p1, v1

    aget-object v4, p2, v0

    invoke-static {v2, v0, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, p1, v0

    aget-object v4, p2, v0

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, p1, v1

    aget-object v4, p2, v0

    const/16 v6, 0xc

    invoke-static {v2, v3, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, p1, v0

    aget-object v4, p2, v1

    invoke-static {v2, v5, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, p1, v1

    aget-object v4, p2, v1

    invoke-static {v2, v5, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v0

    aget-object v2, p2, v1

    invoke-static {v0, v6, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, p1, v1

    aget-object p2, p2, v1

    invoke-static {p1, v6, p2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->haraka256256([B[BI)I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->reset()V

    return p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output too short to receive digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "input must be exactly 32 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "Haraka-256"

    return-object v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method

.method public update(B)V
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_11

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    aput-byte p1, v1, v0

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "total input cannot be more than 32 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    add-int v1, v0, p3

    const/16 v2, 0x20

    if-gt v1, v2, :cond_13

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "total input cannot be more than 32 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
