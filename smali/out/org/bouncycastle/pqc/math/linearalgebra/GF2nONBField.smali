.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;
.super Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;


# static fields
.field private static final MAXLONG:I = 0x40


# instance fields
.field private mBit:I

.field private mLength:I

.field mMult:[[I

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    const/4 p2, 0x3

    if-lt p1, p2, :cond_7c

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    const/16 v0, 0x40

    div-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    const/4 v1, 0x1

    if-nez p1, :cond_1d

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    goto :goto_22

    :cond_1d
    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    :goto_22
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->computeType()V

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ge p1, p2, :cond_63

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    const/4 p2, 0x2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    const-class p2, I

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    const/4 p1, 0x0

    move p2, p1

    :goto_3c
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge p2, v0, :cond_4e

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    aget-object v2, v0, p2

    const/4 v3, -0x1

    aput v3, v2, p1

    aget-object v0, v0, p2

    aput v3, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3c

    :cond_4e
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->computeMultMatrix()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->computeFieldPolynomial()V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fields:Ljava/util/Vector;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->matrices:Ljava/util/Vector;

    return-void

    :cond_63
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nThe type of this field is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k must be at least 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeMultMatrix()V
    .registers 12

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    and-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_d0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v2, v0, [I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v4, 0x2

    if-ne v3, v1, :cond_14

    move v3, v1

    goto :goto_1d

    :cond_14
    if-ne v3, v4, :cond_19

    add-int/lit8 v3, v0, -0x1

    goto :goto_1d

    :cond_19
    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->elementOfOrder(II)I

    move-result v3

    :goto_1d
    const/4 v5, 0x0

    move v7, v1

    move v6, v5

    :goto_20
    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ge v6, v8, :cond_3c

    move v8, v5

    move v9, v7

    :goto_26
    iget v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v8, v10, :cond_34

    aput v8, v2, v9

    shl-int/2addr v9, v1

    rem-int/2addr v9, v0

    if-gez v9, :cond_31

    add-int/2addr v9, v0

    :cond_31
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_34
    mul-int/2addr v7, v3

    rem-int/2addr v7, v0

    if-gez v7, :cond_39

    add-int/2addr v7, v0

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_3c
    const/4 v3, -0x1

    if-ne v8, v1, :cond_9d

    move v4, v1

    :goto_40
    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_67

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v7, v4, 0x1

    aget v8, v2, v7

    aget-object v8, v6, v8

    aget v8, v8, v5

    if-ne v8, v3, :cond_5b

    aget v8, v2, v7

    aget-object v6, v6, v8

    sub-int v4, v0, v4

    aget v4, v2, v4

    aput v4, v6, v5

    goto :goto_65

    :cond_5b
    aget v8, v2, v7

    aget-object v6, v6, v8

    sub-int v4, v0, v4

    aget v4, v2, v4

    aput v4, v6, v1

    :goto_65
    move v4, v7

    goto :goto_40

    :cond_67
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shr-int/2addr v0, v1

    move v2, v1

    :goto_6b
    if-gt v2, v0, :cond_c7

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v6, v2, -0x1

    aget-object v7, v4, v6

    aget v7, v7, v5

    if-ne v7, v3, :cond_7f

    aget-object v4, v4, v6

    add-int v7, v0, v2

    sub-int/2addr v7, v1

    aput v7, v4, v5

    goto :goto_86

    :cond_7f
    aget-object v4, v4, v6

    add-int v7, v0, v2

    sub-int/2addr v7, v1

    aput v7, v4, v1

    :goto_86
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int v7, v0, v2

    sub-int/2addr v7, v1

    aget-object v8, v4, v7

    aget v8, v8, v5

    if-ne v8, v3, :cond_96

    aget-object v4, v4, v7

    aput v6, v4, v5

    goto :goto_9a

    :cond_96
    aget-object v4, v4, v7

    aput v6, v4, v1

    :goto_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    :cond_9d
    if-ne v8, v4, :cond_c8

    move v4, v1

    :goto_a0
    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_c7

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v7, v4, 0x1

    aget v8, v2, v7

    aget-object v8, v6, v8

    aget v8, v8, v5

    if-ne v8, v3, :cond_bb

    aget v8, v2, v7

    aget-object v6, v6, v8

    sub-int v4, v0, v4

    aget v4, v2, v4

    aput v4, v6, v5

    goto :goto_c5

    :cond_bb
    aget v8, v2, v7

    aget-object v6, v6, v8

    sub-int v4, v0, v4

    aget v4, v2, v4

    aput v4, v6, v1

    :goto_c5
    move v4, v7

    goto :goto_a0

    :cond_c7
    return-void

    :cond_c8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "only type 1 or type 2 implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bisher nur fuer Gausssche Normalbasen implementiert"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeType()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v1, 0x0

    :goto_a
    const/4 v2, 0x2

    if-eq v1, v0, :cond_2f

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->gcd(II)I

    move-result v1

    :cond_29
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    goto :goto_a

    :cond_2f
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v1, v0, :cond_57

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shl-int/2addr v1, v0

    add-int/2addr v1, v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shl-int/2addr v2, v0

    div-int/2addr v2, v1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->gcd(II)I

    move-result v1

    if-ne v1, v0, :cond_57

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    :cond_57
    return-void

    :cond_58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The extension degree is divisible by 8!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private elementOfOrder(II)I
    .registers 7

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x0

    :cond_6
    :goto_6
    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    rem-int/2addr v1, v2

    if-gez v1, :cond_6

    add-int/2addr v1, v2

    goto :goto_6

    :cond_13
    invoke-static {v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v2

    rem-int v3, v2, p1

    if-nez v3, :cond_28

    if-nez v2, :cond_1e

    goto :goto_28

    :cond_1e
    div-int/2addr p1, v2

    const/4 p2, 0x2

    move v0, v1

    :goto_21
    if-gt p2, p1, :cond_27

    mul-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    :cond_27
    return v0

    :cond_28
    :goto_28
    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    rem-int/2addr v1, v2

    if-gez v1, :cond_28

    add-int/2addr v1, v2

    goto :goto_28
.end method


# virtual methods
.method protected computeCOBMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V
    .registers 10

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v0, v1, :cond_85

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v2, v3, :cond_1c

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getRandomRoot(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_1c

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v3, v3, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v2, v3, v1

    const/4 v2, 0x1

    move v4, v2

    :goto_36
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v4, v5, :cond_47

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->square()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_47
    move v4, v1

    :goto_48
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v4, v5, :cond_6c

    move v5, v1

    :goto_4d
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v5, v6, :cond_69

    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_66

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v2

    aget-object v6, v0, v6

    iget v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v7, v4

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_6c
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fields:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->matrices:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->invertMatrix([Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected computeFieldPolynomial()V
    .registers 7

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/2addr v2, v1

    const-string v1, "ALL"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    :cond_f
    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    goto :goto_3f

    :cond_12
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3f

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/2addr v2, v1

    const-string v3, "ONE"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/2addr v3, v1

    const-string v4, "X"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2f
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v1, v3, :cond_f

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    move-object v0, v3

    goto :goto_2f

    :cond_3f
    :goto_3f
    return-void
.end method

.method getONBBit()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    return v0
.end method

.method getONBLength()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    return v0
.end method

.method protected getRandomRoot(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .registers 7

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V

    :goto_5
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_57

    :cond_c
    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->random:Ljava/security/SecureRandom;

    invoke-direct {p1, p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/security/SecureRandom;)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    const/4 v3, 0x2

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    invoke-virtual {v2, v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->set(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    move-object v3, p1

    move p1, v1

    :goto_27
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v4, v1

    if-gt p1, v4, :cond_37

    invoke-virtual {v3, v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->multiplyAndReduce(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_37
    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->gcd(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v3

    if-eqz v2, :cond_c

    if-eq v2, v3, :cond_c

    shl-int/lit8 v1, v2, 0x1

    if-le v1, v3, :cond_51

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->quotient(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object p1

    move-object v0, p1

    goto :goto_5

    :cond_51
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    goto :goto_5

    :cond_57
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->at(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object p1

    return-object p1
.end method

.method invMatrix([[I)[[I
    .registers 7

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    move v2, v1

    :goto_22
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2e

    aget-object v3, v0, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2e
    :goto_2e
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v1, v0, :cond_49

    move v0, v1

    :goto_33
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v0, v2, :cond_46

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aget-object v3, p1, v1

    aget v3, v3, v1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_49
    const/4 p1, 0x0

    check-cast p1, [[I

    return-object p1
.end method
