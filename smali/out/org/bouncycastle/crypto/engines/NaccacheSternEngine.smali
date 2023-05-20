.class public Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# instance fields
.field private debug:Z

.field private forEncryption:Z

.field private key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

.field private lookup:[Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    return-void
.end method

.method private static chineseRemainder(Ljava/util/Vector;Ljava/util/Vector;)Ljava/math/BigInteger;
    .registers 7

    sget-object v0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    :goto_7
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_1a

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1a
    :goto_1a
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_43

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_43
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addCryptedBlocks([B[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    const-string v1, "BlockLength too large for simple addition.\n"

    if-eqz v0, :cond_1b

    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getOutputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_15

    array-length v0, p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getOutputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_15

    goto :goto_29

    :cond_15
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_aa

    array-length v0, p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_aa

    :goto_29
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v1, :cond_88

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c(m1) as BigInteger:....... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c(m2) as BigInteger:....... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c(m1)*c(m2)%n = c(m1+m2)%n: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_88
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v2, p1

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    array-length p2, p2

    invoke-static {v1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_aa
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt(Ljava/math/BigInteger;)[B
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v2, v0

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz p1, :cond_48

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encrypted value is:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_48
    return-object v0
.end method

.method public getInputBlockSize()I
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getLowerSigmaBound()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getOutputBlockSize()I
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    return v0

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;->getLowerSigmaBound()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 12

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_c

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_c
    check-cast p2, Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-nez p1, :cond_96

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz p1, :cond_1f

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Constructing lookup Array"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1f
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    check-cast p1, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getSmallPrimes()Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_30
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_96

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v3, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v3, v3, v0

    sget-object v4, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v3, :cond_6c

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructing lookup ArrayList for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6c
    sget-object v3, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    const/4 v4, 0x1

    :goto_6f
    if-ge v4, v2, :cond_93

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getPhi_n()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v6, v6, v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_96
    return-void
.end method

.method public processBlock([BII)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    if-eqz v0, :cond_1aa

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-gt p3, v0, :cond_1a2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v0

    if-lt p3, v0, :cond_17

    goto :goto_1f

    :cond_17
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "BlockLength does not match modulus for Naccache-Stern cipher.\n"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    if-nez p2, :cond_25

    array-length v2, p1

    if-eq p3, v2, :cond_2b

    :cond_25
    new-array v2, p3, [B

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    :cond_2b
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz p1, :cond_4a

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input as BigInteger: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4a
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz p1, :cond_54

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->encrypt(Ljava/math/BigInteger;)[B

    move-result-object p1

    goto/16 :goto_1a1

    :cond_54
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/bouncycastle/crypto/params/NaccacheSternKeyParameters;

    check-cast p3, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getSmallPrimes()Ljava/util/Vector;

    move-result-object v1

    move v2, v0

    :goto_62
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_199

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getPhi_n()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v5, v4, v2

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    if-eq v4, v6, :cond_101

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz p1, :cond_be

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prime is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", lookup table has size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_be
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error in lookup Array for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/math/BigInteger;

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": Size mismatch. Expected ArrayList with length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/math/BigInteger;

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " but found ArrayList of length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object p3, p3, v2

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_101
    invoke-virtual {v5, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18d

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz p1, :cond_185

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Actual prime is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Decrypted value is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LookupList for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object p3, p3, v2

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_16b
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v0, p1, :cond_185

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object p2, p2, v2

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16b

    :cond_185
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "Lookup failed"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18d
    int-to-long v3, v4

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_62

    :cond_199
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->chineseRemainder(Ljava/util/Vector;Ljava/util/Vector;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    :goto_1a1
    return-object p1

    :cond_1a2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input too large for Naccache-Stern cipher.\n"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1aa
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "NaccacheStern engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processData([B)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    :cond_9
    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_e5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->getOutputBlockSize()I

    move-result v1

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    const-string v4, " bytes"

    if-eqz v3, :cond_6b

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input blocksize is:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Output blocksize is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data has length:.... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6b
    array-length v3, p1

    div-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    new-array v1, v3, [B

    move v3, v2

    move v5, v3

    :goto_74
    array-length v6, p1

    if-ge v3, v6, :cond_c1

    add-int v6, v3, v0

    array-length v7, p1

    if-ge v6, v7, :cond_84

    invoke-virtual {p0, p1, v3, v0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->processBlock([BII)[B

    move-result-object v3

    move v10, v6

    move-object v6, v3

    move v3, v10

    goto :goto_8d

    :cond_84
    array-length v6, p1

    sub-int/2addr v6, v3

    invoke-virtual {p0, p1, v3, v6}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->processBlock([BII)[B

    move-result-object v6

    array-length v7, p1

    sub-int/2addr v7, v3

    add-int/2addr v3, v7

    :goto_8d
    iget-boolean v7, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v7, :cond_a7

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new datapos is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a7
    if-eqz v6, :cond_b0

    array-length v7, v6

    invoke-static {v6, v2, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v5, v6

    goto :goto_74

    :cond_b0
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    const-string v0, "cipher returned null"

    if-eqz p1, :cond_bb

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_bb
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c1
    new-array p1, v5, [B

    invoke-static {v1, v2, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_e4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e4
    return-object p1

    :cond_e5
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v0, :cond_f0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "data size is less then input block size, processing directly"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f0
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->processBlock([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public setDebug(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    return-void
.end method