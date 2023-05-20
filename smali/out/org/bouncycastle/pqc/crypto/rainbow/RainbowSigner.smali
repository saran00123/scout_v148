.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# static fields
.field private static final MAXITS:I = 0x10000


# instance fields
.field private cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

.field key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

.field private random:Ljava/security/SecureRandom;

.field signableDocumentLength:I

.field private x:[S


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    return-void
.end method

.method private initSign([Lorg/bouncycastle/pqc/crypto/rainbow/Layer;[S)[S
    .registers 7

    array-length v0, p2

    new-array v0, v0, [S

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getB1()[S

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA1()[[S

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_21
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v2

    if-ge v1, v2, :cond_40

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    aget-short v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_40
    return-object p2
.end method

.method private makeMessageRepresentative([B)[S
    .registers 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    new-array v0, v0, [S

    const/4 v1, 0x0

    move v2, v1

    :cond_6
    array-length v3, p1

    if-lt v1, v3, :cond_a

    goto :goto_1d

    :cond_a
    aget-byte v3, p1, v2

    int-to-short v3, v3

    aput-short v3, v0, v1

    aget-short v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_6

    :goto_1d
    return-object v0
.end method

.method private verifySignatureIntern([S)[S
    .registers 15

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffQuadratic()[[S

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffSingular()[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffScalar()[S

    move-result-object v2

    array-length v3, v0

    new-array v3, v3, [S

    const/4 v4, 0x0

    aget-object v5, v1, v4

    array-length v5, v5

    move v6, v4

    :goto_20
    array-length v7, v0

    if-ge v6, v7, :cond_6b

    move v7, v4

    move v8, v7

    :goto_25
    if-ge v7, v5, :cond_5e

    move v9, v8

    move v8, v7

    :goto_29
    if-ge v8, v5, :cond_48

    aget-object v10, v0, v6

    aget-short v10, v10, v9

    aget-short v11, p1, v7

    aget-short v12, p1, v8

    invoke-static {v11, v12}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v11

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v10

    aget-short v11, v3, v6

    invoke-static {v11, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v10

    aput-short v10, v3, v6

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_48
    aget-object v8, v1, v6

    aget-short v8, v8, v7

    aget-short v10, p1, v7

    invoke-static {v8, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v8

    aget-short v10, v3, v6

    invoke-static {v10, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v8

    aput-short v8, v3, v6

    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_25

    :cond_5e
    aget-short v7, v3, v6

    aget-short v8, v2, v6

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_6b
    return-object v3
.end method


# virtual methods
.method public generateSignature([B)[B
    .registers 15

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getLayers()[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getViNext()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object p1

    const/4 v3, 0x0

    move v4, v3

    :cond_26
    :try_start_26
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->initSign([Lorg/bouncycastle/pqc/crypto/rainbow/Layer;[S)[S

    move-result-object v5

    move v6, v3

    move v7, v6

    :goto_2c
    if-ge v6, v1, :cond_81

    aget-object v8, v0, v6

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v8

    new-array v8, v8, [S

    aget-object v9, v0, v6

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v9

    new-array v9, v9, [S

    move v9, v7

    move v7, v3

    :goto_40
    aget-object v10, v0, v6

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v10

    if-ge v7, v10, :cond_51

    aget-short v10, v5, v9

    aput-short v10, v8, v7

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_51
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    aget-object v10, v0, v6

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    invoke-virtual {v10, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->plugInVinegars([S)[[S

    move-result-object v10

    invoke-virtual {v7, v10, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->solveEquation([[S[S)[S

    move-result-object v7

    if-eqz v7, :cond_79

    move v8, v3

    :goto_62
    array-length v10, v7

    if-ge v8, v10, :cond_75

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    aget-object v11, v0, v6

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v11

    add-int/2addr v11, v8

    aget-short v12, v7, v8

    aput-short v12, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    :cond_75
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_2c

    :cond_79
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "LES is not solveable!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_81
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v6, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getB2()[S

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v7, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v5

    move v6, v3

    :goto_a0
    array-length v7, v2

    if-ge v6, v7, :cond_ab

    aget-short v7, v5, v6

    int-to-byte v7, v7

    aput-byte v7, v2, v6
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_a8} :catch_ad

    add-int/lit8 v6, v6, 0x1

    goto :goto_a0

    :cond_ab
    const/4 v5, 0x1

    goto :goto_ae

    :catch_ad
    move v5, v3

    :goto_ae
    const/high16 v6, 0x10000

    if-nez v5, :cond_b6

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v6, :cond_26

    :cond_b6
    if-eq v4, v6, :cond_b9

    return-object v2

    :cond_b9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unable to generate signature - LES not solvable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 3

    if-eqz p1, :cond_20

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_17

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_24

    :cond_17
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    check-cast p2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    goto :goto_22

    :cond_20
    check-cast p2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    :goto_22
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    :goto_24
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getDocLength()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    return-void
.end method

.method public verifySignature([B[B)Z
    .registers 8

    array-length v0, p2

    new-array v0, v0, [S

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    array-length v3, p2

    if-ge v2, v3, :cond_13

    aget-byte v3, p2, v2

    int-to-short v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object p1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->verifySignatureIntern([S)[S

    move-result-object p2

    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_20

    return v1

    :cond_20
    const/4 v0, 0x1

    move v3, v0

    move v2, v1

    :goto_23
    array-length v4, p1

    if-ge v2, v4, :cond_34

    if-eqz v3, :cond_30

    aget-short v3, p1, v2

    aget-short v4, p2, v2

    if-ne v3, v4, :cond_30

    move v3, v0

    goto :goto_31

    :cond_30
    move v3, v1

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_34
    return v3
.end method
