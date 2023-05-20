.class public Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SecP224R1FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    return-void
.end method

.method private static RM([I[I[I[I[I[I[I)V
    .registers 7

    invoke-static {p4, p2, p6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p6, p0, p6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p3, p1, p5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p5, p6, p5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    invoke-static {p3, p2, p6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p5, p3}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {p4, p1, p4}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p4, p6, p4}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    invoke-static {p4, p5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    invoke-static {p5, p0, p5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    return-void
.end method

.method private static RP([I[I[I[I[I)V
    .registers 15

    invoke-static {p0, p3}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_d
    const/4 v0, 0x7

    if-ge v9, v0, :cond_2d

    invoke-static {p1, v7}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {p2, v8}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    const/4 v0, 0x1

    shl-int/2addr v0, v9

    :goto_18
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_20

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    goto :goto_18

    :cond_20
    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RM([I[I[I[I[I[I[I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_2d
    return-void
.end method

.method private static RS([I[I[I[I)V
    .registers 4

    invoke-static {p1, p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    invoke-static {p1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->twice([I[I)V

    invoke-static {p0, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    invoke-static {p2, p3, p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    invoke-static {p2, p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    const/4 p0, 0x7

    const/4 p1, 0x2

    const/4 p3, 0x0

    invoke-static {p0, p2, p1, p3}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result p0

    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    return-void
.end method

.method private static isSquare([I)Z
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    const/4 p0, 0x0

    :goto_c
    const/4 v2, 0x7

    if-ge p0, v2, :cond_1d

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    const/4 v2, 0x1

    shl-int/2addr v2, p0

    invoke-static {v0, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_1d
    const/16 p0, 0x5f

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result p0

    return p0
.end method

.method private static trySqrt([I[I[I)Z
    .registers 10

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, p1, v1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v3

    invoke-static {p0, v0, p1, v3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RP([I[I[I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object p0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    move v5, v2

    :goto_1f
    const/16 v6, 0x60

    if-ge v5, v6, :cond_3c

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {p1, v4}, Lorg/bouncycastle/math/raw/Nat224;->copy([I[I)V

    invoke-static {v0, p1, v3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-static {v4, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->inv([I[I)V

    invoke-static {p2, p0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    return v2

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_3c
    return v1
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->inv([I[I)V

    iget-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, p1}, Lorg/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result p1

    return p1
.end method

.method public getFieldName()Ljava/lang/String;
    .registers 2

    const-string v0, "SecP224R1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->inv([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_41

    :cond_f
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v2}, Lorg/bouncycastle/math/raw/Mod;->random([I)[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v3

    invoke-static {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isSquare([I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_28

    return-object v5

    :cond_28
    :goto_28
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->trySqrt([I[I[I)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-static {v2, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    goto :goto_28

    :cond_32
    invoke-static {v3, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    invoke-static {v0, v2}, Lorg/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v5, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    :cond_40
    return-object v5

    :cond_41
    :goto_41
    return-object p0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p1
.end method

.method public testBitZero()Z
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat224;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
