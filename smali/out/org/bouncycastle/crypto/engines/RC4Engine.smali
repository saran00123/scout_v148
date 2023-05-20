.class public Lorg/bouncycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_LENGTH:I = 0x100


# instance fields
.field private engineState:[B

.field private workingKey:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    return-void
.end method

.method private setKey([B)V
    .registers 9

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/16 v2, 0x100

    if-nez v1, :cond_11

    new-array v1, v2, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    :cond_11
    move v1, v0

    :goto_12
    if-ge v1, v2, :cond_1c

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1c
    move v1, v0

    move v3, v1

    :goto_1e
    if-ge v0, v2, :cond_3b

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v6, v5, v0

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    aget-byte v4, v5, v0

    aget-byte v6, v5, v3

    aput-byte v6, v5, v0

    aput-byte v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    array-length v4, p1

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3b
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string v0, "RC4"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz p1, :cond_12

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to RC4 init - "

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

.method public processBytes([BII[BI)I
    .registers 12

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4b

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_43

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_42

    iget v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v3, v1, v2

    iget v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v1, v2

    iget v4, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v5, v1, v4

    aput-byte v5, v1, v2

    aput-byte v3, v1, v4

    add-int v3, v0, p5

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    aget-byte v2, v1, v2

    aget-byte v4, v1, v4

    add-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    xor-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_42
    return p3

    :cond_43
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void
.end method

.method public returnByte(B)B
    .registers 7

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v4, v0, v3

    aput-byte v4, v0, v1

    aput-byte v2, v0, v3

    aget-byte v1, v0, v1

    aget-byte v2, v0, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method
