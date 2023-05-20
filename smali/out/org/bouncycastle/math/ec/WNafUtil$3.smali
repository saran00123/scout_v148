.class final Lorg/bouncycastle/math/ec/WNafUtil$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;Lorg/bouncycastle/math/ec/WNafPreCompInfo;Z)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

.field final synthetic val$includeNegated:Z

.field final synthetic val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/WNafPreCompInfo;ZLorg/bouncycastle/math/ec/ECPointMap;)V
    .registers 4

    iput-object p1, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    iput-object p3, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .registers 6

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    if-lt v0, p2, :cond_20

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/math/ec/WNafUtil$3;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result p2

    if-eqz p2, :cond_20

    if-eqz p4, :cond_1e

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/math/ec/WNafUtil$3;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
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
    .registers 9

    instance-of v0, p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    array-length v1, v1

    iget-boolean v2, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/math/ec/WNafUtil$3;->checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    return-object p1

    :cond_21
    new-instance p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPromotionCountdown()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    iget-object v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v2, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    invoke-interface {v2, v1}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/bouncycastle/math/ec/ECPoint;)V

    :cond_40
    iget-object v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Lorg/bouncycastle/math/ec/ECPoint;

    const/4 v3, 0x0

    move v4, v3

    :goto_4b
    array-length v5, v1

    if-ge v4, v5, :cond_5b

    iget-object v5, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    aget-object v6, v1, v4

    invoke-interface {v5, v6}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_5b
    invoke-virtual {p1, v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    if-eqz v0, :cond_79

    array-length v0, v2

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    :goto_68
    array-length v1, v0

    if-ge v3, v1, :cond_76

    aget-object v1, v2, v3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    :cond_76
    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/bouncycastle/math/ec/ECPoint;)V

    :cond_79
    return-object p1
.end method
