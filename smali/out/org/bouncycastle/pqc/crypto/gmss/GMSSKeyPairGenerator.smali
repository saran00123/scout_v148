.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.3"


# instance fields
.field private K:[I

.field private currentRootSigs:[[B

.field private currentSeeds:[[B

.field private digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private heightOfTrees:[I

.field private initialized:Z

.field private mdLength:I

.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;

.field private nextNextSeeds:[[B

.field private numLayer:I

.field private otsIndex:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    if-nez v1, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initializeDefault()V

    :cond_9
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v5, v1, [[[B

    add-int/lit8 v2, v1, -0x1

    new-array v6, v2, [[[B

    new-array v7, v1, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v2, v1, -0x1

    new-array v8, v2, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    new-array v9, v1, [Ljava/util/Vector;

    add-int/lit8 v2, v1, -0x1

    new-array v10, v2, [Ljava/util/Vector;

    new-array v11, v1, [[Ljava/util/Vector;

    add-int/lit8 v1, v1, -0x1

    new-array v12, v1, [[Ljava/util/Vector;

    const/4 v1, 0x0

    move v2, v1

    :goto_25
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    if-ge v2, v3, :cond_82

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, v2

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, B

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    aput-object v3, v5, v2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v4, v3, v2

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v13, v13, v2

    sub-int/2addr v4, v13

    new-array v4, v4, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aput-object v4, v7, v2

    if-lez v2, :cond_6d

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v2

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v13}, [I

    move-result-object v3

    const-class v13, B

    invoke-static {v13, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    aput-object v3, v6, v4

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, v2

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v13, v13, v2

    sub-int/2addr v3, v13

    new-array v3, v3, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aput-object v3, v8, v4

    :cond_6d
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v9, v2

    if-lez v2, :cond_7f

    add-int/lit8 v3, v2, -0x1

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v10, v3

    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_82
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v2}, [I

    move-result-object v2

    const-class v3, B

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, B

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [[B

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, B

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    move v4, v1

    :goto_b4
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    if-ge v4, v14, :cond_ca

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v14, v14, v4

    aget-object v15, v3, v4

    move-object/from16 v16, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v14, v1, v15, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, v16

    goto :goto_b4

    :cond_ca
    move-object/from16 v16, v13

    add-int/lit8 v14, v14, -0x1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v14, v4}, [I

    move-result-object v4

    const-class v13, B

    invoke-static {v13, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v4, v4, -0x1

    :goto_e2
    if-ltz v4, :cond_143

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v13, v13, -0x1

    if-ne v4, v13, :cond_f4

    const/4 v13, 0x0

    aget-object v14, v9, v4

    aget-object v15, v3, v4

    invoke-direct {v0, v13, v14, v15, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v13

    goto :goto_100

    :cond_f4
    add-int/lit8 v13, v4, 0x1

    aget-object v13, v2, v13

    aget-object v14, v9, v4

    aget-object v15, v3, v4

    invoke-direct {v0, v13, v14, v15, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v13

    :goto_100
    move v14, v1

    :goto_101
    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v15, v15, v4

    if-ge v14, v15, :cond_121

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v15

    aget-object v15, v15, v14

    aget-object v17, v5, v4

    move-object/from16 v18, v9

    aget-object v9, v17, v14

    move-object/from16 v17, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v15, v1, v9, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v17

    move-object/from16 v9, v18

    goto :goto_101

    :cond_121
    move-object/from16 v17, v5

    move-object/from16 v18, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v5

    aput-object v5, v11, v4

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v5

    aget-object v9, v2, v4

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v5, v1, v9, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v5, v17

    move-object/from16 v9, v18

    goto :goto_e2

    :cond_143
    move-object/from16 v17, v5

    move-object/from16 v18, v9

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v4, v4, -0x2

    :goto_14b
    if-ltz v4, :cond_19d

    aget-object v5, v10, v4

    add-int/lit8 v9, v4, 0x1

    aget-object v13, v3, v9

    invoke-direct {v0, v5, v13, v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateNextAuthpathAndRoot(Ljava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v5

    move v13, v1

    :goto_158
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v14, v14, v9

    if-ge v13, v14, :cond_174

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v14

    aget-object v14, v14, v13

    aget-object v15, v6, v4

    aget-object v15, v15, v13

    move-object/from16 v19, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v14, v1, v15, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v19

    goto :goto_158

    :cond_174
    move-object/from16 v19, v11

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v11

    aput-object v11, v12, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v11

    aput-object v11, v8, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v5

    aget-object v11, v16, v4

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v5, v1, v11, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, v3, v9

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    aget-object v9, v9, v4

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v5, v1, v9, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v11, v19

    goto :goto_14b

    :cond_19d
    move-object/from16 v19, v11

    new-instance v15, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    aget-object v1, v2, v1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-direct {v15, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;-><init>([BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    move-object v2, v1

    move-object/from16 v5, v17

    move-object/from16 v9, v18

    move-object/from16 v17, v11

    move-object/from16 v11, v19

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    move-object v0, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>([[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method private generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .registers 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v1, v0, [B

    new-array v0, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v2, v2, p4

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v3, v3, p4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    if-ne p4, p2, :cond_38

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {p2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object p2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v3, v3, p4

    invoke-direct {p1, v0, p2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object p1

    goto :goto_66

    :cond_38
    new-instance p2, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v4, v4, p4

    invoke-direct {p2, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getSignature([B)[B

    move-result-object p2

    aput-object p2, v0, p4

    new-instance p2, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v3, v3, p4

    invoke-direct {p2, v0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;-><init>(Lorg/bouncycastle/crypto/Digest;I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    aget-object v0, v0, p4

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->Verify([B[B)[B

    move-result-object p1

    :goto_66
    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    move v0, p2

    move p2, p1

    move p1, v2

    :goto_6e
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v4, v3, p4

    shl-int v4, v2, v4

    if-ge p1, v4, :cond_a7

    if-ne p1, p2, :cond_88

    aget v3, v3, p4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v4, v4, p4

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_88

    invoke-virtual {v1, p3, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    :cond_88
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v6, v6, p4

    invoke-direct {v4, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6e

    :cond_a7
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->wasFinished()Z

    move-result p1

    if-eqz p1, :cond_ae

    return-object v1

    :cond_ae
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private generateNextAuthpathAndRoot(Ljava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .registers 11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v0, v0, [B

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v2, v2, p3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    const/4 p1, 0x0

    const/4 v1, 0x3

    move v2, p1

    :goto_19
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v4, v3, p3

    const/4 v5, 0x1

    shl-int v4, v5, v4

    if-ge p1, v4, :cond_53

    if-ne p1, v1, :cond_34

    aget v3, v3, p3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v4, v4, p3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_34

    invoke-virtual {v0, p2, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    :cond_34
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v6, v6, p3

    invoke-direct {v4, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    :cond_53
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->wasFinished()Z

    move-result p1

    if-eqz p1, :cond_5a

    return-object v0

    :cond_5a
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "N\ufffdchster Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initializeDefault()V
    .registers 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_20

    new-array v2, v0, [I

    fill-array-data v2, :array_2c

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v5, v1

    invoke-direct {v4, v5, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    const/4 v0, 0x0

    invoke-direct {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void

    :array_20
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_2c
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_38
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 8

    const/16 v0, 0xa

    const/4 v1, 0x2

    if-gt p1, v0, :cond_21

    const/4 p1, 0x1

    new-array v2, p1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    new-array v0, p1, [I

    const/4 v4, 0x3

    aput v4, v0, v3

    new-array p1, p1, [I

    aput v1, p1, v3

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v4, v2

    invoke-direct {v3, v4, v2, v0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v1, p2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    move-object v2, v1

    goto :goto_5b

    :cond_21
    const/16 v0, 0x14

    if-gt p1, v0, :cond_40

    new-array p1, v1, [I

    fill-array-data p1, :array_60

    new-array v0, v1, [I

    fill-array-data v0, :array_68

    new-array v1, v1, [I

    fill-array-data v1, :array_70

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v4, p1

    invoke-direct {v3, v4, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v2, p2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    goto :goto_5b

    :cond_40
    const/4 p1, 0x4

    new-array v0, p1, [I

    fill-array-data v0, :array_78

    new-array v1, p1, [I

    fill-array-data v1, :array_84

    new-array p1, p1, [I

    fill-array-data p1, :array_90

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v4, v0

    invoke-direct {v3, v4, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v2, p2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    :goto_5b
    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void

    nop

    :array_60
    .array-data 4
        0xa
        0xa
    .end array-data

    :array_68
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_70
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_78
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_84
    .array-data 4
        0x9
        0x9
        0x9
        0x3
    .end array-data

    :array_90
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 7

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, B

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    const/4 v0, 0x0

    :goto_7f
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    if-ge v0, v2, :cond_96

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_96
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    return-void
.end method
