.class public final Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;
.super Lorg/bouncycastle/crypto/digests/GOST3411_2012Digest;


# static fields
.field private static final IV:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;->IV:[B

    return-void

    :array_a
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;->IV:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411_2012Digest;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;)V
    .registers 3

    sget-object v0, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;->IV:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GOST3411_2012Digest;-><init>([B)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;-><init>(Lorg/bouncycastle/crypto/digests/GOST3411_2012_256Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 5

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/GOST3411_2012Digest;->doFinal([BI)I

    const/16 v1, 0x20

    invoke-static {v0, v1, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "GOST3411-2012-256"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method
