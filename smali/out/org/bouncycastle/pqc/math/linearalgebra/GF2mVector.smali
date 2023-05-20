.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;
.super Lorg/bouncycastle/pqc/math/linearalgebra/Vector;


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private vector:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V
    .registers 12

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    if-le v2, v0, :cond_18

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_d

    :cond_18
    array-length v2, p2

    rem-int/2addr v2, v1

    const-string v3, "Byte array is not an encoded vector over the given finite field."

    if-nez v2, :cond_5b

    array-length v2, p2

    div-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    const/4 v1, 0x0

    move v2, v1

    move v4, v2

    :goto_2b
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v5, v5

    if-ge v2, v5, :cond_5a

    move v5, v4

    move v4, v1

    :goto_32
    if-ge v4, v0, :cond_46

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v7, v6, v2

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v4

    or-int/2addr v5, v7

    aput v5, v6, v2

    add-int/lit8 v4, v4, 0x8

    move v5, v8

    goto :goto_32

    :cond_46
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v4, v4, v2

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v4

    if-eqz v4, :cond_54

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_2b

    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    return-void

    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[I)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    array-length v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_20

    aget v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v1

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_18
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Element array is not specified over the given finite field."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result p1

    return p1
.end method

.method public getEncoded()[B
    .registers 9

    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    if-le v2, v0, :cond_10

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_10
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v2, v2

    mul-int/2addr v2, v1

    new-array v1, v2, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_19
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v5, v5

    if-ge v3, v5, :cond_34

    move v5, v4

    move v4, v2

    :goto_20
    if-ge v4, v0, :cond_30

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v7, v7, v3

    ushr-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    add-int/lit8 v4, v4, 0x8

    move v5, v6

    goto :goto_20

    :cond_30
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_19

    :cond_34
    return-object v1
.end method

.method public getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getIntArrayForm()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_12

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v2, v2, v0

    if-eqz v2, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_12
    return v1
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .registers 6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    array-length v1, p1

    if-ne v0, v1, :cond_24

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v3, p1, v1

    aget v2, v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object p1

    :cond_24
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "permutation size and vector size mismatch"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v3, v3

    if-ge v2, v3, :cond_34

    move v3, v1

    :goto_d
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v4

    if-ge v3, v4, :cond_2c

    and-int/lit8 v4, v3, 0x1f

    const/4 v5, 0x1

    shl-int v4, v5, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v5, v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_24

    const/16 v4, 0x31

    goto :goto_26

    :cond_24
    const/16 v4, 0x30

    :goto_26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2c
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
