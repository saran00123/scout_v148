.class public Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;
.super Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;


# instance fields
.field protected x:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xef

    if-gt v0, v1, :cond_1a

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->fromBigInteger(Ljava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SecT239FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>([J)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->add([J[J[J)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p1
.end method

.method public addOne()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->addOne([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v0, p1}, Lorg/bouncycastle/math/raw/Nat256;->eq64([J[J)Z

    move-result p1

    return p1
.end method

.method public getFieldName()Ljava/lang/String;
    .registers 2

    const-string v0, "SecT239Field"

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    const/16 v0, 0xef

    return v0
.end method

.method public getK1()I
    .registers 2

    const/16 v0, 0x9e

    return v0
.end method

.method public getK2()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getK3()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getM()I
    .registers 2

    const/16 v0, 0xef

    return v0
.end method

.method public getRepresentation()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public halfTrace()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->halfTrace([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public hasFastTrace()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->hashCode([JII)I

    move-result v0

    const v1, 0x16caffe

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->invert([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public isOne()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isOne64([J)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->isZero64([J)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p1
.end method

.method public multiplyMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p2, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p2, p2, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p3, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p3, p3, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiplyAddToExt([J[J[J)V

    invoke-static {p2, p3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiplyAddToExt([J[J[J)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    new-instance p2, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p2
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    return-object p0
.end method

.method public sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->sqrt([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public square()Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v1
.end method

.method public squareMinusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    check-cast p2, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p2, p2, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareAddToExt([J[J)V

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiplyAddToExt([J[J[J)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    new-instance p2, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p2
.end method

.method public squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-object p0

    :cond_4
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p1
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public testBitZero()Z
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat256;->toBigInteger64([J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public trace()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT239FieldElement;->x:[J

    invoke-static {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->trace([J)I

    move-result v0

    return v0
.end method
