.class public Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SecP160R2FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->add([I[I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object p1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->addOne([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object v1
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->inv([I[I)V

    iget-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0, p1}, Lorg/bouncycastle/math/raw/Nat160;->eq([I[I)Z

    move-result p1

    return p1
.end method

.method public getFieldName()Ljava/lang/String;
    .registers 2

    const-string v0, "SecP160R2Field"

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->inv([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object p1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->negate([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 9

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_9b

    :cond_10
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    invoke-static {v2, v0, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    invoke-static {v3, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v3, v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v4, v2, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    const/4 v6, 0x7

    invoke-static {v4, v6, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v3, v4, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    invoke-static {v3, v5, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v4, v2, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v6

    const/16 v7, 0xe

    invoke-static {v4, v7, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v6, v3, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    const/16 v7, 0x1f

    invoke-static {v6, v7, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v3, v6, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    const/16 v7, 0x3e

    invoke-static {v3, v7, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v6, v3, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    invoke-static {v6, v5, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v3, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    const/16 v6, 0x12

    invoke-static {v3, v6, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v3, v4, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    const/4 v4, 0x2

    invoke-static {v3, v4, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v3, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    invoke-static {v3, v5, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v3, v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    const/4 v5, 0x6

    invoke-static {v3, v5, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v3, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    invoke-static {v3, v4, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->squareN([II[I)V

    invoke-static {v3, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->multiply([I[I[I)V

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat160;->eq([I[I)Z

    move-result v0

    if-eqz v0, :cond_99

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    goto :goto_9a

    :cond_99
    const/4 v0, 0x0

    :goto_9a
    return-object v0

    :cond_9b
    :goto_9b
    return-object p0
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->square([I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object v1
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2Field;->subtract([I[I[I)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;-><init>([I)V

    return-object p1
.end method

.method public testBitZero()Z
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat160;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R2FieldElement;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat160;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
