.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;


# instance fields
.field private K:[I

.field private currentAuthPaths:[[[B

.field private currentRetain:[[Ljava/util/Vector;

.field private currentRootSig:[[B

.field private currentSeeds:[[B

.field private currentStack:[Ljava/util/Vector;

.field private currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

.field private digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private heightOfTrees:[I

.field private index:[I

.field private keep:[[[B

.field private mdLength:I

.field private messDigestTrees:Lorg/bouncycastle/crypto/Digest;

.field private minTreehash:[I

.field private nextAuthPaths:[[[B

.field private nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

.field private nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

.field private nextNextSeeds:[[B

.field private nextRetain:[[Ljava/util/Vector;

.field private nextRoot:[[B

.field private nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

.field private nextStack:[Ljava/util/Vector;

.field private nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

.field private numLayer:I

.field private numLeafs:[I

.field private otsIndex:[I

.field private upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

.field private upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

.field private used:Z


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;)V
    .registers 4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    return-void
.end method

.method public constructor <init>([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v12, p20

    move-object/from16 v13, p21

    const/4 v14, 0x1

    invoke-direct {v0, v14, v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    const/4 v15, 0x0

    iput-boolean v15, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v14

    iput-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v14}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v14

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    iput-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v14

    iput-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v14

    iput-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v13

    iput-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v13

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-nez v1, :cond_61

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    move v1, v15

    :goto_56
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v1, v13, :cond_63

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aput v15, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_61
    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    :cond_63
    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    move-object/from16 v1, p3

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    move-object/from16 v1, p5

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    if-nez v3, :cond_a1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v1, v1, [[[B

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    move v1, v15

    :goto_7c
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v1, v3, :cond_a3

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v13, v13, v1

    div-int/lit8 v13, v13, 0x2

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    filled-new-array {v13, v14}, [I

    move-result-object v13

    const-class v14, B

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[B

    aput-object v13, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_a1
    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    :cond_a3
    if-nez v4, :cond_bc

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    move v1, v15

    :goto_ac
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v1, v3, :cond_be

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    :cond_bc
    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    :cond_be
    if-nez v5, :cond_db

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    move v1, v15

    :goto_c9
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_dd

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    goto :goto_c9

    :cond_db
    iput-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    :cond_dd
    move-object/from16 v1, p7

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v1, p8

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v1, p11

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    move-object/from16 v1, p12

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    iput-object v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    move-object/from16 v1, p22

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    if-nez v11, :cond_11c

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move v3, v15

    :goto_fe
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_11e

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v13, v3, 0x1

    aget v11, v11, v13

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v14, v14, v13

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v5, v11, v14, v15}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    aput-object v5, v4, v3

    move v3, v13

    const/4 v4, 0x1

    const/4 v15, 0x0

    goto :goto_fe

    :cond_11c
    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    :cond_11e
    move-object/from16 v3, p19

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v3, v3, [I

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    const/4 v3, 0x0

    :goto_129
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v3, v4, :cond_13b

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v5, v5, v3

    const/4 v11, 0x1

    shl-int v5, v11, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_129

    :cond_13b
    const/4 v11, 0x1

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-le v3, v11, :cond_17a

    if-nez v6, :cond_177

    add-int/lit8 v3, v3, -0x2

    new-array v3, v3, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    const/4 v3, 0x0

    :goto_152
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_17f

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    add-int/lit8 v13, v3, 0x1

    aget v11, v11, v13

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v15, v3, 0x2

    aget v14, v14, v15

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    aget-object v15, v15, v3

    invoke-direct {v5, v6, v11, v14, v15}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II[B)V

    aput-object v5, v4, v3

    move v3, v13

    goto :goto_152

    :cond_177
    iput-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    goto :goto_17f

    :cond_17a
    const/4 v3, 0x0

    new-array v4, v3, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    :cond_17f
    :goto_17f
    if-nez v7, :cond_1ad

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    const/4 v3, 0x0

    :goto_18a
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_1af

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v7, v7, v3

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v13, v3, 0x1

    aget v11, v11, v13

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v14, v14, v3

    invoke-direct {v5, v6, v7, v11, v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II[B)V

    aput-object v5, v4, v3

    move v3, v13

    const/4 v4, 0x1

    goto :goto_18a

    :cond_1ad
    iput-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    :cond_1af
    if-nez v8, :cond_1d9

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    const/4 v3, 0x0

    :goto_1ba
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_1db

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v7, v7, v3

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v11, v3, 0x1

    aget v8, v8, v11

    invoke-direct {v5, v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II)V

    aput-object v5, v4, v3

    move v3, v11

    const/4 v4, 0x1

    goto :goto_1ba

    :cond_1d9
    iput-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    :cond_1db
    if-nez v9, :cond_1f4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [I

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    const/4 v3, 0x0

    :goto_1e6
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_1f6

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    const/4 v5, -0x1

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_1e6

    :cond_1f4
    iput-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    :cond_1f6
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v4, v3, [B

    new-array v3, v3, [B

    if-nez v12, :cond_241

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    new-array v3, v3, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    const/4 v3, 0x0

    :goto_207
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    sub-int/2addr v6, v5

    if-ge v3, v6, :cond_243

    aget-object v6, v2, v3

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    const/4 v8, 0x0

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v11

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v12, v12, v3

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v14, v3, 0x1

    aget v13, v13, v14

    invoke-direct {v9, v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;-><init>(Lorg/bouncycastle/crypto/Digest;II)V

    aput-object v9, v7, v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    aget-object v7, v7, v3

    aget-object v3, v10, v3

    invoke-virtual {v7, v6, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->initSign([B[B)V

    move v3, v14

    goto :goto_207

    :cond_241
    iput-object v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    :cond_243
    return-void
.end method

.method public constructor <init>([[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v17, p11

    move-object/from16 v19, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    const/4 v1, 0x0

    move-object v6, v1

    check-cast v6, [[[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v22}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    return-void
.end method

.method private computeAuthPaths(I)V
    .registers 15

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v1, v1, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    sub-int v5, v1, v2

    if-ge v4, v5, :cond_20

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v5, v5, p1

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->updateNextSeed(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_20
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfPhi(I)I

    move-result v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v4, v4, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    ushr-int v6, v0, v6

    const/4 v7, 0x1

    and-int/2addr v6, v7

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v9, v8, [B

    sub-int/2addr v1, v7

    if-ge v2, v1, :cond_4a

    if-nez v6, :cond_4a

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v10, v10, p1

    aget-object v10, v10, v2

    invoke-static {v10, v3, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4a
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v10, v8, [B

    if-nez v2, :cond_94

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    sub-int/2addr v0, v7

    if-ne p1, v0, :cond_69

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v8}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v8

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v10, v10, p1

    invoke-direct {v0, v4, v8, v10}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v0

    goto :goto_87

    :cond_69
    new-array v0, v8, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v4, v4, p1

    invoke-static {v4, v3, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v4

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v8, v8, p1

    invoke-virtual {v8, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    move-object v0, v4

    :goto_87
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v4, v4, p1

    aget-object v4, v4, v3

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v0, v3, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_17b

    :cond_94
    shl-int/lit8 v4, v8, 0x1

    new-array v4, v4, [B

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v10, v10, p1

    add-int/lit8 v11, v2, -0x1

    aget-object v10, v10, v11

    invoke-static {v10, v3, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    aget-object v8, v8, p1

    div-int/lit8 v11, v11, 0x2

    int-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    aget-object v8, v8, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v8, v3, v4, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    array-length v10, v4

    invoke-interface {v8, v4, v3, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v4, v4, p1

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v8, v8, [B

    aput-object v8, v4, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v8, v8, p1

    aget-object v8, v8, v2

    invoke-interface {v4, v8, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move v4, v3

    :goto_d6
    if-ge v4, v2, :cond_17b

    if-ge v4, v5, :cond_128

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v8, v8, p1

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z

    move-result v8

    if-eqz v8, :cond_105

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v8, v8, p1

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getFirstNode()[B

    move-result-object v8

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v10, v10, p1

    aget-object v10, v10, v4

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v8, v3, v10, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v8, v8, p1

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->destroy()V

    goto :goto_128

    :cond_105
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Treehash ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") not finished when needed in AuthPathComputation"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_128
    :goto_128
    if-ge v4, v1, :cond_161

    if-lt v4, v5, :cond_161

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v8, v8, p1

    sub-int v10, v4, v5

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_161

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v8, v8, p1

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v8

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v11, v11, p1

    aget-object v11, v11, v4

    iget v12, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v8, v3, v11, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v11, v8, p1

    aget-object v11, v11, v10

    aget-object v8, v8, p1

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v11, v8}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_161
    if-ge v4, v5, :cond_177

    shl-int v8, v7, v4

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v0

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v10, v10, p1

    if-ge v8, v10, :cond_177

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v8, v8, p1

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->initialize()V

    :cond_177
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d6

    :cond_17b
    :goto_17b
    if-ge v2, v1, :cond_192

    if-nez v6, :cond_192

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    aget-object v0, v0, p1

    div-int/lit8 v2, v2, 0x2

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v9, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_192
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    sub-int/2addr v0, v7

    if-ne p1, v0, :cond_1e2

    :goto_197
    div-int/lit8 v0, v5, 0x2

    if-gt v7, v0, :cond_1ea

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v0

    if-ltz v0, :cond_1df

    :try_start_1a1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getSeedActive()[B

    move-result-object v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v6, v6, p1

    invoke-direct {v2, v1, v4, v6}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v2, v2, p1

    aget-object v0, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->update(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1d8} :catch_1d9

    goto :goto_1df

    :catch_1d9
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1df
    :goto_1df
    add-int/lit8 v7, v7, 0x1

    goto :goto_197

    :cond_1e2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v1

    aput v1, v0, p1

    :cond_1ea
    return-void
.end method

.method private getMinTreehashIndex(I)I
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_3
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v3, v3, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v4, v4, p1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_43

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->wasInitialized()Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z

    move-result v3

    if-nez v3, :cond_40

    if-ne v2, v0, :cond_29

    goto :goto_3f

    :cond_29
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getLowestNodeHeight()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v4, v4, p1

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getLowestNodeHeight()I

    move-result v4

    if-ge v3, v4, :cond_40

    :goto_3f
    move v2, v1

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_43
    return v2
.end method

.method private heightOfPhi(I)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    :goto_8
    rem-int v3, p1, v0

    if-nez v3, :cond_11

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    sub-int/2addr v2, v1

    return v2
.end method

.method private nextKey(I)V
    .registers 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v2, v0, p1

    add-int/2addr v2, v1

    aput v2, v0, p1

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v2, v2, p1

    if-ne v0, v2, :cond_24

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-eq v0, v1, :cond_27

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTree(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_27

    :cond_24
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->updateKey(I)V

    :cond_27
    :goto_27
    return-void
.end method

.method private nextTree(I)V
    .registers 9

    if-lez p1, :cond_15b

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    add-int/lit8 v1, p1, -0x1

    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    move v0, p1

    move v2, v3

    :cond_e
    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v5, v5, v0

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1c

    move v2, v6

    :cond_1c
    if-eqz v2, :cond_20

    if-gtz v0, :cond_e

    :cond_20
    if-nez v2, :cond_15b

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->updateSign()Z

    if-le p1, v3, :cond_40

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v2, v1, -0x1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v4

    aput-object v4, v0, v2

    :cond_40
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    aget v0, v0, v1

    if-ltz v0, :cond_85

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v0

    :try_start_62
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v2, v2, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v2, v4, v0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->update(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    aget v2, v2, v1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7e} :catch_7f

    goto :goto_85

    :catch_7f
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_85
    :goto_85
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->updateNextNextAuthRoot(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getSig()[B

    move-result-object v2

    aput-object v2, v0, v1

    move v0, v6

    :goto_95
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v2, v2, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v4, v4, p1

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_bd

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v2, v2, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v5, v4, v1

    aget-object v5, v5, v0

    aput-object v5, v2, v0

    aget-object v2, v4, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    :cond_bd
    move v0, v6

    :goto_be
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v2, v2, p1

    if-ge v0, v2, :cond_ed

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v4, v4, p1

    aget-object v4, v4, v0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    :cond_ed
    move v0, v6

    :goto_ee
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v2, v2, p1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_112

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v2, v2, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    aget-object v5, v4, v1

    aget-object v5, v5, v0

    aput-object v5, v2, v0

    aget-object v2, v4, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_ee

    :cond_112
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    aget-object v3, v2, v1

    aput-object v3, v0, p1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStack()Ljava/util/Vector;

    move-result-object p1

    aput-object p1, v2, v1

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v0

    aput-object v0, p1, v1

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, p1, [B

    new-array v0, p1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v2, v2, v1

    invoke-static {v2, v6, v0, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    aget-object v2, v2, v1

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->initSign([B[B)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextKey(I)V

    :cond_15b
    return-void
.end method

.method private updateKey(I)V
    .registers 10

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->computeAuthPaths(I)V

    if-lez p1, :cond_d8

    const/4 v0, 0x1

    if-le p1, v0, :cond_15

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v2, p1, -0x1

    sub-int/2addr v2, v0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_15
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v2, p1, -0x1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getNumLeafs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-double v3, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v1, v1, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v5, v5, v2

    sub-int/2addr v1, v5

    int-to-double v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v4, v3, p1

    rem-int/2addr v4, v1

    if-ne v4, v0, :cond_ac

    aget v3, v3, p1

    if-le v3, v0, :cond_74

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    aget v3, v3, v2

    if-ltz v3, :cond_74

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v3

    :try_start_51
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, v5, v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->update(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    aget v4, v4, v2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_6d} :catch_6e

    goto :goto_74

    :catch_6e
    move-exception v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_74
    :goto_74
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    aget v4, v3, v2

    if-ltz v4, :cond_bc

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aget-object v4, v4, v2

    aget v3, v3, v2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getSeedActive()[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v7, v7, v2

    invoke-direct {v5, v6, v7, v1, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II[B)V

    aput-object v5, v4, v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_bc

    :cond_ac
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    aget v1, v1, v2

    if-ltz v1, :cond_bc

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_bc
    :goto_bc
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->updateSign()Z

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v1, v1, p1

    if-ne v1, v0, :cond_d5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    aget-object v0, v0, v2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    :cond_d5
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->updateNextNextAuthRoot(I)V

    :cond_d8
    return-void
.end method

.method private updateNextNextAuthRoot(I)V
    .registers 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_35

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget p1, v4, p1

    invoke-direct {v1, v0, v3, p1}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    aget-object p1, p1, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    aget-object v0, v0, v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B[B)V

    goto :goto_53

    :cond_35
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    aget-object p1, p1, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    aget-object v0, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    aget-object p1, p1, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    :goto_53
    return-void
.end method


# virtual methods
.method public getCurrentAuthPaths()[[[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSeeds()[[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getIndex(I)I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget p1, v0, p1

    return p1
.end method

.method public getIndex()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    return-object v0
.end method

.method public getName()Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    return-object v0
.end method

.method public getNumLeafs(I)I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget p1, v0, p1

    return p1
.end method

.method public getSubtreeRootSig(I)[B
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isUsed()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    return v0
.end method

.method public markUsed()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    return-void
.end method

.method public nextKey()Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
    .registers 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextKey(I)V

    return-object v0
.end method
