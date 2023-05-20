.class final Lorg/bouncycastle/math/ec/WNafUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lorg/bouncycastle/math/ec/ECCurve;

.field final synthetic val$includeNegated:Z

.field final synthetic val$minWidth:I

.field final synthetic val$p:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>(IZLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECCurve;)V
    .registers 5

    iput p1, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    iput-object p3, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .registers 7

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt v0, p2, :cond_28

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result p2

    if-eqz p2, :cond_28

    if-eqz p4, :cond_26

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result p1

    if-eqz p1, :cond_28

    :cond_26
    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    return p1
.end method

.method private checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z
    .registers 3

    if-eqz p1, :cond_7

    array-length p1, p1

    if-lt p1, p2, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .registers 15

    instance-of v0, p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    iget v0, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    const/16 v2, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v4, v0, -0x2

    const/4 v5, 0x1

    shl-int v4, v5, v4

    iget-boolean v6, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    invoke-direct {p0, p1, v0, v4, v6}, Lorg/bouncycastle/math/ec/WNafUtil$2;->checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    return-object p1

    :cond_27
    new-instance v4, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setConfWidth(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_4c

    :cond_49
    move-object p1, v1

    move-object v6, p1

    move-object v7, v6

    :goto_4c
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    shl-int v2, v5, v2

    const/4 v8, 0x0

    if-nez v6, :cond_65

    invoke-static {}, Lorg/bouncycastle/math/ec/WNafUtil;->access$000()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    move v9, v8

    goto :goto_66

    :cond_65
    array-length v9, v6

    :goto_66
    if-ge v9, v2, :cond_103

    invoke-static {v6, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->access$100([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    if-ne v2, v5, :cond_78

    iget-object v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aput-object v1, v6, v8

    goto/16 :goto_103

    :cond_78
    if-nez v9, :cond_80

    iget-object v10, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    aput-object v10, v6, v8

    move v10, v5

    goto :goto_81

    :cond_80
    move v10, v9

    :goto_81
    if-ne v2, v3, :cond_8d

    iget-object v3, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    aput-object v3, v6, v5

    goto/16 :goto_fc

    :cond_8d
    add-int/lit8 v5, v10, -0x1

    aget-object v5, v6, v5

    if-nez p1, :cond_ef

    aget-object p1, v6, v8

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v11

    if-nez v11, :cond_ef

    iget-object v11, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {v11}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v11

    if-eqz v11, :cond_ef

    iget-object v11, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v11

    const/16 v12, 0x40

    if-lt v11, v12, :cond_ef

    iget-object v11, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v11

    if-eq v11, v3, :cond_c0

    const/4 v3, 0x3

    if-eq v11, v3, :cond_c0

    const/4 v3, 0x4

    if-eq v11, v3, :cond_c0

    goto :goto_ef

    :cond_c0
    invoke-virtual {p1, v8}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v5, v11}, Lorg/bouncycastle/math/ec/ECPoint;->scaleX(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5, v12}, Lorg/bouncycastle/math/ec/ECPoint;->scaleY(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    if-nez v9, :cond_f0

    aput-object v5, v6, v8

    goto :goto_f0

    :cond_ef
    :goto_ef
    move-object v3, p1

    :cond_f0
    :goto_f0
    if-ge v10, v2, :cond_fc

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v6, v10

    move v10, v11

    goto :goto_f0

    :cond_fc
    :goto_fc
    iget-object v3, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    sub-int v5, v2, v9

    invoke-virtual {v3, v6, v9, v5, v1}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;IILorg/bouncycastle/math/ec/ECFieldElement;)V

    :cond_103
    :goto_103
    iget-boolean v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    if-eqz v1, :cond_122

    if-nez v7, :cond_10d

    new-array v1, v2, [Lorg/bouncycastle/math/ec/ECPoint;

    :goto_10b
    move-object v7, v1

    goto :goto_115

    :cond_10d
    array-length v8, v7

    if-ge v8, v2, :cond_115

    invoke-static {v7, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->access$100([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_10b

    :cond_115
    :goto_115
    if-ge v8, v2, :cond_122

    aget-object v1, v6, v8

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aput-object v1, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_115

    :cond_122
    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    return-object v4
.end method
