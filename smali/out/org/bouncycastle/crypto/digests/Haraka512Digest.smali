.class public Lorg/bouncycastle/crypto/digests/Haraka512Digest;
.super Lorg/bouncycastle/crypto/digests/HarakaBase;


# static fields
.field private static RC:[[B


# instance fields
.field private final buffer:[B

.field private off:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x28

    new-array v0, v0, [[B

    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_168

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_174

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_180

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_18c

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_198

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1a4

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1b0

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1bc

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1c8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1d4

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1e0

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1ec

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1f8

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_204

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_210

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_21c

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_228

    aput-object v2, v0, v1

    new-array v2, v1, [B

    fill-array-data v2, :array_234

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_240

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_24c

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_258

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_264

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_270

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_27c

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_288

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_294

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2a0

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2ac

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2b8

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2c4

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2d0

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2dc

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2e8

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2f4

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_300

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_30c

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_318

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_324

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_330

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_33c

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    return-void

    nop

    :array_168
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

    :array_174
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

    :array_180
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

    :array_18c
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

    :array_198
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

    :array_1a4
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

    :array_1b0
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

    :array_1bc
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

    :array_1c8
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

    :array_1d4
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

    :array_1e0
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

    :array_1ec
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

    :array_1f8
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

    :array_204
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

    :array_210
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

    :array_21c
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

    :array_228
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

    :array_234
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

    :array_240
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

    :array_24c
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

    :array_258
    .array-data 1
        -0x2dt
        -0x41t
        -0x6et
        0x38t
        0x22t
        0x58t
        -0x7at
        -0x15t
        0x6ct
        -0x46t
        -0x47t
        0x58t
        -0x1bt
        0x10t
        0x71t
        -0x4ct
    .end array-data

    :array_264
    .array-data 1
        -0x25t
        -0x7at
        0x3ct
        -0x1bt
        -0x52t
        -0x10t
        -0x3at
        0x77t
        -0x6dt
        0x3dt
        -0x3t
        -0x23t
        0x24t
        -0x1ft
        0x12t
        -0x73t
    .end array-data

    :array_270
    .array-data 1
        -0x45t
        0x60t
        0x62t
        0x68t
        -0x1t
        -0x15t
        -0x60t
        -0x64t
        -0x7dt
        -0x1ct
        -0x73t
        -0x1dt
        -0x35t
        0x22t
        0x12t
        -0x4ft
    .end array-data

    :array_27c
    .array-data 1
        0x73t
        0x4bt
        -0x2dt
        -0x24t
        -0x1et
        -0x1ct
        -0x2ft
        -0x64t
        0x2dt
        -0x47t
        0x1at
        0x4et
        -0x39t
        0x2bt
        -0x9t
        0x7dt
    .end array-data

    :array_288
    .array-data 1
        0x43t
        -0x45t
        0x47t
        -0x3dt
        0x61t
        0x30t
        0x1bt
        0x43t
        0x4bt
        0x14t
        0x15t
        -0x3ct
        0x2ct
        -0x4dt
        -0x6et
        0x4et
    .end array-data

    :array_294
    .array-data 1
        -0x25t
        -0x59t
        0x75t
        -0x58t
        -0x19t
        0x7t
        -0x11t
        -0xat
        0x3t
        -0x4et
        0x31t
        -0x23t
        0x16t
        -0x15t
        0x68t
        -0x67t
    .end array-data

    :array_2a0
    .array-data 1
        0x6dt
        -0xdt
        0x61t
        0x4bt
        0x3ct
        0x75t
        0x59t
        0x77t
        -0x72t
        0x5et
        0x23t
        0x2t
        0x7et
        -0x36t
        0x47t
        0x2ct
    .end array-data

    :array_2ac
    .array-data 1
        -0x33t
        -0x59t
        0x5at
        0x17t
        -0x2at
        -0x22t
        0x7dt
        0x77t
        0x6dt
        0x1bt
        -0x1bt
        -0x47t
        -0x48t
        -0x7at
        0x17t
        -0x7t
    .end array-data

    :array_2b8
    .array-data 1
        -0x14t
        0x6bt
        0x43t
        -0x10t
        0x6bt
        -0x58t
        -0x17t
        -0x56t
        -0x63t
        0x6ct
        0x6t
        -0x63t
        -0x57t
        0x46t
        -0x12t
        0x5dt
    .end array-data

    :array_2c4
    .array-data 1
        -0x35t
        0x1et
        0x69t
        0x50t
        -0x7t
        0x57t
        0x33t
        0x2bt
        -0x5et
        0x53t
        0x11t
        0x59t
        0x3bt
        -0xdt
        0x27t
        -0x3ft
    .end array-data

    :array_2d0
    .array-data 1
        0x2ct
        -0x12t
        0xct
        0x75t
        0x0t
        -0x26t
        0x61t
        -0x64t
        -0x1ct
        -0x13t
        0x3t
        0x53t
        0x60t
        0xet
        -0x30t
        -0x27t
    .end array-data

    :array_2dc
    .array-data 1
        -0x10t
        -0x4ft
        -0x5bt
        -0x5ft
        -0x6at
        -0x17t
        0xct
        -0x55t
        -0x80t
        -0x45t
        -0x46t
        -0x44t
        0x63t
        -0x5ct
        -0x5dt
        0x50t
    .end array-data

    :array_2e8
    .array-data 1
        -0x52t
        0x3dt
        -0x4ft
        0x2t
        0x5et
        -0x6at
        0x29t
        -0x78t
        -0x55t
        0xdt
        -0x22t
        0x30t
        -0x6dt
        -0x73t
        -0x36t
        0x39t
    .end array-data

    :array_2f4
    .array-data 1
        0x17t
        -0x45t
        -0x71t
        0x38t
        -0x2bt
        0x54t
        -0x5ct
        0xbt
        -0x78t
        0x14t
        -0xdt
        -0x58t
        0x2et
        0x75t
        -0x4ct
        0x42t
    .end array-data

    :array_300
    .array-data 1
        0x34t
        -0x45t
        -0x76t
        0x5bt
        0x5ft
        0x42t
        0x7ft
        -0x29t
        -0x52t
        -0x4at
        -0x49t
        0x79t
        0x36t
        0xat
        0x16t
        -0xat
    .end array-data

    :array_30c
    .array-data 1
        0x26t
        -0xat
        0x52t
        0x41t
        -0x35t
        -0x1bt
        0x54t
        0x38t
        0x43t
        -0x32t
        0x59t
        0x18t
        -0x1t
        -0x46t
        -0x51t
        -0x22t
    .end array-data

    :array_318
    .array-data 1
        0x4ct
        -0x17t
        -0x66t
        0x54t
        -0x47t
        -0xdt
        0x2t
        0x6at
        -0x5et
        -0x36t
        -0x64t
        -0x9t
        -0x7dt
        -0x62t
        -0x37t
        0x78t
    .end array-data

    :array_324
    .array-data 1
        -0x52t
        0x51t
        -0x5bt
        0x1at
        0x1bt
        -0x21t
        -0x9t
        -0x42t
        0x40t
        -0x40t
        0x6et
        0x28t
        0x22t
        -0x70t
        0x12t
        0x35t
    .end array-data

    :array_330
    .array-data 1
        -0x60t
        -0x3ft
        0x61t
        0x3ct
        -0x46t
        0x7et
        -0x2et
        0x2bt
        -0x3ft
        0x73t
        -0x44t
        0xft
        0x48t
        -0x5at
        0x59t
        -0x31t
    .end array-data

    :array_33c
    .array-data 1
        0x75t
        0x6at
        -0x34t
        0x3t
        0x2t
        0x28t
        -0x7et
        -0x78t
        0x4at
        -0x2at
        -0x43t
        -0x3t
        -0x17t
        -0x3bt
        -0x63t
        -0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Haraka512Digest;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    iget p1, p1, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    return-void
.end method

.method private haraka512256([B[BI)I
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x4

    const/16 v5, 0x10

    filled-new-array {v4, v5}, [I

    move-result-object v6

    const-class v7, B

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    filled-new-array {v4, v5}, [I

    move-result-object v7

    const-class v8, B

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    const/4 v8, 0x0

    aget-object v9, v6, v8

    invoke-static {v1, v8, v9, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x1

    aget-object v10, v6, v9

    invoke-static {v1, v5, v10, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x2

    aget-object v11, v6, v10

    const/16 v12, 0x20

    invoke-static {v1, v12, v11, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x3

    aget-object v13, v6, v11

    const/16 v14, 0x30

    invoke-static {v1, v14, v13, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v13, v6, v8

    sget-object v15, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v15, v15, v8

    invoke-static {v13, v15}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v13

    aput-object v13, v6, v8

    aget-object v13, v6, v9

    sget-object v15, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v15, v15, v9

    invoke-static {v13, v15}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v13

    aput-object v13, v6, v9

    aget-object v13, v6, v10

    sget-object v15, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v15, v15, v10

    invoke-static {v13, v15}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v13

    aput-object v13, v6, v10

    aget-object v13, v6, v11

    sget-object v15, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v15, v15, v11

    invoke-static {v13, v15}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v13

    aput-object v13, v6, v11

    aget-object v13, v6, v8

    sget-object v15, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v4, v15, v4

    invoke-static {v13, v4}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v8

    aget-object v4, v6, v9

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v15, 0x5

    aget-object v13, v13, v15

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v9

    aget-object v4, v6, v10

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v15, 0x6

    aget-object v13, v13, v15

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v10

    aget-object v4, v6, v11

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v15, 0x7

    aget-object v13, v13, v15

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v11

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v4, v7, v8

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v15, 0x8

    aget-object v13, v13, v15

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v8

    aget-object v4, v7, v9

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0x9

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v9

    aget-object v4, v7, v10

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0xa

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v10

    aget-object v4, v7, v11

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0xb

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v11

    aget-object v4, v6, v8

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0xc

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v8

    aget-object v4, v6, v9

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0xd

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v9

    aget-object v4, v6, v10

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0xe

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v10

    aget-object v4, v6, v11

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0xf

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v11

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v4, v7, v8

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v13, v13, v5

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v8

    aget-object v4, v7, v9

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0x11

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v9

    aget-object v4, v7, v10

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0x12

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v10

    aget-object v4, v7, v11

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0x13

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v11

    aget-object v4, v6, v8

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0x14

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v8

    aget-object v4, v6, v9

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0x15

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v9

    aget-object v4, v6, v10

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0x16

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v10

    aget-object v4, v6, v11

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0x17

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v11

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v4, v7, v8

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v16, 0x18

    aget-object v13, v13, v16

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v8

    aget-object v4, v7, v9

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x19

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v9

    aget-object v4, v7, v10

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x1a

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v10

    aget-object v4, v7, v11

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x1b

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v11

    aget-object v4, v6, v8

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x1c

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v8

    aget-object v4, v6, v9

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x1d

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v9

    aget-object v4, v6, v10

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x1e

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v10

    aget-object v4, v6, v11

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x1f

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v11

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v4, v7, v8

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v13, v13, v12

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v8

    aget-object v4, v7, v9

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x21

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v9

    aget-object v4, v7, v10

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x22

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v10

    aget-object v4, v7, v11

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x23

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v11

    aget-object v4, v6, v8

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x24

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v8

    aget-object v4, v6, v9

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x25

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v9

    aget-object v4, v6, v10

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x26

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v10

    aget-object v4, v6, v11

    sget-object v13, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v17, 0x27

    aget-object v13, v13, v17

    invoke-static {v4, v13}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v4

    aput-object v4, v6, v11

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v4, v7, v8

    invoke-static {v4, v1, v8}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->xor([B[BI)[B

    move-result-object v4

    aput-object v4, v6, v8

    aget-object v4, v7, v9

    invoke-static {v4, v1, v5}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->xor([B[BI)[B

    move-result-object v4

    aput-object v4, v6, v9

    aget-object v4, v7, v10

    invoke-static {v4, v1, v12}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->xor([B[BI)[B

    move-result-object v4

    aput-object v4, v6, v10

    aget-object v4, v7, v11

    invoke-static {v4, v1, v14}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->xor([B[BI)[B

    move-result-object v1

    aput-object v1, v6, v11

    aget-object v1, v6, v8

    invoke-static {v1, v15, v2, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v6, v9

    add-int/lit8 v4, v3, 0x8

    invoke-static {v1, v15, v2, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v6, v10

    add-int/lit8 v4, v3, 0x10

    invoke-static {v1, v8, v2, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v6, v11

    add-int/lit8 v3, v3, 0x18

    invoke-static {v1, v8, v2, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v12
.end method

.method private mix512([[B[[B)V
    .registers 12

    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    const/16 v3, 0xc

    const/4 v4, 0x4

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    aget-object v2, p1, v1

    aget-object v5, p2, v0

    invoke-static {v2, v3, v5, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    aget-object v5, p1, v2

    aget-object v6, p2, v0

    const/16 v7, 0x8

    invoke-static {v5, v3, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x3

    aget-object v6, p1, v5

    aget-object v8, p2, v0

    invoke-static {v6, v3, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v1

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v0

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v5

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v2

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v1

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v0

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v5

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v2

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, p1, v0

    aget-object v8, p2, v5

    invoke-static {v6, v7, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v1

    aget-object v1, p2, v5

    invoke-static {v0, v7, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v2

    aget-object v1, p2, v5

    invoke-static {v0, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, p1, v5

    aget-object p2, p2, v5

    invoke-static {p1, v7, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1e

    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x20

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->haraka512256([B[BI)I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->reset()V

    return p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output too short to receive digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "input must be exactly 64 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "Haraka-512"

    return-object v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method

.method public update(B)V
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x40

    if-gt v1, v2, :cond_11

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    aput-byte p1, v1, v0

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "total input cannot be more than 64 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    add-int v1, v0, p3

    const/16 v2, 0x40

    if-gt v1, v2, :cond_13

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "total input cannot be more than 64 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
