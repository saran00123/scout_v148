.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;
.super Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;


# instance fields
.field private isPentanomial:Z

.field private isTrinomial:Z

.field private pc:[I

.field squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

.field private tc:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .registers 4

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    iput-boolean p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    const/4 p2, 0x3

    new-array v0, p2, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    if-lt p1, p2, :cond_26

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    return-void

    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k must be at least 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILjava/security/SecureRandom;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    iput-boolean p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    const/4 p2, 0x3

    new-array v0, p2, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    if-lt p1, p2, :cond_6e

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_68

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    if-eqz v0, :cond_62

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    const/4 p1, 0x2

    const/4 p3, 0x1

    move v0, p1

    move p1, p3

    :goto_28
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    sub-int/2addr v1, p3

    const/4 v2, 0x5

    if-ge p1, v1, :cond_4b

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_48

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_40

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    :cond_40
    if-gt v0, v2, :cond_48

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    add-int/lit8 v2, v0, -0x3

    aput p1, v1, v2

    :cond_48
    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    :cond_4b
    if-ne v0, p2, :cond_4f

    iput-boolean p3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    :cond_4f
    if-ne v0, v2, :cond_53

    iput-boolean p3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    :cond_53
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    return-void

    :cond_62
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_68
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "degree must be at least 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILjava/security/SecureRandom;Z)V
    .registers 5

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    iput-boolean p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    const/4 p2, 0x3

    new-array v0, p2, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    if-lt p1, p2, :cond_2c

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-eqz p3, :cond_17

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial()V

    goto :goto_1a

    :cond_17
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial2()V

    :goto_1a
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    return-void

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k must be at least 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeSquaringMatrix()V
    .registers 9

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v2, v2, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iput-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    array-length v5, v4

    if-ge v3, v5, :cond_21

    new-instance v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const-string v7, "ZERO"

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_21
    :goto_21
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_3f

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const-string v4, "ONE"

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3f
    move v2, v1

    :goto_40
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shr-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v2, v3, :cond_70

    move v3, v1

    :goto_4a
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-gt v3, v4, :cond_6d

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shl-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    aget-object v4, v0, v4

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    add-int/lit8 v5, v3, -0x1

    aget-object v4, v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_70
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shr-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v1

    :goto_78
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-gt v0, v2, :cond_8f

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    aget-object v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    :cond_8f
    return-void
.end method

.method private testPentanomials()Z
    .registers 12

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    move v3, v1

    move v0, v2

    :goto_1a
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v4, v4, -0x3

    if-gt v0, v4, :cond_95

    if-nez v3, :cond_95

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    add-int/lit8 v4, v0, 0x1

    move v5, v3

    move v3, v4

    :goto_2b
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    if-gt v3, v6, :cond_8d

    if-nez v5, :cond_8d

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    add-int/lit8 v6, v3, 0x1

    move v8, v5

    move v5, v6

    :goto_3c
    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v9, v2

    if-gt v5, v9, :cond_85

    if-nez v8, :cond_85

    iget-object v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    and-int/2addr v9, v2

    if-eqz v9, :cond_4f

    move v9, v2

    goto :goto_50

    :cond_4f
    move v9, v1

    :goto_50
    and-int/lit8 v10, v0, 0x1

    if-eqz v10, :cond_56

    move v10, v2

    goto :goto_57

    :cond_56
    move v10, v1

    :goto_57
    or-int/2addr v9, v10

    and-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_5e

    move v10, v2

    goto :goto_5f

    :cond_5e
    move v10, v1

    :goto_5f
    or-int/2addr v9, v10

    and-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_66

    move v10, v2

    goto :goto_67

    :cond_66
    move v10, v1

    :goto_67
    or-int/2addr v9, v10

    if-eqz v9, :cond_7d

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v8

    if-eqz v8, :cond_7d

    iput-boolean v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v0, v4, v1

    aput v3, v4, v2

    aput v5, v4, v7

    return v8

    :cond_7d
    iget-object v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_85
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    move v3, v6

    move v5, v8

    goto :goto_2b

    :cond_8d
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    move v0, v4

    move v3, v5

    goto :goto_1a

    :cond_95
    return v3
.end method

.method private testRandom()Z
    .registers 4

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    :cond_b
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    if-eqz v0, :cond_b

    return v2
.end method

.method private testTrinomials()Z
    .registers 5

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    move v0, v2

    :goto_19
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v0, v3, :cond_3f

    if-nez v1, :cond_3f

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v1

    if-eqz v1, :cond_31

    iput-boolean v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    return v1

    :cond_31
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3f
    return v1
.end method


# virtual methods
.method protected computeCOBMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V
    .registers 9

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v0, v1, :cond_e0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v0, :cond_e

    invoke-virtual {p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->computeCOBMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V

    return-void

    :cond_e
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v1, v1, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v3, v4, :cond_24

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_24
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getRandomRoot(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v4

    if-nez v4, :cond_24

    instance-of v4, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v4, :cond_46

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v4, v4, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    move-object v6, p1

    check-cast v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_57

    :cond_46
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v4, v4, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    move-object v6, p1

    check-cast v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v6

    aput-object v6, v4, v5

    :goto_57
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x2

    aput-object v3, v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x3

    :goto_61
    if-ltz v5, :cond_72

    add-int/lit8 v6, v5, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_61

    :cond_72
    if-eqz v0, :cond_a0

    move v0, v2

    :goto_75
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v0, v3, :cond_c7

    move v3, v2

    :goto_7a
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v3, v5, :cond_9d

    aget-object v5, v4, v0

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_9a

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_a0
    move v0, v2

    :goto_a1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v0, v3, :cond_c7

    move v3, v2

    :goto_a6
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v3, v5, :cond_c4

    aget-object v5, v4, v0

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_c1

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_c1
    add-int/lit8 v3, v3, 0x1

    goto :goto_a6

    :cond_c4
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    :cond_c7
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->invertMatrix([Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_e0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GF2nPolynomialField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected computeFieldPolynomial()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    return-void
.end method

.method protected computeFieldPolynomial2()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    return-void
.end method

.method public getPc()[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x3

    new-array v1, v0, [I

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
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
    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->random:Ljava/security/SecureRandom;

    invoke-direct {p1, p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    const/4 v3, 0x2

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    invoke-virtual {v2, v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->set(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    move-object v3, p1

    move p1, v1

    :goto_27
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

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

.method public getSquaringVector(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .registers 4

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public getTc()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public isPentanomial()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    return v0
.end method

.method public isTrinomial()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    return v0
.end method
