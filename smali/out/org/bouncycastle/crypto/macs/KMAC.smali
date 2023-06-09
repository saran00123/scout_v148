.class public Lorg/bouncycastle/crypto/macs/KMAC;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;
.implements Lorg/bouncycastle/crypto/Xof;


# static fields
.field private static final padding:[B


# instance fields
.field private final bitLength:I

.field private final cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

.field private firstOutput:Z

.field private initialised:Z

.field private key:[B

.field private final outputLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const-string v1, "KMAC"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(I[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    iput p1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->bitLength:I

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->outputLength:I

    return-void
.end method

.method private bytePad([BI)V
    .registers 6

    int-to-long v0, p2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/macs/KMAC;->encode([B)[B

    move-result-object p1

    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    array-length v0, v0

    array-length p1, p1

    add-int/2addr v0, p1

    rem-int/2addr v0, p2

    sub-int p1, p2, v0

    if-lez p1, :cond_2d

    if-eq p1, p2, :cond_2d

    :goto_1c
    sget-object p2, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    array-length v0, p2

    if-le p1, v0, :cond_2a

    array-length v0, p2

    invoke-virtual {p0, p2, v2, v0}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    sget-object p2, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    array-length p2, p2

    sub-int/2addr p1, p2

    goto :goto_1c

    :cond_2a
    invoke-virtual {p0, p2, v2, p1}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    :cond_2d
    return-void
.end method

.method private static encode([B)[B
    .registers 3

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->getMacSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    goto :goto_23

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "KMAC not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_23
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->getMacSize()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->reset()V

    return p1
.end method

.method public doFinal([BII)I
    .registers 8

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-eqz v0, :cond_17

    mul-int/lit8 v0, p3, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    goto :goto_1f

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "KMAC not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->reset()V

    return p1
.end method

.method public doOutput([BII)I
    .registers 8

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-eqz v0, :cond_18

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    goto :goto_20

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "KMAC not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :goto_20
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doOutput([BII)I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->outputLength:I

    return v0
.end method

.method public getMacSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->outputLength:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->key:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->reset()V

    return-void
.end method

.method public reset()V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->key:[B

    if-eqz v0, :cond_17

    iget v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->bitLength:I

    const/16 v2, 0x80

    if-ne v1, v2, :cond_12

    const/16 v1, 0xa8

    goto :goto_14

    :cond_12
    const/16 v1, 0x88

    :goto_14
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/macs/KMAC;->bytePad([BI)V

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    return-void
.end method

.method public update(B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update(B)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "KMAC not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "KMAC not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
