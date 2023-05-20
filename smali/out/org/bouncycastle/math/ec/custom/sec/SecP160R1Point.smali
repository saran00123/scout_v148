.class public Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 16

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p0

    :cond_e
    if-ne p0, p1, :cond_15

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-virtual {p1, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->createExt()[I

    move-result-object v7

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v8

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v9

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v10

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->isOne()Z

    move-result v11

    if-eqz v11, :cond_55

    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v4, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    goto :goto_6b

    :cond_55
    iget-object v12, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v12, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v9, v3, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    iget-object v3, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v9, v3, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v9, v3, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    move-object v3, v8

    move-object v4, v9

    :goto_6b
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->isOne()Z

    move-result v12

    if-eqz v12, :cond_76

    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    goto :goto_8c

    :cond_76
    iget-object v13, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v13, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v10, v1, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    iget-object v1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v10, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    iget-object v1, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v10, v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    move-object v1, v7

    move-object v2, v10

    :goto_8c
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v13

    invoke-static {v1, v3, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    invoke-static {v2, v4, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    invoke-static {v13}, Lorg/bouncycastle/math/raw/Nat160;->isZero([I)Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-static {v8}, Lorg/bouncycastle/math/raw/Nat160;->isZero([I)Z

    move-result p1

    if-eqz p1, :cond_a7

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_a7
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_ac
    invoke-static {v13, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v3

    invoke-static {v9, v13, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    invoke-static {v9, v1, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->negate([I[I)V

    invoke-static {v2, v3, v7}, Lorg/bouncycastle/math/raw/Nat160;->mul([I[I[I)V

    invoke-static {v9, v9, v3}, Lorg/bouncycastle/math/raw/Nat160;->addBothTo([I[I[I)I

    move-result v1

    invoke-static {v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce32(I[I)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    iget-object v2, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v8, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    iget-object v2, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v4, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    iget-object v3, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v4, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v9, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v3, v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiplyAddToExt([I[I[I)V

    iget-object v3, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v7, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce([I[I)V

    new-instance v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v3, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    if-nez v11, :cond_fd

    iget-object v4, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v7, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v4, v5, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    :cond_fd
    if-nez v12, :cond_108

    iget-object v4, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v5, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v4, p1, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    :cond_108
    const/4 p1, 0x1

    new-array p1, p1, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v3, p1, v6

    new-instance v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;

    invoke-direct {v3, v0, v1, v2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 5

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    :cond_f
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_18
    :goto_18
    return-object p0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 13

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1a
    iget-object v2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v6

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v7

    iget-object v8, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v8

    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->isOne()Z

    move-result v9

    iget-object v10, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    if-nez v9, :cond_4b

    iget-object v10, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v10, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    move-object v10, v6

    :cond_4b
    iget-object v11, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v11, v10, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    iget-object v11, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v11, v10, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->add([I[I[I)V

    invoke-static {v6, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    invoke-static {v6, v6, v6}, Lorg/bouncycastle/math/raw/Nat160;->addBothTo([I[I[I)I

    move-result v10

    invoke-static {v10, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce32(I[I)V

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v7, v2, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    const/4 v2, 0x2

    const/4 v10, 0x5

    invoke-static {v10, v7, v2, v4}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v2

    invoke-static {v2, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce32(I[I)V

    const/4 v2, 0x3

    invoke-static {v10, v8, v2, v4, v5}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v2

    invoke-static {v2, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce32(I[I)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v2, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v6, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v8, v7, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    iget-object v8, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v8, v7, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    new-instance v8, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    iget-object v10, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v11, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v7, v10, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    iget-object v7, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v10, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v7, v6, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    iget-object v7, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v10, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v7, v5, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v6, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->twice([I[I)V

    if-nez v9, :cond_be

    iget-object v1, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v6, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v3, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    :cond_be
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v3, v4

    invoke-direct {v1, v0, v2, v8, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 3

    if-ne p0, p1, :cond_7

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p1

    :cond_e
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_19
    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_22

    return-object p1

    :cond_22
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
