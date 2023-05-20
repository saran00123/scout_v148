.class public Lorg/bouncycastle/crypto/digests/DSTU7564Digest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final NB_1024:I = 0x10

.field private static final NB_512:I = 0x8

.field private static final NR_1024:I = 0xe

.field private static final NR_512:I = 0xa

.field private static final S0:[B

.field private static final S1:[B

.field private static final S2:[B

.field private static final S3:[B


# instance fields
.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private columns:I

.field private hashSize:I

.field private inputBlocks:J

.field private rounds:I

.field private state:[J

.field private tempState1:[J

.field private tempState2:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x100

    new-array v1, v0, [B

    fill-array-data v1, :array_20

    sput-object v1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S0:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_a4

    sput-object v1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S1:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_128

    sput-object v1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S2:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1ac

    sput-object v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S3:[B

    return-void

    nop

    :array_20
    .array-data 1
        -0x58t
        0x43t
        0x5ft
        0x6t
        0x6bt
        0x75t
        0x6ct
        0x59t
        0x71t
        -0x21t
        -0x79t
        -0x6bt
        0x17t
        -0x10t
        -0x28t
        0x9t
        0x6dt
        -0xdt
        0x1dt
        -0x35t
        -0x37t
        0x4dt
        0x2ct
        -0x51t
        0x79t
        -0x20t
        -0x69t
        -0x3t
        0x6ft
        0x4bt
        0x45t
        0x39t
        0x3et
        -0x23t
        -0x5dt
        0x4ft
        -0x4ct
        -0x4at
        -0x66t
        0xet
        0x1ft
        -0x41t
        0x15t
        -0x1ft
        0x49t
        -0x2et
        -0x6dt
        -0x3at
        -0x6et
        0x72t
        -0x62t
        0x61t
        -0x2ft
        0x63t
        -0x6t
        -0x12t
        -0xct
        0x19t
        -0x2bt
        -0x53t
        0x58t
        -0x5ct
        -0x45t
        -0x5ft
        -0x24t
        -0xet
        -0x7dt
        0x37t
        0x42t
        -0x1ct
        0x7at
        0x32t
        -0x64t
        -0x34t
        -0x55t
        0x4at
        -0x71t
        0x6et
        0x4t
        0x27t
        0x2et
        -0x19t
        -0x1et
        0x5at
        -0x6at
        0x16t
        0x23t
        0x2bt
        -0x3et
        0x65t
        0x66t
        0xft
        -0x44t
        -0x57t
        0x47t
        0x41t
        0x34t
        0x48t
        -0x4t
        -0x49t
        0x6at
        -0x78t
        -0x5bt
        0x53t
        -0x7at
        -0x7t
        0x5bt
        -0x25t
        0x38t
        0x7bt
        -0x3dt
        0x1et
        0x22t
        0x33t
        0x24t
        0x28t
        0x36t
        -0x39t
        -0x4et
        0x3bt
        -0x72t
        0x77t
        -0x46t
        -0xbt
        0x14t
        -0x61t
        0x8t
        0x55t
        -0x65t
        0x4ct
        -0x2t
        0x60t
        0x5ct
        -0x26t
        0x18t
        0x46t
        -0x33t
        0x7dt
        0x21t
        -0x50t
        0x3ft
        0x1bt
        -0x77t
        -0x1t
        -0x15t
        -0x7ct
        0x69t
        0x3at
        -0x63t
        -0x29t
        -0x2dt
        0x70t
        0x67t
        0x40t
        -0x4bt
        -0x22t
        0x5dt
        0x30t
        -0x6ft
        -0x4ft
        0x78t
        0x11t
        0x1t
        -0x1bt
        0x0t
        0x68t
        -0x68t
        -0x60t
        -0x3bt
        0x2t
        -0x5at
        0x74t
        0x2dt
        0xbt
        -0x5et
        0x76t
        -0x4dt
        -0x42t
        -0x32t
        -0x43t
        -0x52t
        -0x17t
        -0x76t
        0x31t
        0x1ct
        -0x14t
        -0xft
        -0x67t
        -0x6ct
        -0x56t
        -0xat
        0x26t
        0x2ft
        -0x11t
        -0x18t
        -0x74t
        0x35t
        0x3t
        -0x2ct
        0x7ft
        -0x5t
        0x5t
        -0x3ft
        0x5et
        -0x70t
        0x20t
        0x3dt
        -0x7et
        -0x9t
        -0x16t
        0xat
        0xdt
        0x7et
        -0x8t
        0x50t
        0x1at
        -0x3ct
        0x7t
        0x57t
        -0x48t
        0x3ct
        0x62t
        -0x1dt
        -0x38t
        -0x54t
        0x52t
        0x64t
        0x10t
        -0x30t
        -0x27t
        0x13t
        0xct
        0x12t
        0x29t
        0x51t
        -0x47t
        -0x31t
        -0x2at
        0x73t
        -0x73t
        -0x7ft
        0x54t
        -0x40t
        -0x13t
        0x4et
        0x44t
        -0x59t
        0x2at
        -0x7bt
        0x25t
        -0x1at
        -0x36t
        0x7ct
        -0x75t
        0x56t
        -0x80t
    .end array-data

    :array_a4
    .array-data 1
        -0x32t
        -0x45t
        -0x15t
        -0x6et
        -0x16t
        -0x35t
        0x13t
        -0x3ft
        -0x17t
        0x3at
        -0x2at
        -0x4et
        -0x2et
        -0x70t
        0x17t
        -0x8t
        0x42t
        0x15t
        0x56t
        -0x4ct
        0x65t
        0x1ct
        -0x78t
        0x43t
        -0x3bt
        0x5ct
        0x36t
        -0x46t
        -0xbt
        0x57t
        0x67t
        -0x73t
        0x31t
        -0xat
        0x64t
        0x58t
        -0x62t
        -0xct
        0x22t
        -0x56t
        0x75t
        0xft
        0x2t
        -0x4ft
        -0x21t
        0x6dt
        0x73t
        0x4dt
        0x7ct
        0x26t
        0x2et
        -0x9t
        0x8t
        0x5dt
        0x44t
        0x3et
        -0x61t
        0x14t
        -0x38t
        -0x52t
        0x54t
        0x10t
        -0x28t
        -0x44t
        0x1at
        0x6bt
        0x69t
        -0xdt
        -0x43t
        0x33t
        -0x55t
        -0x6t
        -0x2ft
        -0x65t
        0x68t
        0x4et
        0x16t
        -0x6bt
        -0x6ft
        -0x12t
        0x4ct
        0x63t
        -0x72t
        0x5bt
        -0x34t
        0x3ct
        0x19t
        -0x5ft
        -0x7ft
        0x49t
        0x7bt
        -0x27t
        0x6ft
        0x37t
        0x60t
        -0x36t
        -0x19t
        0x2bt
        0x48t
        -0x3t
        -0x6at
        0x45t
        -0x4t
        0x41t
        0x12t
        0xdt
        0x79t
        -0x1bt
        -0x77t
        -0x74t
        -0x1dt
        0x20t
        0x30t
        -0x24t
        -0x49t
        0x6ct
        0x4at
        -0x4bt
        0x3ft
        -0x69t
        -0x2ct
        0x62t
        0x2dt
        0x6t
        -0x5ct
        -0x5bt
        -0x7dt
        0x5ft
        0x2at
        -0x26t
        -0x37t
        0x0t
        0x7et
        -0x5et
        0x55t
        -0x41t
        0x11t
        -0x2bt
        -0x64t
        -0x31t
        0xet
        0xat
        0x3dt
        0x51t
        0x7dt
        -0x6dt
        0x1bt
        -0x2t
        -0x3ct
        0x47t
        0x9t
        -0x7at
        0xbt
        -0x71t
        -0x63t
        0x6at
        0x7t
        -0x47t
        -0x50t
        -0x68t
        0x18t
        0x32t
        0x71t
        0x4bt
        -0x11t
        0x3bt
        0x70t
        -0x60t
        -0x1ct
        0x40t
        -0x1t
        -0x3dt
        -0x57t
        -0x1at
        0x78t
        -0x7t
        -0x75t
        0x46t
        -0x80t
        0x1et
        0x38t
        -0x1ft
        -0x48t
        -0x58t
        -0x20t
        0xct
        0x23t
        0x76t
        0x1dt
        0x25t
        0x24t
        0x5t
        -0xft
        0x6et
        -0x6ct
        0x28t
        -0x66t
        -0x7ct
        -0x18t
        -0x5dt
        0x4ft
        0x77t
        -0x2dt
        -0x7bt
        -0x1et
        0x52t
        -0xet
        -0x7et
        0x50t
        0x7at
        0x2ft
        0x74t
        0x53t
        -0x4dt
        0x61t
        -0x51t
        0x39t
        0x35t
        -0x22t
        -0x33t
        0x1ft
        -0x67t
        -0x54t
        -0x53t
        0x72t
        0x2ct
        -0x23t
        -0x30t
        -0x79t
        -0x42t
        0x5et
        -0x5at
        -0x14t
        0x4t
        -0x3at
        0x3t
        0x34t
        -0x5t
        -0x25t
        0x59t
        -0x4at
        -0x3et
        0x1t
        -0x10t
        0x5at
        -0x13t
        -0x59t
        0x66t
        0x21t
        0x7ft
        -0x76t
        0x27t
        -0x39t
        -0x40t
        0x29t
        -0x29t
    .end array-data

    :array_128
    .array-data 1
        -0x6dt
        -0x27t
        -0x66t
        -0x4bt
        -0x68t
        0x22t
        0x45t
        -0x4t
        -0x46t
        0x6at
        -0x21t
        0x2t
        -0x61t
        -0x24t
        0x51t
        0x59t
        0x4at
        0x17t
        0x2bt
        -0x3et
        -0x6ct
        -0xct
        -0x45t
        -0x5dt
        0x62t
        -0x1ct
        0x71t
        -0x2ct
        -0x33t
        0x70t
        0x16t
        -0x1ft
        0x49t
        0x3ct
        -0x40t
        -0x28t
        0x5ct
        -0x65t
        -0x53t
        -0x7bt
        0x53t
        -0x5ft
        0x7at
        -0x38t
        0x2dt
        -0x20t
        -0x2ft
        0x72t
        -0x5at
        0x2ct
        -0x3ct
        -0x1dt
        0x76t
        0x78t
        -0x49t
        -0x4ct
        0x9t
        0x3bt
        0xet
        0x41t
        0x4ct
        -0x22t
        -0x4et
        -0x70t
        0x25t
        -0x5bt
        -0x29t
        0x3t
        0x11t
        0x0t
        -0x3dt
        0x2et
        -0x6et
        -0x11t
        0x4et
        0x12t
        -0x63t
        0x7dt
        -0x35t
        0x35t
        0x10t
        -0x2bt
        0x4ft
        -0x62t
        0x4dt
        -0x57t
        0x55t
        -0x3at
        -0x30t
        0x7bt
        0x18t
        -0x69t
        -0x2dt
        0x36t
        -0x1at
        0x48t
        0x56t
        -0x7ft
        -0x71t
        0x77t
        -0x34t
        -0x64t
        -0x47t
        -0x1et
        -0x54t
        -0x48t
        0x2ft
        0x15t
        -0x5ct
        0x7ct
        -0x26t
        0x38t
        0x1et
        0xbt
        0x5t
        -0x2at
        0x14t
        0x6et
        0x6ct
        0x7et
        0x66t
        -0x3t
        -0x4ft
        -0x1bt
        0x60t
        -0x51t
        0x5et
        0x33t
        -0x79t
        -0x37t
        -0x10t
        0x5dt
        0x6dt
        0x3ft
        -0x78t
        -0x73t
        -0x39t
        -0x9t
        0x1dt
        -0x17t
        -0x14t
        -0x13t
        -0x80t
        0x29t
        0x27t
        -0x31t
        -0x67t
        -0x58t
        0x50t
        0xft
        0x37t
        0x24t
        0x28t
        0x30t
        -0x6bt
        -0x2et
        0x3et
        0x5bt
        0x40t
        -0x7dt
        -0x4dt
        0x69t
        0x57t
        0x1ft
        0x7t
        0x1ct
        -0x76t
        -0x44t
        0x20t
        -0x15t
        -0x32t
        -0x72t
        -0x55t
        -0x12t
        0x31t
        -0x5et
        0x73t
        -0x7t
        -0x36t
        0x3at
        0x1at
        -0x5t
        0xdt
        -0x3ft
        -0x2t
        -0x6t
        -0xet
        0x6ft
        -0x43t
        -0x6at
        -0x23t
        0x43t
        0x52t
        -0x4at
        0x8t
        -0xdt
        -0x52t
        -0x42t
        0x19t
        -0x77t
        0x32t
        0x26t
        -0x50t
        -0x16t
        0x4bt
        0x64t
        -0x7ct
        -0x7et
        0x6bt
        -0xbt
        0x79t
        -0x41t
        0x1t
        0x5ft
        0x75t
        0x63t
        0x1bt
        0x23t
        0x3dt
        0x68t
        0x2at
        0x65t
        -0x18t
        -0x6ft
        -0xat
        -0x1t
        0x13t
        0x58t
        -0xft
        0x47t
        0xat
        0x7ft
        -0x3bt
        -0x59t
        -0x19t
        0x61t
        0x5at
        0x6t
        0x46t
        0x44t
        0x42t
        0x4t
        -0x60t
        -0x25t
        0x39t
        -0x7at
        0x54t
        -0x56t
        -0x74t
        0x34t
        0x21t
        -0x75t
        -0x8t
        0xct
        0x74t
        0x67t
    .end array-data

    :array_1ac
    .array-data 1
        0x68t
        -0x73t
        -0x36t
        0x4dt
        0x73t
        0x4bt
        0x4et
        0x2at
        -0x2ct
        0x52t
        0x26t
        -0x4dt
        0x54t
        0x1et
        0x19t
        0x1ft
        0x22t
        0x3t
        0x46t
        0x3dt
        0x2dt
        0x4at
        0x53t
        -0x7dt
        0x13t
        -0x76t
        -0x49t
        -0x2bt
        0x25t
        0x79t
        -0xbt
        -0x43t
        0x58t
        0x2ft
        0xdt
        0x2t
        -0x13t
        0x51t
        -0x62t
        0x11t
        -0xet
        0x3et
        0x55t
        0x5et
        -0x2ft
        0x16t
        0x3ct
        0x66t
        0x70t
        0x5dt
        -0xdt
        0x45t
        0x40t
        -0x34t
        -0x18t
        -0x6ct
        0x56t
        0x8t
        -0x32t
        0x1at
        0x3at
        -0x2et
        -0x1ft
        -0x21t
        -0x4bt
        0x38t
        0x6et
        0xet
        -0x1bt
        -0xct
        -0x7t
        -0x7at
        -0x17t
        0x4ft
        -0x2at
        -0x7bt
        0x23t
        -0x31t
        0x32t
        -0x67t
        0x31t
        0x14t
        -0x52t
        -0x12t
        -0x38t
        0x48t
        -0x2dt
        0x30t
        -0x5ft
        -0x6et
        0x41t
        -0x4ft
        0x18t
        -0x3ct
        0x2ct
        0x71t
        0x72t
        0x44t
        0x15t
        -0x3t
        0x37t
        -0x42t
        0x5ft
        -0x56t
        -0x65t
        -0x78t
        -0x28t
        -0x55t
        -0x77t
        -0x64t
        -0x6t
        0x60t
        -0x16t
        -0x44t
        0x62t
        0xct
        0x24t
        -0x5at
        -0x58t
        -0x14t
        0x67t
        0x20t
        -0x25t
        0x7ct
        0x28t
        -0x23t
        -0x54t
        0x5bt
        0x34t
        0x7et
        0x10t
        -0xft
        0x7bt
        -0x71t
        0x63t
        -0x60t
        0x5t
        -0x66t
        0x43t
        0x77t
        0x21t
        -0x41t
        0x27t
        0x9t
        -0x3dt
        -0x61t
        -0x4at
        -0x29t
        0x29t
        -0x3et
        -0x15t
        -0x40t
        -0x5ct
        -0x75t
        -0x74t
        0x1dt
        -0x5t
        -0x1t
        -0x3ft
        -0x4et
        -0x69t
        0x2et
        -0x8t
        0x65t
        -0xat
        0x75t
        0x7t
        0x4t
        0x49t
        0x33t
        -0x1ct
        -0x27t
        -0x47t
        -0x30t
        0x42t
        -0x39t
        0x6ct
        -0x70t
        0x0t
        -0x72t
        0x6ft
        0x50t
        0x1t
        -0x3bt
        -0x26t
        0x47t
        0x3ft
        -0x33t
        0x69t
        -0x5et
        -0x1et
        0x7at
        -0x59t
        -0x3at
        -0x6dt
        0xft
        0xat
        0x6t
        -0x1at
        0x2bt
        -0x6at
        -0x5dt
        0x1ct
        -0x51t
        0x6at
        0x12t
        -0x7ct
        0x39t
        -0x19t
        -0x50t
        -0x7et
        -0x9t
        -0x2t
        -0x63t
        -0x79t
        0x5ct
        -0x7ft
        0x35t
        -0x22t
        -0x4ct
        -0x5bt
        -0x4t
        -0x80t
        -0x11t
        -0x35t
        -0x45t
        0x6bt
        0x76t
        -0x46t
        0x5at
        0x7dt
        0x78t
        0xbt
        -0x6bt
        -0x1dt
        -0x53t
        0x74t
        -0x68t
        0x3bt
        0x36t
        0x64t
        0x6dt
        -0x24t
        -0x10t
        0x59t
        -0x57t
        0x4ct
        0x17t
        0x7ft
        -0x6ft
        -0x48t
        -0x37t
        0x57t
        0x1bt
        -0x20t
        0x61t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    if-eq p1, v0, :cond_18

    const/16 v1, 0x180

    if-eq p1, v1, :cond_18

    const/16 v1, 0x200

    if-ne p1, v1, :cond_10

    goto :goto_18

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hash size is not recommended. Use 256/384/512 instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    :goto_18
    ushr-int/lit8 v1, p1, 0x3

    iput v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    if-le p1, v0, :cond_25

    const/16 p1, 0x10

    iput p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/16 p1, 0xe

    goto :goto_2b

    :cond_25
    const/16 p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    const/16 p1, 0xa

    :goto_2b
    iput p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    iget p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    shl-int/lit8 v0, p1, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    int-to-long v3, v2

    aput-wide v3, v0, v1

    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState2:[J

    new-array p1, v2, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/DSTU7564Digest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->copyIn(Lorg/bouncycastle/crypto/digests/DSTU7564Digest;)V

    return-void
.end method

.method private P([J)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    if-ge v1, v2, :cond_24

    int-to-long v2, v1

    move-wide v3, v2

    move v2, v0

    :goto_9
    iget v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v5, :cond_18

    aget-wide v5, p1, v2

    xor-long/2addr v5, v3

    aput-wide v5, p1, v2

    const-wide/16 v5, 0x10

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->shiftRows([J)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->subBytes([J)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->mixColumns([J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return-void
.end method

.method private Q([J)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    if-ge v1, v2, :cond_34

    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v2, v2, 0x4

    xor-int/2addr v2, v1

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    const-wide v4, 0xf0f0f0f0f0f0f3L    # 3.860005775059271E-304

    or-long/2addr v2, v4

    move-wide v3, v2

    move v2, v0

    :goto_19
    iget v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v2, v5, :cond_28

    aget-wide v5, p1, v2

    add-long/2addr v5, v3

    aput-wide v5, p1, v2

    const-wide/high16 v5, 0x1000000000000000L

    sub-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_28
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->shiftRows([J)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->subBytes([J)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->mixColumns([J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_34
    return-void
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/DSTU7564Digest;)V
    .registers 6

    iget v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rounds:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-lez v0, :cond_26

    iget v1, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ne v0, v1, :cond_26

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44

    :cond_26
    iget v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    new-array v1, v0, [J

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState2:[J

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    :goto_44
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    iget p1, p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    return-void
.end method

.method private static mixColumn(J)J
    .registers 14

    const-wide v0, 0x7f7f7f7f7f7f7f7fL    # 1.3824172084878715E306

    and-long/2addr v0, p0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, p0, v2

    const/4 v6, 0x7

    ushr-long/2addr v4, v6

    const-wide/16 v6, 0x1d

    mul-long/2addr v4, v6

    xor-long/2addr v0, v4

    const/16 v4, 0x8

    invoke-static {v4, p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v4

    xor-long/2addr v4, p0

    const/16 v8, 0x10

    invoke-static {v8, v4, v5}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v8

    xor-long/2addr v4, v8

    const/16 v8, 0x30

    invoke-static {v8, p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v9

    xor-long/2addr v4, v9

    xor-long/2addr p0, v4

    xor-long/2addr p0, v0

    const-wide v9, 0x3f3f3f3f3f3f3f3fL    # 4.767922794117647E-4

    and-long/2addr v9, p0

    const/4 v11, 0x2

    shl-long/2addr v9, v11

    and-long/2addr v2, p0

    const/4 v11, 0x6

    ushr-long/2addr v2, v11

    mul-long/2addr v2, v6

    xor-long/2addr v2, v9

    const-wide v9, 0x4040404040404040L    # 32.501960784313724

    and-long/2addr p0, v9

    ushr-long/2addr p0, v11

    mul-long/2addr p0, v6

    xor-long/2addr p0, v2

    const/16 v2, 0x20

    invoke-static {v2, p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide p0

    xor-long/2addr p0, v4

    const/16 v2, 0x28

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v2

    xor-long/2addr p0, v2

    invoke-static {v8, v0, v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->rotate(IJ)J

    move-result-wide v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private mixColumns([J)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, v1, :cond_10

    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->mixColumn(J)J

    move-result-wide v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method private processBlock([BI)V
    .registers 11

    const/4 v0, 0x0

    move v1, p2

    move p2, v0

    :goto_3
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge p2, v2, :cond_1e

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    add-int/lit8 v1, v1, 0x8

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    aget-wide v6, v5, p2

    xor-long v5, v6, v2

    aput-wide v5, v4, p2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState2:[J

    aput-wide v2, v4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_1e
    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->P([J)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState2:[J

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->Q([J)V

    :goto_28
    iget p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, p1, :cond_3f

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    aget-wide v1, p1, v0

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    aget-wide v3, p2, v0

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState2:[J

    aget-wide v5, p2, v0

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_3f
    return-void
.end method

.method private static rotate(IJ)J
    .registers 5

    ushr-long v0, p1, p0

    neg-int p0, p0

    shl-long p0, p1, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private shiftRows([J)V
    .registers 59

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    const-wide v2, 0xffffffff000000L

    const-wide v4, -0x100000000L

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide v17, -0xffff00010000L

    const-wide v19, -0xff00ff00ff0100L    # -5.82767264895205E303

    if-eq v1, v6, :cond_1c8

    const/16 v15, 0x10

    if-ne v1, v15, :cond_1c0

    aget-wide v15, p1, v14

    aget-wide v23, p1, v13

    aget-wide v25, p1, v12

    aget-wide v27, p1, v11

    aget-wide v29, p1, v10

    aget-wide v31, p1, v9

    aget-wide v33, p1, v8

    aget-wide v35, p1, v7

    aget-wide v37, p1, v6

    const/16 v1, 0x9

    aget-wide v39, p1, v1

    const/16 v41, 0xa

    aget-wide v41, p1, v41

    const/16 v43, 0xb

    aget-wide v43, p1, v43

    const/16 v45, 0xc

    aget-wide v45, p1, v45

    const/16 v47, 0xd

    aget-wide v47, p1, v47

    const/16 v49, 0xe

    aget-wide v49, p1, v49

    const/16 v51, 0xf

    aget-wide v51, p1, v51

    xor-long v53, v15, v37

    const-wide/high16 v55, -0x100000000000000L

    and-long v53, v53, v55

    xor-long v15, v15, v53

    xor-long v37, v37, v53

    xor-long v53, v23, v39

    and-long v53, v53, v55

    xor-long v23, v23, v53

    xor-long v39, v39, v53

    xor-long v53, v25, v41

    const-wide/high16 v55, -0x1000000000000L

    and-long v53, v53, v55

    xor-long v25, v25, v53

    xor-long v41, v41, v53

    xor-long v53, v27, v43

    const-wide v55, -0x10000000000L

    and-long v53, v53, v55

    xor-long v27, v27, v53

    xor-long v43, v43, v53

    xor-long v53, v29, v45

    and-long v4, v53, v4

    xor-long v29, v29, v4

    xor-long v4, v45, v4

    xor-long v45, v31, v47

    and-long v2, v45, v2

    xor-long v31, v31, v2

    xor-long v2, v47, v2

    xor-long v45, v33, v49

    const-wide v47, 0xffffffffff0000L

    and-long v45, v45, v47

    xor-long v33, v33, v45

    xor-long v45, v49, v45

    xor-long v47, v35, v51

    const-wide v49, 0xffffffffffff00L

    and-long v47, v47, v49

    xor-long v35, v35, v47

    xor-long v47, v51, v47

    xor-long v49, v15, v29

    const-wide v51, 0xffffff00000000L

    and-long v49, v49, v51

    xor-long v15, v15, v49

    xor-long v29, v29, v49

    xor-long v49, v23, v31

    const-wide/32 v51, -0x1000000

    and-long v49, v49, v51

    xor-long v23, v23, v49

    xor-long v31, v31, v49

    xor-long v49, v25, v33

    const-wide v51, -0xff000000010000L

    and-long v49, v49, v51

    xor-long v25, v25, v49

    xor-long v33, v33, v49

    xor-long v49, v27, v35

    const-wide v51, -0xffff0000000100L    # -5.48746345455236E303

    and-long v49, v49, v51

    xor-long v27, v27, v49

    xor-long v35, v35, v49

    xor-long v49, v37, v4

    const-wide v51, 0xffffff00000000L

    and-long v49, v49, v51

    xor-long v37, v37, v49

    xor-long v4, v4, v49

    xor-long v49, v39, v2

    const-wide/32 v51, -0x1000000

    and-long v49, v49, v51

    xor-long v39, v39, v49

    xor-long v2, v2, v49

    xor-long v49, v41, v45

    const-wide v51, -0xff000000010000L

    and-long v49, v49, v51

    xor-long v41, v41, v49

    xor-long v45, v45, v49

    xor-long v49, v43, v47

    const-wide v51, -0xffff0000000100L    # -5.48746345455236E303

    and-long v49, v49, v51

    xor-long v43, v43, v49

    xor-long v47, v47, v49

    xor-long v49, v15, v25

    and-long v49, v49, v17

    xor-long v15, v15, v49

    xor-long v25, v25, v49

    xor-long v49, v23, v27

    const-wide v21, 0xffff0000ffff00L

    and-long v49, v49, v21

    xor-long v23, v23, v49

    xor-long v27, v27, v49

    xor-long v49, v29, v33

    and-long v49, v49, v17

    xor-long v29, v29, v49

    xor-long v33, v33, v49

    xor-long v49, v31, v35

    and-long v49, v49, v21

    xor-long v31, v31, v49

    xor-long v35, v35, v49

    xor-long v49, v37, v41

    and-long v49, v49, v17

    xor-long v37, v37, v49

    xor-long v41, v41, v49

    xor-long v49, v39, v43

    and-long v49, v49, v21

    xor-long v39, v39, v49

    xor-long v43, v43, v49

    xor-long v49, v4, v45

    and-long v17, v49, v17

    xor-long v4, v4, v17

    xor-long v17, v45, v17

    xor-long v45, v2, v47

    and-long v21, v45, v21

    xor-long v2, v2, v21

    xor-long v21, v47, v21

    xor-long v45, v15, v23

    and-long v45, v45, v19

    xor-long v15, v15, v45

    xor-long v23, v23, v45

    xor-long v45, v25, v27

    and-long v45, v45, v19

    xor-long v25, v25, v45

    xor-long v27, v27, v45

    xor-long v45, v29, v31

    and-long v45, v45, v19

    xor-long v29, v29, v45

    xor-long v31, v31, v45

    xor-long v45, v33, v35

    and-long v45, v45, v19

    xor-long v33, v33, v45

    xor-long v35, v35, v45

    xor-long v45, v37, v39

    and-long v45, v45, v19

    xor-long v37, v37, v45

    xor-long v39, v39, v45

    xor-long v45, v41, v43

    and-long v45, v45, v19

    xor-long v41, v41, v45

    xor-long v43, v43, v45

    xor-long v45, v4, v2

    and-long v45, v45, v19

    xor-long v4, v4, v45

    xor-long v2, v2, v45

    xor-long v45, v17, v21

    and-long v19, v45, v19

    xor-long v17, v17, v19

    xor-long v19, v21, v19

    aput-wide v15, p1, v14

    aput-wide v23, p1, v13

    aput-wide v25, p1, v12

    aput-wide v27, p1, v11

    aput-wide v29, p1, v10

    aput-wide v31, p1, v9

    aput-wide v33, p1, v8

    aput-wide v35, p1, v7

    aput-wide v37, p1, v6

    aput-wide v39, p1, v1

    const/16 v1, 0xa

    aput-wide v41, p1, v1

    const/16 v1, 0xb

    aput-wide v43, p1, v1

    const/16 v1, 0xc

    aput-wide v4, p1, v1

    const/16 v1, 0xd

    aput-wide v2, p1, v1

    const/16 v1, 0xe

    aput-wide v17, p1, v1

    const/16 v1, 0xf

    aput-wide v19, p1, v1

    goto/16 :goto_256

    :cond_1c0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported state size: only 512/1024 are allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c8
    aget-wide v15, p1, v14

    aget-wide v23, p1, v13

    aget-wide v25, p1, v12

    aget-wide v27, p1, v11

    aget-wide v29, p1, v10

    aget-wide v31, p1, v9

    aget-wide v33, p1, v8

    aget-wide v35, p1, v7

    xor-long v37, v15, v29

    and-long v4, v37, v4

    xor-long/2addr v15, v4

    xor-long v4, v29, v4

    xor-long v29, v23, v31

    and-long v1, v29, v2

    xor-long v23, v23, v1

    xor-long v1, v31, v1

    xor-long v29, v25, v33

    const-wide v31, 0xffffffff0000L

    and-long v29, v29, v31

    xor-long v25, v25, v29

    xor-long v29, v33, v29

    xor-long v31, v27, v35

    const-wide v33, 0xffffffff00L

    and-long v31, v31, v33

    xor-long v27, v27, v31

    xor-long v31, v35, v31

    xor-long v33, v15, v25

    and-long v33, v33, v17

    xor-long v15, v15, v33

    xor-long v25, v25, v33

    xor-long v33, v23, v27

    const-wide v21, 0xffff0000ffff00L

    and-long v33, v33, v21

    xor-long v23, v23, v33

    xor-long v27, v27, v33

    xor-long v33, v4, v29

    and-long v17, v33, v17

    xor-long v3, v4, v17

    xor-long v5, v29, v17

    xor-long v17, v1, v31

    and-long v17, v17, v21

    xor-long v1, v1, v17

    xor-long v17, v31, v17

    xor-long v21, v15, v23

    and-long v21, v21, v19

    xor-long v15, v15, v21

    xor-long v21, v23, v21

    xor-long v23, v25, v27

    and-long v23, v23, v19

    xor-long v25, v25, v23

    xor-long v23, v27, v23

    xor-long v27, v3, v1

    and-long v27, v27, v19

    xor-long v3, v3, v27

    xor-long v1, v1, v27

    xor-long v27, v5, v17

    and-long v19, v27, v19

    xor-long v5, v5, v19

    xor-long v17, v17, v19

    aput-wide v15, p1, v14

    aput-wide v21, p1, v13

    aput-wide v25, p1, v12

    aput-wide v23, p1, v11

    aput-wide v3, p1, v10

    aput-wide v1, p1, v9

    aput-wide v5, p1, v8

    aput-wide v17, p1, v7

    :goto_256
    return-void
.end method

.method private subBytes([J)V
    .registers 13

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v0, v1, :cond_6b

    aget-wide v1, p1, v0

    long-to-int v3, v1

    const/16 v4, 0x20

    ushr-long/2addr v1, v4

    long-to-int v1, v1

    sget-object v2, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S0:[B

    and-int/lit16 v5, v3, 0xff

    aget-byte v5, v2, v5

    sget-object v6, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S1:[B

    ushr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v7, v6, v7

    sget-object v8, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S2:[B

    ushr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v8, v9

    sget-object v10, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->S3:[B

    ushr-int/lit8 v3, v3, 0x18

    aget-byte v3, v10, v3

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    and-int/lit16 v7, v9, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v5

    and-int/lit16 v5, v1, 0xff

    aget-byte v2, v2, v5

    ushr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v6, v5

    ushr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v8, v6

    ushr-int/lit8 v1, v1, 0x18

    aget-byte v1, v10, v1

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v2

    int-to-long v2, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    int-to-long v5, v1

    shl-long v4, v5, v4

    or-long v1, v2, v4

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6b
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;-><init>(Lorg/bouncycastle/crypto/digests/DSTU7564Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 11

    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    const/16 v2, -0x80

    aput-byte v2, v1, v0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    add-int/lit8 v1, v1, -0xc

    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    const/4 v3, 0x0

    if-le v2, v1, :cond_2b

    :goto_15
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    if-ge v2, v4, :cond_24

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    aput-byte v3, v4, v2

    goto :goto_15

    :cond_24
    iput v3, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    :cond_2b
    :goto_2b
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    if-ge v2, v1, :cond_38

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    aput-byte v3, v4, v2

    goto :goto_2b

    :cond_38
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    int-to-long v6, v1

    mul-long/2addr v4, v6

    int-to-long v0, v0

    add-long/2addr v4, v0

    const/4 v0, 0x3

    shl-long/2addr v4, v0

    long-to-int v1, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-static {v1, v6, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    ushr-long v1, v6, v1

    iget v6, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    int-to-long v6, v6

    mul-long/2addr v1, v6

    shl-long/2addr v1, v0

    add-long/2addr v4, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    invoke-static {v4, v5, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    iget v4, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->P([J)V

    :goto_7b
    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v3, v1, :cond_8d

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    aget-wide v4, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->tempState1:[J

    aget-wide v6, v2, v3

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :cond_8d
    iget v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    ushr-int/lit8 v0, v2, 0x3

    sub-int/2addr v1, v0

    :goto_92
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->columns:I

    if-ge v1, v0, :cond_a2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    aget-wide v2, v0, v1

    invoke-static {v2, v3, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_a2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->reset()V

    iget p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "DSTU7564"

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->hashSize:I

    return v0
.end method

.method public reset()V
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->state:[J

    iget v3, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    int-to-long v3, v3

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    iput v5, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 2

    check-cast p1, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->copyIn(Lorg/bouncycastle/crypto/digests/DSTU7564Digest;)V

    return-void
.end method

.method public update(B)V
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    aput-byte p1, v0, v1

    iget p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    if-ne p1, v1, :cond_1d

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    iput p1, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    :cond_1d
    return-void
.end method

.method public update([BII)V
    .registers 8

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->bufOff:I

    if-eqz v0, :cond_11

    if-lez p3, :cond_11

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->update(B)V

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_11
    if-lez p3, :cond_33

    :goto_13
    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    if-lt p3, v0, :cond_26

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->processBlock([BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->blockSize:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->inputBlocks:J

    goto :goto_13

    :cond_26
    :goto_26
    if-lez p3, :cond_33

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->update(B)V

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_26

    :cond_33
    return-void
.end method
