.class public abstract Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;
.super Lorg/bouncycastle/math/ec/ECPoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method


# virtual methods
.method protected getCompressionYTilde()Z
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v0

    return v0
.end method

.method protected satisfiesCurveEquation()Z
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->getCurveCoordinateSystem()I

    move-result v4

    if-eqz v4, :cond_6d

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_4f

    const/4 v5, 0x2

    if-eq v4, v5, :cond_30

    const/4 v5, 0x3

    if-eq v4, v5, :cond_30

    const/4 v5, 0x4

    if-ne v4, v5, :cond_28

    goto :goto_30

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    :goto_30
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_6d

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_6d

    :cond_4f
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_6d

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    :cond_6d
    :goto_6d
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
