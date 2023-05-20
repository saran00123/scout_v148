.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;
.super Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;


# instance fields
.field protected field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field protected matrix:[[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V
    .registers 12

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    const/16 v0, 0x8

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_a
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v4

    if-le v4, v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_a

    :cond_15
    array-length p1, p2

    const/4 v4, 0x5

    const-string v5, " Error: given array is not encoded matrix over GF(2^m)"

    if-lt p1, v4, :cond_a3

    const/4 p1, 0x3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const/4 v4, 0x2

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr p1, v4

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x8

    xor-int/2addr p1, v0

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    mul-int/2addr v3, p1

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-lez p1, :cond_9d

    array-length p1, p2

    const/4 v1, 0x4

    sub-int/2addr p1, v1

    rem-int/2addr p1, v3

    if-nez p1, :cond_9d

    array-length p1, p2

    sub-int/2addr p1, v1

    div-int/2addr p1, v3

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    filled-new-array {p1, v3}, [I

    move-result-object p1

    const-class v3, I

    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    move p1, v0

    :goto_5e
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge p1, v3, :cond_9c

    move v3, v1

    move v1, v0

    :goto_64
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v1, v4, :cond_98

    move v4, v3

    move v3, v0

    :goto_6a
    if-ge v3, v2, :cond_80

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v6, v6, p1

    aget v7, v6, v1

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v3

    xor-int/2addr v4, v7

    aput v4, v6, v1

    add-int/lit8 v3, v3, 0x8

    move v4, v8

    goto :goto_6a

    :cond_80
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v6, v6, p1

    aget v6, v6, v1

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v3

    if-eqz v3, :cond_92

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_64

    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_98
    add-int/lit8 p1, p1, 0x1

    move v1, v3

    goto :goto_5e

    :cond_9c
    return-void

    :cond_9d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[[I)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    array-length p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    const/4 p1, 0x0

    aget-object p1, p2, p1

    array-length p1, p1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    const/4 v0, 0x0

    :goto_16
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v1, :cond_29

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_29
    return-void
.end method

.method private addToRow([I[I)V
    .registers 7

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_14

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->add(II)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_14
    return-void
.end method

.method private multRowWithElement([II)[I
    .registers 7

    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_15

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    aget v3, p1, v1

    invoke-virtual {v2, v3, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_15
    return-object v0
.end method

.method private multRowWithElementThis([II)V
    .registers 6

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_12

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    aget v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_12
    return-void
.end method

.method private static swapColumns([[III)V
    .registers 5

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    return-void
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 11

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    const-string v2, "Matrix is not invertible."

    if-ne v0, v1, :cond_b9

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_1c
    if-ltz v1, :cond_2b

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_2b
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const-class v4, I

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    sub-int/2addr v4, v3

    :goto_3e
    if-ltz v4, :cond_47

    aget-object v5, v1, v4

    aput v3, v5, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_3e

    :cond_47
    const/4 v4, 0x0

    move v5, v4

    :goto_49
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v5, v6, :cond_b1

    aget-object v6, v0, v5

    aget v6, v6, v5

    if-nez v6, :cond_74

    add-int/lit8 v6, v5, 0x1

    move v7, v4

    :goto_56
    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v6, v8, :cond_6b

    aget-object v8, v0, v6

    aget v8, v8, v5

    if-eqz v8, :cond_69

    invoke-static {v0, v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->swapColumns([[III)V

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->swapColumns([[III)V

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    move v7, v3

    :cond_69
    add-int/2addr v6, v3

    goto :goto_56

    :cond_6b
    if-eqz v7, :cond_6e

    goto :goto_74

    :cond_6e
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    :goto_74
    aget-object v6, v0, v5

    aget v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v6

    aget-object v7, v0, v5

    invoke-direct {p0, v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElementThis([II)V

    aget-object v7, v1, v5

    invoke-direct {p0, v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElementThis([II)V

    move v6, v4

    :goto_89
    iget v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v6, v7, :cond_ae

    if-eq v6, v5, :cond_ab

    aget-object v7, v0, v6

    aget v7, v7, v5

    if-eqz v7, :cond_ab

    aget-object v8, v0, v5

    invoke-direct {p0, v8, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElement([II)[I

    move-result-object v8

    aget-object v9, v1, v5

    invoke-direct {p0, v9, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElement([II)[I

    move-result-object v7

    aget-object v9, v0, v6

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->addToRow([I[I)V

    aget-object v8, v1, v6

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->addToRow([I[I)V

    :cond_ab
    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    :cond_ae
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_b1
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[[I)V

    return-object v0

    :cond_b9
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;

    if-nez v1, :cond_8

    goto :goto_42

    :cond_8
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ne v1, v2, :cond_42

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-eq v1, v2, :cond_21

    goto :goto_42

    :cond_21
    move v1, v0

    :goto_22
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v1, v2, :cond_40

    move v2, v0

    :goto_27
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v2, v3, :cond_3d

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    if-eq v3, v4, :cond_3a

    return v0

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_40
    const/4 p1, 0x1

    return p1

    :cond_42
    :goto_42
    return v0
.end method

.method public getEncoded()[B
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_5
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v4

    if-le v4, v2, :cond_12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_5

    :cond_12
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    mul-int/2addr v4, v5

    mul-int/2addr v4, v3

    const/4 v3, 0x4

    add-int/2addr v4, v3

    new-array v4, v4, [B

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    ushr-int/lit8 v0, v5, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    const/4 v0, 0x2

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    const/4 v0, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    move v0, v6

    :goto_42
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v1, :cond_66

    move v1, v6

    :goto_47
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v1, v5, :cond_63

    move v5, v3

    move v3, v6

    :goto_4d
    if-ge v3, v2, :cond_5f

    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v8, v8, v0

    aget v8, v8, v1

    ushr-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    add-int/lit8 v3, v3, 0x8

    move v5, v7

    goto :goto_4d

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_47

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_66
    return-object v4
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_13
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v3, :cond_2d

    move v3, v2

    move v2, v1

    :goto_19
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v2, v4, :cond_29

    mul-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v0

    aget v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_29
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_13

    :cond_2d
    return v2
.end method

.method public isZero()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v1, v2, :cond_1a

    move v2, v0

    :goto_7
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v2, v3, :cond_17

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-eqz v3, :cond_14

    return v0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Matrix over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_2e
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v3, :cond_6f

    move-object v3, v2

    move v2, v1

    :goto_34
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v2, v4, :cond_5b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v5, v5, v0

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->elementToStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_5b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_6f
    return-object v2
.end method
