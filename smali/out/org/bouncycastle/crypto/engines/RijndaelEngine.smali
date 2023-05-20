.class public Lorg/bouncycastle/crypto/engines/RijndaelEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final MAXKC:I = 0x40

.field private static final MAXROUNDS:I = 0xe

.field private static final S:[B

.field private static final Si:[B

.field private static final aLogtable:[B

.field private static final logtable:[B

.field private static final rcon:[I

.field static shifts0:[[B

.field static shifts1:[[B


# instance fields
.field private A0:J

.field private A1:J

.field private A2:J

.field private A3:J

.field private BC:I

.field private BC_MASK:J

.field private ROUNDS:I

.field private blockBits:I

.field private forEncryption:Z

.field private shifts0SC:[B

.field private shifts1SC:[B

.field private workingKey:[[J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v0, 0x100

    new-array v1, v0, [B

    fill-array-data v1, :array_7e

    sput-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    const/16 v1, 0x1ff

    new-array v1, v1, [B

    fill-array-data v1, :array_102

    sput-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_206

    sput-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_28a

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_30e

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->rcon:[I

    const/4 v0, 0x5

    new-array v1, v0, [[B

    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_34e

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_354

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [B

    fill-array-data v3, :array_35a

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [B

    fill-array-data v3, :array_360

    const/4 v7, 0x3

    aput-object v3, v1, v7

    new-array v3, v2, [B

    fill-array-data v3, :array_366

    aput-object v3, v1, v2

    sput-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    new-array v0, v0, [[B

    new-array v1, v2, [B

    fill-array-data v1, :array_36c

    aput-object v1, v0, v4

    new-array v1, v2, [B

    fill-array-data v1, :array_372

    aput-object v1, v0, v5

    new-array v1, v2, [B

    fill-array-data v1, :array_378

    aput-object v1, v0, v6

    new-array v1, v2, [B

    fill-array-data v1, :array_37e

    aput-object v1, v0, v7

    new-array v1, v2, [B

    fill-array-data v1, :array_384

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    return-void

    :array_7e
    .array-data 1
        0x0t
        0x0t
        0x19t
        0x1t
        0x32t
        0x2t
        0x1at
        -0x3at
        0x4bt
        -0x39t
        0x1bt
        0x68t
        0x33t
        -0x12t
        -0x21t
        0x3t
        0x64t
        0x4t
        -0x20t
        0xet
        0x34t
        -0x73t
        -0x7ft
        -0x11t
        0x4ct
        0x71t
        0x8t
        -0x38t
        -0x8t
        0x69t
        0x1ct
        -0x3ft
        0x7dt
        -0x3et
        0x1dt
        -0x4bt
        -0x7t
        -0x47t
        0x27t
        0x6at
        0x4dt
        -0x1ct
        -0x5at
        0x72t
        -0x66t
        -0x37t
        0x9t
        0x78t
        0x65t
        0x2ft
        -0x76t
        0x5t
        0x21t
        0xft
        -0x1ft
        0x24t
        0x12t
        -0x10t
        -0x7et
        0x45t
        0x35t
        -0x6dt
        -0x26t
        -0x72t
        -0x6at
        -0x71t
        -0x25t
        -0x43t
        0x36t
        -0x30t
        -0x32t
        -0x6ct
        0x13t
        0x5ct
        -0x2et
        -0xft
        0x40t
        0x46t
        -0x7dt
        0x38t
        0x66t
        -0x23t
        -0x3t
        0x30t
        -0x41t
        0x6t
        -0x75t
        0x62t
        -0x4dt
        0x25t
        -0x1et
        -0x68t
        0x22t
        -0x78t
        -0x6ft
        0x10t
        0x7et
        0x6et
        0x48t
        -0x3dt
        -0x5dt
        -0x4at
        0x1et
        0x42t
        0x3at
        0x6bt
        0x28t
        0x54t
        -0x6t
        -0x7bt
        0x3dt
        -0x46t
        0x2bt
        0x79t
        0xat
        0x15t
        -0x65t
        -0x61t
        0x5et
        -0x36t
        0x4et
        -0x2ct
        -0x54t
        -0x1bt
        -0xdt
        0x73t
        -0x59t
        0x57t
        -0x51t
        0x58t
        -0x58t
        0x50t
        -0xct
        -0x16t
        -0x2at
        0x74t
        0x4ft
        -0x52t
        -0x17t
        -0x2bt
        -0x19t
        -0x1at
        -0x53t
        -0x18t
        0x2ct
        -0x29t
        0x75t
        0x7at
        -0x15t
        0x16t
        0xbt
        -0xbt
        0x59t
        -0x35t
        0x5ft
        -0x50t
        -0x64t
        -0x57t
        0x51t
        -0x60t
        0x7ft
        0xct
        -0xat
        0x6ft
        0x17t
        -0x3ct
        0x49t
        -0x14t
        -0x28t
        0x43t
        0x1ft
        0x2dt
        -0x5ct
        0x76t
        0x7bt
        -0x49t
        -0x34t
        -0x45t
        0x3et
        0x5at
        -0x5t
        0x60t
        -0x4ft
        -0x7at
        0x3bt
        0x52t
        -0x5ft
        0x6ct
        -0x56t
        0x55t
        0x29t
        -0x63t
        -0x69t
        -0x4et
        -0x79t
        -0x70t
        0x61t
        -0x42t
        -0x24t
        -0x4t
        -0x44t
        -0x6bt
        -0x31t
        -0x33t
        0x37t
        0x3ft
        0x5bt
        -0x2ft
        0x53t
        0x39t
        -0x7ct
        0x3ct
        0x41t
        -0x5et
        0x6dt
        0x47t
        0x14t
        0x2at
        -0x62t
        0x5dt
        0x56t
        -0xet
        -0x2dt
        -0x55t
        0x44t
        0x11t
        -0x6et
        -0x27t
        0x23t
        0x20t
        0x2et
        -0x77t
        -0x4ct
        0x7ct
        -0x48t
        0x26t
        0x77t
        -0x67t
        -0x1dt
        -0x5bt
        0x67t
        0x4at
        -0x13t
        -0x22t
        -0x3bt
        0x31t
        -0x2t
        0x18t
        0xdt
        0x63t
        -0x74t
        -0x80t
        -0x40t
        -0x9t
        0x70t
        0x7t
    .end array-data

    :array_102
    .array-data 1
        0x0t
        0x3t
        0x5t
        0xft
        0x11t
        0x33t
        0x55t
        -0x1t
        0x1at
        0x2et
        0x72t
        -0x6at
        -0x5ft
        -0x8t
        0x13t
        0x35t
        0x5ft
        -0x1ft
        0x38t
        0x48t
        -0x28t
        0x73t
        -0x6bt
        -0x5ct
        -0x9t
        0x2t
        0x6t
        0xat
        0x1et
        0x22t
        0x66t
        -0x56t
        -0x1bt
        0x34t
        0x5ct
        -0x1ct
        0x37t
        0x59t
        -0x15t
        0x26t
        0x6at
        -0x42t
        -0x27t
        0x70t
        -0x70t
        -0x55t
        -0x1at
        0x31t
        0x53t
        -0xbt
        0x4t
        0xct
        0x14t
        0x3ct
        0x44t
        -0x34t
        0x4ft
        -0x2ft
        0x68t
        -0x48t
        -0x2dt
        0x6et
        -0x4et
        -0x33t
        0x4ct
        -0x2ct
        0x67t
        -0x57t
        -0x20t
        0x3bt
        0x4dt
        -0x29t
        0x62t
        -0x5at
        -0xft
        0x8t
        0x18t
        0x28t
        0x78t
        -0x78t
        -0x7dt
        -0x62t
        -0x47t
        -0x30t
        0x6bt
        -0x43t
        -0x24t
        0x7ft
        -0x7ft
        -0x68t
        -0x4dt
        -0x32t
        0x49t
        -0x25t
        0x76t
        -0x66t
        -0x4bt
        -0x3ct
        0x57t
        -0x7t
        0x10t
        0x30t
        0x50t
        -0x10t
        0xbt
        0x1dt
        0x27t
        0x69t
        -0x45t
        -0x2at
        0x61t
        -0x5dt
        -0x2t
        0x19t
        0x2bt
        0x7dt
        -0x79t
        -0x6et
        -0x53t
        -0x14t
        0x2ft
        0x71t
        -0x6dt
        -0x52t
        -0x17t
        0x20t
        0x60t
        -0x60t
        -0x5t
        0x16t
        0x3at
        0x4et
        -0x2et
        0x6dt
        -0x49t
        -0x3et
        0x5dt
        -0x19t
        0x32t
        0x56t
        -0x6t
        0x15t
        0x3ft
        0x41t
        -0x3dt
        0x5et
        -0x1et
        0x3dt
        0x47t
        -0x37t
        0x40t
        -0x40t
        0x5bt
        -0x13t
        0x2ct
        0x74t
        -0x64t
        -0x41t
        -0x26t
        0x75t
        -0x61t
        -0x46t
        -0x2bt
        0x64t
        -0x54t
        -0x11t
        0x2at
        0x7et
        -0x7et
        -0x63t
        -0x44t
        -0x21t
        0x7at
        -0x72t
        -0x77t
        -0x80t
        -0x65t
        -0x4at
        -0x3ft
        0x58t
        -0x18t
        0x23t
        0x65t
        -0x51t
        -0x16t
        0x25t
        0x6ft
        -0x4ft
        -0x38t
        0x43t
        -0x3bt
        0x54t
        -0x4t
        0x1ft
        0x21t
        0x63t
        -0x5bt
        -0xct
        0x7t
        0x9t
        0x1bt
        0x2dt
        0x77t
        -0x67t
        -0x50t
        -0x35t
        0x46t
        -0x36t
        0x45t
        -0x31t
        0x4at
        -0x22t
        0x79t
        -0x75t
        -0x7at
        -0x6ft
        -0x58t
        -0x1dt
        0x3et
        0x42t
        -0x3at
        0x51t
        -0xdt
        0xet
        0x12t
        0x36t
        0x5at
        -0x12t
        0x29t
        0x7bt
        -0x73t
        -0x74t
        -0x71t
        -0x76t
        -0x7bt
        -0x6ct
        -0x59t
        -0xet
        0xdt
        0x17t
        0x39t
        0x4bt
        -0x23t
        0x7ct
        -0x7ct
        -0x69t
        -0x5et
        -0x3t
        0x1ct
        0x24t
        0x6ct
        -0x4ct
        -0x39t
        0x52t
        -0xat
        0x1t
        0x3t
        0x5t
        0xft
        0x11t
        0x33t
        0x55t
        -0x1t
        0x1at
        0x2et
        0x72t
        -0x6at
        -0x5ft
        -0x8t
        0x13t
        0x35t
        0x5ft
        -0x1ft
        0x38t
        0x48t
        -0x28t
        0x73t
        -0x6bt
        -0x5ct
        -0x9t
        0x2t
        0x6t
        0xat
        0x1et
        0x22t
        0x66t
        -0x56t
        -0x1bt
        0x34t
        0x5ct
        -0x1ct
        0x37t
        0x59t
        -0x15t
        0x26t
        0x6at
        -0x42t
        -0x27t
        0x70t
        -0x70t
        -0x55t
        -0x1at
        0x31t
        0x53t
        -0xbt
        0x4t
        0xct
        0x14t
        0x3ct
        0x44t
        -0x34t
        0x4ft
        -0x2ft
        0x68t
        -0x48t
        -0x2dt
        0x6et
        -0x4et
        -0x33t
        0x4ct
        -0x2ct
        0x67t
        -0x57t
        -0x20t
        0x3bt
        0x4dt
        -0x29t
        0x62t
        -0x5at
        -0xft
        0x8t
        0x18t
        0x28t
        0x78t
        -0x78t
        -0x7dt
        -0x62t
        -0x47t
        -0x30t
        0x6bt
        -0x43t
        -0x24t
        0x7ft
        -0x7ft
        -0x68t
        -0x4dt
        -0x32t
        0x49t
        -0x25t
        0x76t
        -0x66t
        -0x4bt
        -0x3ct
        0x57t
        -0x7t
        0x10t
        0x30t
        0x50t
        -0x10t
        0xbt
        0x1dt
        0x27t
        0x69t
        -0x45t
        -0x2at
        0x61t
        -0x5dt
        -0x2t
        0x19t
        0x2bt
        0x7dt
        -0x79t
        -0x6et
        -0x53t
        -0x14t
        0x2ft
        0x71t
        -0x6dt
        -0x52t
        -0x17t
        0x20t
        0x60t
        -0x60t
        -0x5t
        0x16t
        0x3at
        0x4et
        -0x2et
        0x6dt
        -0x49t
        -0x3et
        0x5dt
        -0x19t
        0x32t
        0x56t
        -0x6t
        0x15t
        0x3ft
        0x41t
        -0x3dt
        0x5et
        -0x1et
        0x3dt
        0x47t
        -0x37t
        0x40t
        -0x40t
        0x5bt
        -0x13t
        0x2ct
        0x74t
        -0x64t
        -0x41t
        -0x26t
        0x75t
        -0x61t
        -0x46t
        -0x2bt
        0x64t
        -0x54t
        -0x11t
        0x2at
        0x7et
        -0x7et
        -0x63t
        -0x44t
        -0x21t
        0x7at
        -0x72t
        -0x77t
        -0x80t
        -0x65t
        -0x4at
        -0x3ft
        0x58t
        -0x18t
        0x23t
        0x65t
        -0x51t
        -0x16t
        0x25t
        0x6ft
        -0x4ft
        -0x38t
        0x43t
        -0x3bt
        0x54t
        -0x4t
        0x1ft
        0x21t
        0x63t
        -0x5bt
        -0xct
        0x7t
        0x9t
        0x1bt
        0x2dt
        0x77t
        -0x67t
        -0x50t
        -0x35t
        0x46t
        -0x36t
        0x45t
        -0x31t
        0x4at
        -0x22t
        0x79t
        -0x75t
        -0x7at
        -0x6ft
        -0x58t
        -0x1dt
        0x3et
        0x42t
        -0x3at
        0x51t
        -0xdt
        0xet
        0x12t
        0x36t
        0x5at
        -0x12t
        0x29t
        0x7bt
        -0x73t
        -0x74t
        -0x71t
        -0x76t
        -0x7bt
        -0x6ct
        -0x59t
        -0xet
        0xdt
        0x17t
        0x39t
        0x4bt
        -0x23t
        0x7ct
        -0x7ct
        -0x69t
        -0x5et
        -0x3t
        0x1ct
        0x24t
        0x6ct
        -0x4ct
        -0x39t
        0x52t
        -0xat
        0x1t
    .end array-data

    :array_206
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_28a
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    :array_30e
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    :array_34e
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_354
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_35a
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x18t
    .end array-data

    :array_360
    .array-data 1
        0x0t
        0x8t
        0x10t
        0x20t
    .end array-data

    :array_366
    .array-data 1
        0x0t
        0x8t
        0x18t
        0x20t
    .end array-data

    :array_36c
    .array-data 1
        0x0t
        0x18t
        0x10t
        0x8t
    .end array-data

    :array_372
    .array-data 1
        0x0t
        0x20t
        0x18t
        0x10t
    .end array-data

    :array_378
    .array-data 1
        0x0t
        0x28t
        0x20t
        0x18t
    .end array-data

    :array_37e
    .array-data 1
        0x0t
        0x30t
        0x28t
        0x18t
    .end array-data

    :array_384
    .array-data 1
        0x0t
        0x38t
        0x28t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    if-eq p1, v0, :cond_80

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_67

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_4e

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_35

    const/16 v0, 0x100

    if-ne p1, v0, :cond_2d

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_98

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown blocksize to Rijndael"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    const/16 v0, 0x38

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_98

    :cond_4e
    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_98

    :cond_67
    const/16 v0, 0x28

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    goto :goto_98

    :cond_80
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    :goto_98
    iput p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->blockBits:I

    return-void
.end method

.method private InvMixColumn()V
    .registers 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    move-wide v6, v4

    move-wide v8, v6

    :goto_8
    iget v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v3, v10, :cond_b6

    iget-wide v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v10, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v14, v3

    and-long/2addr v14, v12

    long-to-int v11, v14

    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v14, v3

    and-long/2addr v14, v12

    long-to-int v14, v14

    move-wide v15, v8

    iget-wide v8, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v8, v3

    and-long/2addr v8, v12

    long-to-int v8, v8

    const/4 v9, -0x1

    if-eqz v10, :cond_2f

    sget-object v12, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    goto :goto_30

    :cond_2f
    move v10, v9

    :goto_30
    if-eqz v11, :cond_3b

    sget-object v12, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    goto :goto_3c

    :cond_3b
    move v11, v9

    :goto_3c
    if-eqz v14, :cond_47

    sget-object v12, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v13, v14, 0xff

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    goto :goto_48

    :cond_47
    move v12, v9

    :goto_48
    if-eqz v8, :cond_52

    sget-object v9, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v9, v8

    and-int/lit16 v9, v8, 0xff

    :cond_52
    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v8

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v13

    xor-int/2addr v8, v13

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v13

    xor-int/2addr v8, v13

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v13

    xor-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    int-to-long v13, v8

    shl-long/2addr v13, v3

    or-long/2addr v1, v13

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v8

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v13

    xor-int/2addr v8, v13

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v13

    xor-int/2addr v8, v13

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v13

    xor-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    int-to-long v13, v8

    shl-long/2addr v13, v3

    or-long/2addr v4, v13

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v8

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v13

    xor-int/2addr v8, v13

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v13

    xor-int/2addr v8, v13

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v13

    xor-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    int-to-long v13, v8

    shl-long/2addr v13, v3

    or-long/2addr v6, v13

    invoke-direct {v0, v9}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xe(I)B

    move-result v8

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xb(I)B

    move-result v9

    xor-int/2addr v8, v9

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0xd(I)B

    move-result v9

    xor-int/2addr v8, v9

    invoke-direct {v0, v12}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x9(I)B

    move-result v9

    xor-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    shl-long/2addr v8, v3

    or-long/2addr v8, v15

    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_8

    :cond_b6
    move-wide v15, v8

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iput-wide v4, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iput-wide v6, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    move-wide v1, v15

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private KeyAddition([J)V
    .registers 6

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private MixColumn()V
    .registers 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    move-wide v6, v4

    move-wide v8, v6

    :goto_8
    iget v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v3, v10, :cond_66

    iget-wide v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v10, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v14, v3

    and-long/2addr v14, v12

    long-to-int v11, v14

    iget-wide v14, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v14, v3

    and-long/2addr v14, v12

    long-to-int v14, v14

    move-wide v15, v8

    iget-wide v8, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v8, v3

    and-long/2addr v8, v12

    long-to-int v8, v8

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v9

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v12

    xor-int/2addr v9, v12

    xor-int/2addr v9, v14

    xor-int/2addr v9, v8

    and-int/lit16 v9, v9, 0xff

    int-to-long v12, v9

    shl-long/2addr v12, v3

    or-long/2addr v1, v12

    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v9

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v12

    xor-int/2addr v9, v12

    xor-int/2addr v9, v8

    xor-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    int-to-long v12, v9

    shl-long/2addr v12, v3

    or-long/2addr v4, v12

    invoke-direct {v0, v14}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v9

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v12

    xor-int/2addr v9, v12

    xor-int/2addr v9, v10

    xor-int/2addr v9, v11

    and-int/lit16 v9, v9, 0xff

    int-to-long v12, v9

    shl-long/2addr v12, v3

    or-long/2addr v6, v12

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x2(I)B

    move-result v8

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->mul0x3(I)B

    move-result v9

    xor-int/2addr v8, v9

    xor-int/2addr v8, v11

    xor-int/2addr v8, v14

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    shl-long/2addr v8, v3

    or-long/2addr v8, v15

    add-int/lit8 v3, v3, 0x8

    goto :goto_8

    :cond_66
    move-wide v15, v8

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iput-wide v4, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iput-wide v6, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    move-wide v1, v15

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private ShiftRow([B)V
    .registers 5

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/4 v2, 0x3

    aget-byte p1, p1, v2

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shift(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private Substitution([B)V
    .registers 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->applyS(J[B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    return-void
.end method

.method private applyS(J[B)J
    .registers 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    iget v3, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-ge v2, v3, :cond_17

    shr-long v3, p1, v2

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v2

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_3

    :cond_17
    return-wide v0
.end method

.method private decryptBlock([[J)V
    .registers 4

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-lez v0, :cond_2c

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->InvMixColumn()V

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Si:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts1SC:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_2c
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    return-void
.end method

.method private encryptBlock([[J)V
    .registers 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    const/4 v0, 0x1

    :goto_7
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    if-ge v0, v1, :cond_20

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->MixColumn()V

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->Substitution([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->shifts0SC:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ShiftRow([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->KeyAddition([J)V

    return-void
.end method

.method private generateWorkingKey([B)[[J
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/16 v3, 0x8

    mul-int/2addr v2, v3

    const/4 v4, 0x4

    const/16 v5, 0x40

    filled-new-array {v4, v5}, [I

    move-result-object v5

    const-class v6, B

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    const/16 v6, 0xf

    filled-new-array {v6, v4}, [I

    move-result-object v6

    const-class v7, J

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    const/16 v7, 0x80

    const/4 v9, 0x6

    if-eq v2, v7, :cond_4a

    const/16 v7, 0xa0

    if-eq v2, v7, :cond_48

    const/16 v7, 0xc0

    if-eq v2, v7, :cond_46

    const/16 v7, 0xe0

    if-eq v2, v7, :cond_44

    const/16 v7, 0x100

    if-ne v2, v7, :cond_3c

    move v7, v3

    goto :goto_4b

    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key length not 128/160/192/224/256 bits."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_44
    const/4 v7, 0x7

    goto :goto_4b

    :cond_46
    move v7, v9

    goto :goto_4b

    :cond_48
    const/4 v7, 0x5

    goto :goto_4b

    :cond_4a
    move v7, v4

    :goto_4b
    iget v10, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->blockBits:I

    if-lt v2, v10, :cond_52

    add-int/lit8 v2, v7, 0x6

    goto :goto_56

    :cond_52
    iget v2, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/2addr v2, v3

    add-int/2addr v2, v9

    :goto_56
    iput v2, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    const/4 v2, 0x0

    move v10, v2

    move v11, v10

    :goto_5b
    array-length v12, v1

    if-ge v10, v12, :cond_6e

    rem-int/lit8 v12, v10, 0x4

    aget-object v12, v5, v12

    div-int/lit8 v13, v10, 0x4

    add-int/lit8 v14, v11, 0x1

    aget-byte v11, v1, v11

    aput-byte v11, v12, v13

    add-int/lit8 v10, v10, 0x1

    move v11, v14

    goto :goto_5b

    :cond_6e
    move v1, v2

    move v10, v1

    :goto_70
    const/4 v11, 0x1

    if-ge v1, v7, :cond_a7

    iget v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/2addr v12, v11

    iget v13, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/2addr v13, v3

    mul-int/2addr v12, v13

    if-ge v10, v12, :cond_a7

    move v11, v2

    :goto_7d
    if-ge v11, v4, :cond_9f

    iget v12, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v13, v12, 0x8

    div-int v13, v10, v13

    aget-object v13, v6, v13

    aget-wide v14, v13, v11

    aget-object v16, v5, v11

    aget-byte v8, v16, v1

    and-int/lit16 v8, v8, 0xff

    move-object/from16 v17, v5

    int-to-long v4, v8

    mul-int/lit8 v8, v10, 0x8

    rem-int/2addr v8, v12

    shl-long/2addr v4, v8

    or-long/2addr v4, v14

    aput-wide v4, v13, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v17

    const/4 v4, 0x4

    goto :goto_7d

    :cond_9f
    move-object/from16 v17, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x4

    goto :goto_70

    :cond_a7
    move-object/from16 v17, v5

    move v1, v2

    :goto_aa
    iget v4, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/2addr v4, v11

    iget v5, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/2addr v5, v3

    mul-int/2addr v4, v5

    if-ge v10, v4, :cond_18f

    move v4, v2

    :goto_b4
    const/4 v5, 0x4

    if-ge v4, v5, :cond_d0

    aget-object v5, v17, v4

    aget-byte v8, v5, v2

    sget-object v12, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v13, v4, 0x4

    aget-object v13, v17, v13

    add-int/lit8 v14, v7, -0x1

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    xor-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    goto :goto_b4

    :cond_d0
    aget-object v4, v17, v2

    aget-byte v5, v4, v2

    sget-object v8, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->rcon:[I

    add-int/lit8 v12, v1, 0x1

    aget v1, v8, v1

    xor-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v4, v2

    if-gt v7, v9, :cond_fb

    move v1, v11

    :goto_e1
    if-ge v1, v7, :cond_14c

    move v4, v2

    :goto_e4
    const/4 v5, 0x4

    if-ge v4, v5, :cond_f8

    aget-object v5, v17, v4

    aget-byte v8, v5, v1

    aget-object v13, v17, v4

    add-int/lit8 v14, v1, -0x1

    aget-byte v13, v13, v14

    xor-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, v5, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_e4

    :cond_f8
    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    :cond_fb
    move v1, v11

    :goto_fc
    const/4 v4, 0x4

    if-ge v1, v4, :cond_117

    move v5, v2

    :goto_100
    if-ge v5, v4, :cond_114

    aget-object v4, v17, v5

    aget-byte v8, v4, v1

    aget-object v13, v17, v5

    add-int/lit8 v14, v1, -0x1

    aget-byte v13, v13, v14

    xor-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x4

    goto :goto_100

    :cond_114
    add-int/lit8 v1, v1, 0x1

    goto :goto_fc

    :cond_117
    move v1, v2

    :goto_118
    if-ge v1, v4, :cond_130

    aget-object v5, v17, v1

    aget-byte v8, v5, v4

    sget-object v13, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->S:[B

    aget-object v14, v17, v1

    const/4 v15, 0x3

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    xor-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    :cond_130
    const/4 v1, 0x5

    :goto_131
    if-ge v1, v7, :cond_14c

    move v5, v2

    :goto_134
    if-ge v5, v4, :cond_148

    aget-object v4, v17, v5

    aget-byte v8, v4, v1

    aget-object v13, v17, v5

    add-int/lit8 v14, v1, -0x1

    aget-byte v13, v13, v14

    xor-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x4

    goto :goto_134

    :cond_148
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x4

    goto :goto_131

    :cond_14c
    move v1, v2

    :goto_14d
    if-ge v1, v7, :cond_186

    iget v4, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->ROUNDS:I

    add-int/2addr v4, v11

    iget v5, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/2addr v5, v3

    mul-int/2addr v4, v5

    if-ge v10, v4, :cond_186

    move v4, v2

    const/4 v5, 0x4

    :goto_15a
    if-ge v4, v5, :cond_17d

    iget v8, v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v13, v8, 0x8

    div-int v13, v10, v13

    aget-object v13, v6, v13

    aget-wide v14, v13, v4

    aget-object v16, v17, v4

    aget-byte v2, v16, v1

    and-int/lit16 v2, v2, 0xff

    move/from16 v16, v12

    int-to-long v11, v2

    mul-int/lit8 v2, v10, 0x8

    rem-int/2addr v2, v8

    shl-long/2addr v11, v2

    or-long/2addr v11, v14

    aput-wide v11, v13, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v16

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_15a

    :cond_17d
    move/from16 v16, v12

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_14d

    :cond_186
    move/from16 v16, v12

    const/4 v5, 0x4

    move/from16 v1, v16

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto/16 :goto_aa

    :cond_18f
    return-object v6
.end method

.method private mul0x2(I)B
    .registers 4

    if-eqz p1, :cond_f

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, 0x19

    aget-byte p1, v0, p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private mul0x3(I)B
    .registers 4

    if-eqz p1, :cond_f

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    sget-object v1, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->logtable:[B

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private mul0x9(I)B
    .registers 3

    if-ltz p1, :cond_9

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 p1, p1, 0xc7

    aget-byte p1, v0, p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private mul0xb(I)B
    .registers 3

    if-ltz p1, :cond_9

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit8 p1, p1, 0x68

    aget-byte p1, v0, p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private mul0xd(I)B
    .registers 3

    if-ltz p1, :cond_9

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 p1, p1, 0xee

    aget-byte p1, v0, p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private mul0xe(I)B
    .registers 3

    if-ltz p1, :cond_9

    sget-object v0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->aLogtable:[B

    add-int/lit16 p1, p1, 0xdf

    aget-byte p1, v0, p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private packBlock([BI)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-eq v0, v1, :cond_2c

    add-int/lit8 v1, p2, 0x1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 p2, v1, 0x1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, p2, 0x1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 p2, v1, 0x1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_2c
    return-void
.end method

.method private shift(JI)J
    .registers 7

    ushr-long v0, p1, p3

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    sub-int/2addr v2, p3

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC_MASK:J

    and-long/2addr p1, v0

    return-wide p1
.end method

.method private unpackBlock([BI)V
    .registers 9

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v1, p2

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v1, p2

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    const/16 v0, 0x8

    :goto_26
    iget v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    if-eq v0, v1, :cond_61

    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v4, p2

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A0:J

    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    add-int/lit8 p2, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A1:J

    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v4, p2

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A2:J

    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    add-int/lit8 p2, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->A3:J

    add-int/lit8 v0, v0, 0x8

    goto :goto_26

    :cond_61
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "Rijndael"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_13

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->generateWorkingKey([B)[[J

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->forEncryption:Z

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to Rijndael init - "

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
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    if-eqz v0, :cond_3f

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    array-length v2, p1

    if-gt v1, v2, :cond_37

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_2f

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->forEncryption:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->unpackBlock([BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->encryptBlock([[J)V

    goto :goto_27

    :cond_1f
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->unpackBlock([BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->workingKey:[[J

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->decryptBlock([[J)V

    :goto_27
    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->packBlock([BI)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/RijndaelEngine;->BC:I

    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_2f
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Rijndael engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 1

    return-void
.end method
