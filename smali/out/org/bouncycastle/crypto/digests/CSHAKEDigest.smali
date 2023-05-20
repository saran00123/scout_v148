.class public Lorg/bouncycastle/crypto/digests/CSHAKEDigest;
.super Lorg/bouncycastle/crypto/digests/SHAKEDigest;


# static fields
.field private static final padding:[B


# instance fields
.field private final diff:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->padding:[B

    return-void
.end method

.method public constructor <init>(I[B[B)V
    .registers 6

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    if-eqz p2, :cond_8

    array-length p1, p2

    if-nez p1, :cond_e

    :cond_8
    if-eqz p3, :cond_29

    array-length p1, p3

    if-nez p1, :cond_e

    goto :goto_29

    :cond_e
    iget p1, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->rate:I

    div-int/lit8 p1, p1, 0x8

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->encodeString([B)[B

    move-result-object p2

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->encodeString([B)[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diffPadAndAbsorb()V

    goto :goto_2c

    :cond_29
    :goto_29
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    :goto_2c
    return-void
.end method

.method private diffPadAndAbsorb()V
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->rate:I

    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->absorb([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    array-length v1, v1

    rem-int/2addr v1, v0

    if-eqz v1, :cond_22

    :goto_11
    sub-int/2addr v0, v1

    sget-object v1, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->padding:[B

    array-length v2, v1

    if-le v0, v2, :cond_1f

    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->absorb([BII)V

    sget-object v1, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->padding:[B

    array-length v1, v1

    goto :goto_11

    :cond_1f
    invoke-virtual {p0, v1, v3, v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->absorb([BII)V

    :cond_22
    return-void
.end method

.method private encodeString([B)[B
    .registers 6

    if-eqz p1, :cond_14

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_14

    :cond_6
    array-length v0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p1

    return-object p1

    :cond_14
    :goto_14
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public doOutput([BII)I
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->squeezing:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->absorbBits(II)V

    :cond_d
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->squeeze([BIJ)V

    return p3

    :cond_15
    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CSHAKE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->fixedOutputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diff:[B

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->diffPadAndAbsorb()V

    :cond_a
    return-void
.end method
