.class public Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;
.super Lorg/bouncycastle/crypto/generators/DESKeyGenerator;


# static fields
.field private static final MAX_IT:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .registers 5

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :cond_6
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x14

    if-ge v2, v3, :cond_21

    array-length v3, v0

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_21
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v1

    if-eqz v1, :cond_2f

    return-object v0

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to generate DES-EDE key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 5

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v0, 0x18

    if-eqz p1, :cond_39

    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_1d

    goto :goto_39

    :cond_1d
    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0xe

    const/16 v2, 0x10

    if-ne p1, v1, :cond_28

    iput v2, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    goto :goto_3b

    :cond_28
    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq p1, v0, :cond_3b

    iget p1, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-ne p1, v2, :cond_31

    goto :goto_3b

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DESede key must be 192 or 128 bits long."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    :goto_39
    iput v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    :cond_3b
    :goto_3b
    return-void
.end method
