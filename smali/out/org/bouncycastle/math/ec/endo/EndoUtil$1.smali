.class final Lorg/bouncycastle/math/ec/endo/EndoUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

.field final synthetic val$p:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)Z
    .registers 4

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v0

    if-ne v0, p2, :cond_10

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->getMappedPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .registers 4

    instance-of v0, p1, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->checkExisting(Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p1

    :cond_11
    iget-object p1, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-interface {p1}, Lorg/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-interface {p1, v0}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->setEndomorphism(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->setMappedPoint(Lorg/bouncycastle/math/ec/ECPoint;)V

    return-object v0
.end method
