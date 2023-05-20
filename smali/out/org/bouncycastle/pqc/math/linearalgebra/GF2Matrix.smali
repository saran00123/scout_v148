.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
.super Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;


# instance fields
.field private length:I

.field private matrix:[[I


# direct methods
.method public constructor <init>(IC)V
    .registers 4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(ICLjava/security/SecureRandom;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    if-lez p1, :cond_35

    const/16 v0, 0x49

    if-eq p2, v0, :cond_31

    const/16 v0, 0x4c

    if-eq p2, v0, :cond_2d

    const/16 v0, 0x52

    if-eq p2, v0, :cond_29

    const/16 v0, 0x55

    if-eq p2, v0, :cond_25

    const/16 p3, 0x5a

    if-ne p2, p3, :cond_1d

    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignZeroMatrix(II)V

    goto :goto_34

    :cond_1d
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Unknown matrix type."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignRandomUpperTriangularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_34

    :cond_29
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignRandomRegularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_34

    :cond_2d
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignRandomLowerTriangularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_34

    :cond_31
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignUnitMatrix(I)V

    :goto_34
    return-void

    :cond_35
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Size of matrix is non-positive."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    if-lez p2, :cond_b

    if-lez p1, :cond_b

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignZeroMatrix(II)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "size of matrix is non-positive"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[[I)V
    .registers 8

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    add-int/lit8 v2, p1, 0x1f

    shr-int/lit8 v2, v2, 0x5

    if-ne v1, v2, :cond_35

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    array-length v1, p2

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    aget-object v1, p2, v0

    array-length v1, v1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    if-nez p1, :cond_1e

    const/4 p1, -0x1

    goto :goto_21

    :cond_1e
    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    :goto_21
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_32

    aget-object v2, p2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v3, v1

    aget v4, v2, v3

    and-int/2addr v4, p1

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_32
    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    return-void

    :cond_35
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Int array does not match given number of columns."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2d
    return-void
.end method

.method public constructor <init>([B)V
    .registers 11

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    array-length v0, p1

    const-string v1, "given array is not an encoded matrix over GF(2)"

    const/16 v2, 0x9

    if-lt v0, v2, :cond_87

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v2, v2, 0x7

    ushr-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lez v3, :cond_81

    array-length v3, p1

    const/16 v4, 0x8

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_81

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    shr-int/lit8 v1, v1, 0x5

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v2, v2, 0x1f

    move v3, v0

    :goto_4e
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v3, v5, :cond_80

    move v5, v4

    move v4, v0

    :goto_54
    if-ge v4, v1, :cond_65

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v3

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v7

    aput v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_54

    :cond_65
    move v4, v0

    :goto_66
    if-ge v4, v2, :cond_7c

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v3

    aget v7, v6, v1

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v4

    xor-int/2addr v5, v7

    aput v5, v6, v1

    add-int/lit8 v4, v4, 0x8

    move v5, v8

    goto :goto_66

    :cond_7c
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_4e

    :cond_80
    return-void

    :cond_81
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_87
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static addToRow([I[II)V
    .registers 6

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lt v0, p2, :cond_f

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method private assignRandomLowerTriangularMatrix(ILjava/security/SecureRandom;)V
    .registers 10

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 p1, p1, 0x1f

    ushr-int/lit8 p1, p1, 0x5

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    const-class v0, I

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    const/4 p1, 0x0

    move v0, p1

    :goto_1e
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v1, :cond_58

    ushr-int/lit8 v1, v0, 0x5

    and-int/lit8 v2, v0, 0x1f

    rsub-int/lit8 v3, v2, 0x1f

    const/4 v4, 0x1

    shl-int v2, v4, v2

    move v4, p1

    :goto_2c
    if-ge v4, v1, :cond_3b

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v0

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_3b
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    ushr-int v3, v5, v3

    or-int/2addr v2, v3

    aput v2, v4, v1

    :goto_48
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v1, v2, :cond_55

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    aput p1, v2, v1

    goto :goto_48

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_58
    return-void
.end method

.method private assignRandomRegularMatrix(ILjava/security/SecureRandom;)V
    .registers 9

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v1, 0x4c

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v2, 0x55

    invoke-direct {v1, p1, v2, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3b
    if-ge v2, p1, :cond_4f

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v5, p2, v2

    aget-object v4, v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4f
    return-void
.end method

.method private assignRandomUpperTriangularMatrix(ILjava/security/SecureRandom;)V
    .registers 11

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    and-int/lit8 p1, p1, 0x1f

    const/4 v0, 0x1

    if-nez p1, :cond_23

    const/4 p1, -0x1

    goto :goto_26

    :cond_23
    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    :goto_26
    const/4 v1, 0x0

    move v2, v1

    :goto_28
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v2, v3, :cond_6a

    ushr-int/lit8 v3, v2, 0x5

    and-int/lit8 v4, v2, 0x1f

    shl-int v5, v0, v4

    move v6, v1

    :goto_33
    if-ge v6, v3, :cond_3e

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v2

    aput v1, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_3e
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v2

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v7

    shl-int v4, v7, v4

    or-int/2addr v4, v5

    aput v4, v6, v3

    :goto_4b
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v4, :cond_5c

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v2

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    aput v5, v4, v3

    goto :goto_4b

    :cond_5c
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    and-int/2addr v5, p1

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_6a
    return-void
.end method

.method private assignUnitMatrix(I)V
    .registers 6

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 p1, p1, 0x1f

    ushr-int/lit8 p1, p1, 0x5

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    const-class v0, I

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    const/4 p1, 0x0

    move v0, p1

    :goto_1e
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v1, :cond_33

    move v1, p1

    :goto_23
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_33
    :goto_33
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge p1, v0, :cond_47

    and-int/lit8 v0, p1, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v1, v1, p1

    ushr-int/lit8 v2, p1, 0x5

    const/4 v3, 0x1

    shl-int v0, v3, v0

    aput v0, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    :cond_47
    return-void
.end method

.method private assignZeroMatrix(II)V
    .registers 5

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 p2, p2, 0x1f

    ushr-int/lit8 p1, p2, 0x5

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {p1, p2}, [I

    move-result-object p1

    const-class p2, I

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    const/4 p1, 0x0

    move p2, p1

    :goto_1e
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge p2, v0, :cond_33

    move v0, p1

    :goto_23
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v1, v1, p2

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_30
    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    :cond_33
    return-void
.end method

.method public static createRandomRegularMatrixAndItsInverse(ILjava/security/SecureRandom;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 20

    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    add-int/lit8 v3, v0, 0x1f

    shr-int/lit8 v3, v3, 0x5

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v5, 0x4c

    invoke-direct {v4, v0, v5, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    new-instance v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v6, 0x55

    invoke-direct {v5, v0, v6, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v7, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v7, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v1

    filled-new-array {v0, v3}, [I

    move-result-object v8

    const-class v9, I

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    const/4 v9, 0x0

    move v10, v9

    :goto_36
    if-ge v10, v0, :cond_46

    iget-object v11, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v12, v1, v10

    aget-object v11, v11, v12

    aget-object v12, v8, v10

    invoke-static {v11, v9, v12, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_36

    :cond_46
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v1, v0, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    aput-object v1, v2, v9

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v6, 0x49

    invoke-direct {v1, v0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(IC)V

    move v8, v9

    :goto_55
    const/4 v10, 0x1

    if-ge v8, v0, :cond_84

    and-int/lit8 v11, v8, 0x1f

    ushr-int/lit8 v12, v8, 0x5

    shl-int/2addr v10, v11

    add-int/lit8 v11, v8, 0x1

    move v13, v11

    :goto_60
    if-ge v13, v0, :cond_82

    iget-object v14, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v14, v14, v13

    aget v14, v14, v12

    and-int/2addr v14, v10

    if-eqz v14, :cond_7f

    move v14, v9

    :goto_6c
    if-gt v14, v12, :cond_7f

    iget-object v15, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v16, v15, v13

    aget v17, v16, v14

    aget-object v15, v15, v8

    aget v15, v15, v14

    xor-int v15, v17, v15

    aput v15, v16, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6c

    :cond_7f
    add-int/lit8 v13, v13, 0x1

    goto :goto_60

    :cond_82
    move v8, v11

    goto :goto_55

    :cond_84
    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v4, v0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(IC)V

    sub-int/2addr v0, v10

    :goto_8a
    if-ltz v0, :cond_b8

    and-int/lit8 v6, v0, 0x1f

    ushr-int/lit8 v8, v0, 0x5

    shl-int v6, v10, v6

    add-int/lit8 v9, v0, -0x1

    :goto_94
    if-ltz v9, :cond_b5

    iget-object v11, v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v9

    aget v11, v11, v8

    and-int/2addr v11, v6

    if-eqz v11, :cond_b2

    move v11, v8

    :goto_a0
    if-ge v11, v3, :cond_b2

    iget-object v12, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v13, v12, v9

    aget v14, v13, v11

    aget-object v12, v12, v0

    aget v12, v12, v11

    xor-int/2addr v12, v14

    aput v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_a0

    :cond_b2
    add-int/lit8 v9, v9, -0x1

    goto :goto_94

    :cond_b5
    add-int/lit8 v0, v0, -0x1

    goto :goto_8a

    :cond_b8
    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    aput-object v0, v2, v10

    return-object v2
.end method

.method private static swapRows([[III)V
    .registers 5

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    return-void
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 12

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    const-string v2, "Matrix is not invertible."

    if-ne v0, v1, :cond_ac

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_1c
    if-ltz v1, :cond_2b

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_2b
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const-class v4, I

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v4, v3

    :goto_3e
    if-ltz v4, :cond_4d

    shr-int/lit8 v5, v4, 0x5

    and-int/lit8 v6, v4, 0x1f

    aget-object v7, v1, v4

    shl-int v6, v3, v6

    aput v6, v7, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_3e

    :cond_4d
    const/4 v4, 0x0

    move v5, v4

    :goto_4f
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v5, v6, :cond_a4

    shr-int/lit8 v6, v5, 0x5

    and-int/lit8 v7, v5, 0x1f

    shl-int v7, v3, v7

    aget-object v8, v0, v5

    aget v8, v8, v6

    and-int/2addr v8, v7

    if-nez v8, :cond_82

    add-int/lit8 v8, v5, 0x1

    move v9, v4

    :goto_63
    iget v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v8, v10, :cond_79

    aget-object v10, v0, v8

    aget v10, v10, v6

    and-int/2addr v10, v7

    if-eqz v10, :cond_77

    invoke-static {v0, v5, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->swapRows([[III)V

    invoke-static {v1, v5, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->swapRows([[III)V

    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    move v9, v3

    :cond_77
    add-int/2addr v8, v3

    goto :goto_63

    :cond_79
    if-eqz v9, :cond_7c

    goto :goto_82

    :cond_7c
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    :goto_82
    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v8, v3

    :goto_85
    if-ltz v8, :cond_a1

    if-eq v8, v5, :cond_9e

    aget-object v9, v0, v8

    aget v9, v9, v6

    and-int/2addr v9, v7

    if-eqz v9, :cond_9e

    aget-object v9, v0, v5

    aget-object v10, v0, v8

    invoke-static {v9, v10, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->addToRow([I[II)V

    aget-object v9, v1, v5

    aget-object v10, v1, v8

    invoke-static {v9, v10, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->addToRow([I[II)V

    :cond_9e
    add-int/lit8 v8, v8, -0x1

    goto :goto_85

    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_a4
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0

    :cond_ac
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public computeTranspose()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 10

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v2, v3, :cond_40

    move v3, v1

    :goto_1b
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ge v3, v4, :cond_3d

    ushr-int/lit8 v4, v3, 0x5

    and-int/lit8 v5, v3, 0x1f

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v2

    aget v4, v6, v4

    ushr-int/2addr v4, v5

    const/4 v5, 0x1

    and-int/2addr v4, v5

    ushr-int/lit8 v6, v2, 0x5

    and-int/lit8 v7, v2, 0x1f

    if-ne v4, v5, :cond_3a

    aget-object v4, v0, v3

    aget v8, v4, v6

    shl-int/2addr v5, v7

    or-int/2addr v5, v8

    aput v5, v4, v6

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_40
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v0, v2, :cond_34

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v2, :cond_34

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-eq v0, v2, :cond_1b

    goto :goto_34

    :cond_1b
    move v0, v1

    :goto_1c
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_32

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2f

    return v1

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_32
    const/4 p1, 0x1

    return p1

    :cond_34
    :goto_34
    return v1
.end method

.method public extendLeftCompactForm()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 9

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/2addr v0, v1

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v3

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v3, v2

    :goto_16
    if-ltz v3, :cond_3a

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v3

    iget-object v5, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v3

    shr-int/lit8 v5, v0, 0x5

    aget v6, v4, v5

    and-int/lit8 v7, v0, 0x1f

    shl-int v7, v2, v7

    or-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_3a
    return-object v1
.end method

.method public extendRightCompactForm()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 14

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v1, v1, 0x5

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v2, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_18
    if-ltz v3, :cond_86

    iget-object v5, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v5, v3

    shr-int/lit8 v7, v3, 0x5

    aget v8, v6, v7

    and-int/lit8 v9, v3, 0x1f

    shl-int v9, v4, v9

    or-int/2addr v8, v9

    aput v8, v6, v7

    const/4 v6, 0x0

    if-eqz v2, :cond_78

    move v5, v1

    :goto_2d
    iget v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v8, v7, -0x1

    if-ge v6, v8, :cond_54

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v3

    aget v7, v7, v6

    iget-object v8, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v8, v3

    add-int/lit8 v10, v5, 0x1

    aget v11, v9, v5

    shl-int v12, v7, v2

    or-int/2addr v11, v12

    aput v11, v9, v5

    aget-object v5, v8, v3

    aget v8, v5, v10

    rsub-int/lit8 v9, v2, 0x20

    ushr-int/2addr v7, v9

    or-int/2addr v7, v8

    aput v7, v5, v10

    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto :goto_2d

    :cond_54
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v3

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    iget-object v7, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v7, v3

    add-int/lit8 v9, v5, 0x1

    aget v10, v8, v5

    shl-int v11, v6, v2

    or-int/2addr v10, v11

    aput v10, v8, v5

    iget v5, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v9, v5, :cond_83

    aget-object v5, v7, v3

    aget v7, v5, v9

    rsub-int/lit8 v8, v2, 0x20

    ushr-int/2addr v6, v8

    or-int/2addr v6, v7

    aput v6, v5, v9

    goto :goto_83

    :cond_78
    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v3

    aget-object v5, v5, v3

    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v7, v6, v5, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_83
    :goto_83
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    :cond_86
    return-object v0
.end method

.method public getEncoded()[B
    .registers 10

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int/2addr v0, v1

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    const/4 v4, 0x4

    invoke-static {v2, v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    ushr-int/lit8 v2, v2, 0x5

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v4, v4, 0x1f

    move v5, v1

    move v1, v3

    :goto_24
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v6, :cond_53

    move v6, v5

    move v5, v3

    :goto_2a
    if-ge v5, v2, :cond_3a

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v1

    aget v7, v7, v5

    invoke-static {v7, v0, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x4

    goto :goto_2a

    :cond_3a
    move v5, v3

    :goto_3b
    if-ge v5, v4, :cond_4f

    add-int/lit8 v7, v6, 0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v1

    aget v8, v8, v2

    ushr-int/2addr v8, v5

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    add-int/lit8 v5, v5, 0x8

    move v6, v7

    goto :goto_3b

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    move v5, v6

    goto :goto_24

    :cond_53
    return-object v0
.end method

.method public getHammingWeight()D
    .registers 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v1, v1, 0x1f

    if-nez v1, :cond_b

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    goto :goto_f

    :cond_b
    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v2, v2, -0x1

    :goto_f
    const-wide/16 v3, 0x0

    move-wide v6, v3

    move-wide v8, v6

    const/4 v3, 0x0

    :goto_14
    iget v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v3, v4, :cond_54

    const/4 v4, 0x0

    :goto_19
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-ge v4, v2, :cond_3a

    iget-object v12, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v12, v12, v3

    aget v12, v12, v4

    move-wide v13, v8

    move-wide v7, v6

    const/4 v6, 0x0

    :goto_26
    const/16 v9, 0x20

    if-ge v6, v9, :cond_35

    ushr-int v9, v12, v6

    and-int/lit8 v9, v9, 0x1

    move v15, v6

    int-to-double v5, v9

    add-double/2addr v7, v5

    add-double/2addr v13, v10

    add-int/lit8 v6, v15, 0x1

    goto :goto_26

    :cond_35
    add-int/lit8 v4, v4, 0x1

    move-wide v6, v7

    move-wide v8, v13

    goto :goto_19

    :cond_3a
    iget-object v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v3

    iget v5, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    const/4 v5, 0x0

    :goto_45
    if-ge v5, v1, :cond_51

    ushr-int v12, v4, v5

    and-int/lit8 v12, v12, 0x1

    int-to-double v12, v12

    add-double/2addr v6, v12

    add-double/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_54
    div-double/2addr v6, v8

    return-wide v6
.end method

.method public getIntArray()[[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    return-object v0
.end method

.method public getLeftSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 9

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-le v0, v1, :cond_48

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    filled-new-array {v1, v0}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    if-nez v2, :cond_25

    const/4 v2, -0x1

    :cond_25
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v4, v3

    :goto_28
    if-ltz v4, :cond_40

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v4

    aget-object v6, v1, v4

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, v1, v4

    add-int/lit8 v6, v0, -0x1

    aget v7, v5, v6

    and-int/2addr v7, v2

    aput v7, v5, v6

    add-int/lit8 v4, v4, -0x1

    goto :goto_28

    :cond_40
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0

    :cond_48
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "empty submatrix"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    return v0
.end method

.method public getRightSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 13

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-le v0, v1, :cond_7c

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v1, v1, 0x1f

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v3, v3, -0x1

    :goto_1e
    if-ltz v3, :cond_7b

    const/4 v4, 0x0

    if-eqz v1, :cond_6b

    move v5, v0

    :goto_24
    iget v6, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v7, v6, -0x1

    if-ge v4, v7, :cond_45

    iget-object v6, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v3

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v7, v3

    add-int/lit8 v9, v5, 0x1

    aget v5, v8, v5

    ushr-int/2addr v5, v1

    aget-object v7, v7, v3

    aget v7, v7, v9

    rsub-int/lit8 v8, v1, 0x20

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_24

    :cond_45
    iget-object v4, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v4, v3

    add-int/lit8 v8, v6, -0x1

    iget-object v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v9, v3

    add-int/lit8 v11, v5, 0x1

    aget v5, v10, v5

    ushr-int/2addr v5, v1

    aput v5, v7, v8

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v11, v5, :cond_78

    aget-object v4, v4, v3

    add-int/lit8 v6, v6, -0x1

    aget v5, v4, v6

    aget-object v7, v9, v3

    aget v7, v7, v11

    rsub-int/lit8 v8, v1, 0x20

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v4, v6

    goto :goto_78

    :cond_6b
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    iget-object v6, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v3

    iget v7, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v5, v0, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_78
    :goto_78
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    :cond_7b
    return-object v2

    :cond_7c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "empty submatrix"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRow(I)[I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_d
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v2, :cond_1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1f
    return v0
.end method

.method public isZero()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v2, :cond_1a

    move v2, v0

    :goto_7
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v2, v3, :cond_17

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

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

.method public leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object p1

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    new-array v0, v0, [[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_22

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v3, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_22
    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object p1

    :cond_2a
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "length mismatch"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 13

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_77

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v0, v1, :cond_6f

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    new-array v0, v0, [I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v1, v1, 0x5

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_22
    if-ge v5, v1, :cond_48

    move v7, v6

    move v6, v3

    :cond_26
    aget v8, p1, v5

    and-int/2addr v8, v6

    if-eqz v8, :cond_3e

    move v8, v4

    :goto_2c
    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v9, :cond_3e

    aget v9, v0, v8

    iget-object v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v7

    aget v10, v10, v8

    xor-int/2addr v9, v10

    aput v9, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_26

    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_22

    :cond_48
    :goto_48
    if-eq v3, v2, :cond_67

    aget v5, p1, v1

    and-int/2addr v5, v3

    if-eqz v5, :cond_62

    move v5, v4

    :goto_50
    iget v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v5, v7, :cond_62

    aget v7, v0, v5

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v6

    aget v8, v8, v5

    xor-int/2addr v7, v8

    aput v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_62
    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_67
    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object p1

    :cond_6f
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "length mismatch"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_77
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "vector is not defined over GF(2)"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public leftMultiplyLeftCompactForm(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 12

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_a5

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v0, v1, :cond_9d

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    ushr-int/lit8 v1, v1, 0x5

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_22
    const/4 v5, 0x1

    if-ge v3, v1, :cond_5a

    move v6, v4

    move v4, v5

    :cond_27
    aget v7, p1, v3

    and-int/2addr v7, v4

    if-eqz v7, :cond_50

    move v7, v2

    :goto_2d
    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v7, v8, :cond_3f

    aget v8, v0, v7

    iget-object v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v6

    aget v9, v9, v7

    xor-int/2addr v8, v9

    aput v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_3f
    iget v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v7, v6

    ushr-int/lit8 v7, v7, 0x5

    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v8, v6

    and-int/lit8 v8, v8, 0x1f

    aget v9, v0, v7

    shl-int v8, v5, v8

    or-int/2addr v8, v9

    aput v8, v0, v7

    :cond_50
    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_27

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_22

    :cond_5a
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v3, v3, 0x1f

    shl-int v3, v5, v3

    move v6, v4

    move v4, v5

    :goto_62
    if-eq v4, v3, :cond_92

    aget v7, p1, v1

    and-int/2addr v7, v4

    if-eqz v7, :cond_8d

    move v7, v2

    :goto_6a
    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v7, v8, :cond_7c

    aget v8, v0, v7

    iget-object v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v6

    aget v9, v9, v7

    xor-int/2addr v8, v9

    aput v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    :cond_7c
    iget v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v7, v6

    ushr-int/lit8 v7, v7, 0x5

    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v8, v6

    and-int/lit8 v8, v8, 0x1f

    aget v9, v0, v7

    shl-int v8, v5, v8

    or-int/2addr v8, v9

    aput v8, v0, v7

    :cond_8d
    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v4, v4, 0x1

    goto :goto_62

    :cond_92
    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v1, v2

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object p1

    :cond_9d
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "length mismatch"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a5
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "vector is not defined over GF(2)"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 16

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    if-eqz v0, :cond_98

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v1, :cond_90

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    if-nez p1, :cond_20

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    goto :goto_23

    :cond_20
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v3, v2

    :goto_23
    const/4 v4, 0x0

    move v5, v4

    :goto_25
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v5, v6, :cond_8f

    move v6, v4

    move v7, v6

    :goto_2b
    if-ge v6, v3, :cond_5e

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v5

    aget v8, v8, v6

    move v9, v7

    move v7, v4

    :goto_35
    const/16 v10, 0x20

    if-ge v7, v10, :cond_5a

    shl-int v10, v2, v7

    and-int/2addr v10, v8

    if-eqz v10, :cond_55

    move v10, v4

    :goto_3f
    iget v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v10, v11, :cond_55

    iget-object v11, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v5

    aget v12, v11, v10

    iget-object v13, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v13, v13, v9

    aget v13, v13, v10

    xor-int/2addr v12, v13

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3f

    :cond_55
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_5a
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_2b

    :cond_5e
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v5

    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v8, v2

    aget v6, v6, v8

    move v8, v7

    move v7, v4

    :goto_69
    if-ge v7, p1, :cond_8c

    shl-int v9, v2, v7

    and-int/2addr v9, v6

    if-eqz v9, :cond_87

    move v9, v4

    :goto_71
    iget v10, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v9, v10, :cond_87

    iget-object v10, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v5

    aget v11, v10, v9

    iget-object v12, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v12, v12, v8

    aget v12, v12, v9

    xor-int/2addr v11, v12

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_71

    :cond_87
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    :cond_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_8f
    return-object v1

    :cond_90
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "length mismatch"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_98
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "matrix is not defined over GF(2)"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .registers 12

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object p1

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v1, :cond_44

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-ltz v1, :cond_43

    ushr-int/lit8 v2, v1, 0x5

    and-int/lit8 v3, v1, 0x1f

    aget v4, p1, v1

    ushr-int/lit8 v4, v4, 0x5

    aget v5, p1, v1

    and-int/lit8 v5, v5, 0x1f

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v6, v6, -0x1

    :goto_28
    if-ltz v6, :cond_40

    iget-object v7, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v6

    aget v8, v7, v2

    iget-object v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v6

    aget v9, v9, v4

    ushr-int/2addr v9, v5

    and-int/lit8 v9, v9, 0x1

    shl-int/2addr v9, v3

    or-int/2addr v8, v9

    aput v8, v7, v2

    add-int/lit8 v6, v6, -0x1

    goto :goto_28

    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    :cond_43
    return-object v0

    :cond_44
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "length mismatch"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 10

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_5f

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v1, :cond_57

    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_1a
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v2, v3, :cond_4f

    move v3, v1

    move v4, v3

    :goto_20
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v5, :cond_31

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v2

    aget v5, v5, v3

    aget v6, p1, v3

    and-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_31
    move v3, v1

    move v5, v3

    :goto_33
    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ge v3, v6, :cond_3f

    ushr-int v6, v4, v3

    and-int/2addr v6, v7

    xor-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3f
    if-ne v5, v7, :cond_4c

    ushr-int/lit8 v3, v2, 0x5

    aget v4, v0, v3

    and-int/lit8 v5, v2, 0x1f

    shl-int v5, v7, v5

    or-int/2addr v4, v5

    aput v4, v0, v3

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_4f
    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object p1

    :cond_57
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "length mismatch"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5f
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "vector is not defined over GF(2)"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rightMultiplyRightCompactForm(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-eqz v2, :cond_b4

    iget v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_ac

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v1

    iget v2, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v2, v2, 0x1f

    ushr-int/lit8 v2, v2, 0x5

    new-array v2, v2, [I

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v3, v3, 0x5

    iget v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x0

    move v6, v5

    :goto_29
    iget v7, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v6, v7, :cond_a4

    shr-int/lit8 v7, v6, 0x5

    aget v8, v1, v7

    and-int/lit8 v9, v6, 0x1f

    ushr-int/2addr v8, v9

    const/4 v10, 0x1

    and-int/2addr v8, v10

    const/16 v11, 0x20

    if-eqz v4, :cond_74

    move v12, v3

    move v13, v8

    move v8, v5

    :goto_3d
    iget v14, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v14, v10

    if-ge v8, v14, :cond_5a

    add-int/lit8 v14, v12, 0x1

    aget v12, v1, v12

    ushr-int/2addr v12, v4

    aget v15, v1, v14

    rsub-int/lit8 v16, v4, 0x20

    shl-int v15, v15, v16

    or-int/2addr v12, v15

    iget-object v15, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v15, v15, v6

    aget v15, v15, v8

    and-int/2addr v12, v15

    xor-int/2addr v13, v12

    add-int/lit8 v8, v8, 0x1

    move v12, v14

    goto :goto_3d

    :cond_5a
    add-int/lit8 v8, v12, 0x1

    aget v12, v1, v12

    ushr-int/2addr v12, v4

    array-length v14, v1

    if-ge v8, v14, :cond_68

    aget v8, v1, v8

    rsub-int/lit8 v14, v4, 0x20

    shl-int/2addr v8, v14

    or-int/2addr v12, v8

    :cond_68
    iget-object v8, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v6

    iget v14, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v14, v10

    aget v8, v8, v14

    and-int/2addr v8, v12

    xor-int/2addr v8, v13

    goto :goto_8c

    :cond_74
    move v13, v3

    move v12, v8

    move v8, v5

    :goto_77
    iget v14, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v14, :cond_8b

    iget-object v14, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v14, v14, v6

    aget v14, v14, v8

    add-int/lit8 v15, v13, 0x1

    aget v13, v1, v13

    and-int/2addr v13, v14

    xor-int/2addr v12, v13

    add-int/lit8 v8, v8, 0x1

    move v13, v15

    goto :goto_77

    :cond_8b
    move v8, v12

    :goto_8c
    move v12, v5

    move v13, v8

    move v8, v12

    :goto_8f
    if-ge v8, v11, :cond_98

    and-int/lit8 v14, v13, 0x1

    xor-int/2addr v12, v14

    ushr-int/2addr v13, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_8f

    :cond_98
    if-ne v12, v10, :cond_a1

    aget v8, v2, v7

    shl-int v9, v10, v9

    or-int/2addr v8, v9

    aput v8, v2, v7

    :cond_a1
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_a4
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v1

    :cond_ac
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "length mismatch"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b4
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "vector is not defined over GF(2)"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_9

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    goto :goto_d

    :cond_9
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v1, v1, -0x1

    :goto_d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v4, v5, :cond_79

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v3

    :goto_2d
    const/16 v6, 0x30

    const/16 v7, 0x31

    if-ge v5, v1, :cond_54

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v4

    aget v8, v8, v5

    move v9, v3

    :goto_3a
    const/16 v10, 0x20

    if-ge v9, v10, :cond_4e

    ushr-int v10, v8, v9

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_48

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4b

    :cond_48
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    :cond_4e
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_54
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v4

    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v8, v8, -0x1

    aget v5, v5, v8

    move v8, v3

    :goto_5f
    if-ge v8, v0, :cond_71

    ushr-int v9, v5, v8

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_6b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6e

    :cond_6b
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6e
    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    :cond_71
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_79
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
