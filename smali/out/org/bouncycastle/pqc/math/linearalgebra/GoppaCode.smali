.class public final Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;,
        Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSystematicForm(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;
    .registers 9

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v0

    const/4 v1, 0x0

    :cond_5
    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v2, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getLeftSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_15
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    :try_end_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_1b} :catch_1d

    move-object v1, v6

    goto :goto_1e

    :catch_1d
    const/4 v5, 0x0

    :goto_1e
    if-eqz v5, :cond_5

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getRightSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;

    invoke-direct {p1, v4, p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)V

    return-object p1
.end method

.method public static createCanonicalCheckMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 16

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v3

    filled-new-array {v3, v2}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    filled-new-array {v3, v2}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    const/4 v6, 0x0

    move v7, v6

    :goto_25
    if-ge v7, v2, :cond_36

    aget-object v8, v5, v6

    invoke-virtual {p1, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->evaluateAt(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_36
    move v7, v1

    :goto_37
    if-ge v7, v3, :cond_50

    move v8, v6

    :goto_3a
    if-ge v8, v2, :cond_4d

    aget-object v9, v5, v7

    add-int/lit8 v10, v7, -0x1

    aget-object v10, v5, v10

    aget v10, v10, v8

    invoke-virtual {p0, v10, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v10

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_50
    move v7, v6

    :goto_51
    if-ge v7, v3, :cond_7d

    move v8, v6

    :goto_54
    if-ge v8, v2, :cond_7a

    move v9, v6

    :goto_57
    if-gt v9, v7, :cond_77

    aget-object v10, v4, v7

    aget-object v11, v4, v7

    aget v11, v11, v8

    aget-object v12, v5, v9

    aget v12, v12, v8

    add-int v13, v3, v9

    sub-int/2addr v13, v7

    invoke-virtual {p1, v13}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v13

    invoke-virtual {p0, v12, v13}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->add(II)I

    move-result v11

    aput v11, v10, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_57

    :cond_77
    add-int/lit8 v8, v8, 0x1

    goto :goto_54

    :cond_7a
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    :cond_7d
    mul-int p0, v3, v0

    add-int/lit8 p1, v2, 0x1f

    ushr-int/lit8 p1, p1, 0x5

    filled-new-array {p0, p1}, [I

    move-result-object p0

    const-class p1, I

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    move p1, v6

    :goto_90
    if-ge p1, v2, :cond_bc

    ushr-int/lit8 v5, p1, 0x5

    and-int/lit8 v7, p1, 0x1f

    shl-int v7, v1, v7

    move v8, v6

    :goto_99
    if-ge v8, v3, :cond_b9

    aget-object v9, v4, v8

    aget v9, v9, p1

    move v10, v6

    :goto_a0
    if-ge v10, v0, :cond_b6

    ushr-int v11, v9, v10

    and-int/2addr v11, v1

    if-eqz v11, :cond_b3

    add-int/lit8 v11, v8, 0x1

    mul-int/2addr v11, v0

    sub-int/2addr v11, v10

    sub-int/2addr v11, v1

    aget-object v11, p0, v11

    aget v12, v11, v5

    xor-int/2addr v12, v7

    aput v12, v11, v5

    :cond_b3
    add-int/lit8 v10, v10, 0x1

    goto :goto_a0

    :cond_b6
    add-int/lit8 v8, v8, 0x1

    goto :goto_99

    :cond_b9
    add-int/lit8 p1, p1, 0x1

    goto :goto_90

    :cond_bc
    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {p1, v2, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object p1
.end method

.method public static syndromeDecode(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .registers 8

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->isZero()Z

    move-result v3

    if-nez v3, :cond_5e

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->toExtensionFieldVector(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;)V

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modInverse(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->addMonomial(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modSquareRootMatrix([Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modPolynomialToFracton(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p0

    const/4 p2, 0x0

    aget-object p3, p0, p2

    aget-object v3, p0, p2

    invoke-virtual {p3, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p3

    aget-object v3, p0, v1

    aget-object p0, p0, v1

    invoke-virtual {v3, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p0

    invoke-virtual {p3, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getHeadCoefficient()I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p0

    :goto_50
    if-ge p2, v0, :cond_5e

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->evaluateAt(I)I

    move-result p1

    if-nez p1, :cond_5b

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->setBit(I)V

    :cond_5b
    add-int/lit8 p2, p2, 0x1

    goto :goto_50

    :cond_5e
    return-object v2
.end method
