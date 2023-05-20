.class public Lorg/bouncycastle/crypto/engines/NullEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final DEFAULT_BLOCK_SIZE:I = 0x1


# instance fields
.field private final blockSize:I

.field private initialised:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/NullEngine;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->blockSize:I

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "Null"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->blockSize:I

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->initialised:Z

    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->initialised:Z

    if-eqz v0, :cond_30

    iget v0, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->blockSize:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_28

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_20

    const/4 v0, 0x0

    :goto_10
    iget v1, p0, Lorg/bouncycastle/crypto/engines/NullEngine;->blockSize:I

    if-ge v0, v1, :cond_1f

    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1f
    return v1

    :cond_20
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Null engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 1

    return-void
.end method
