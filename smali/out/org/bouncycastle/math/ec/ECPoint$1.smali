.class Lorg/bouncycastle/math/ec/ECPoint$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/ECPoint;

.field final synthetic val$checkOrder:Z

.field final synthetic val$decompressed:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;ZZ)V
    .registers 4

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->this$0:Lorg/bouncycastle/math/ec/ECPoint;

    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    iput-boolean p3, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .registers 3

    instance-of v0, p1, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-nez p1, :cond_f

    new-instance p1, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;

    invoke-direct {p1}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;-><init>()V

    :cond_f
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->hasFailed()Z

    move-result v0

    if-eqz v0, :cond_16

    return-object p1

    :cond_16
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->hasCurveEquationPassed()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->this$0:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->satisfiesCurveEquation()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    return-object p1

    :cond_2c
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportCurveEquationPassed()V

    :cond_2f
    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->hasOrderPassed()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->this$0:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    return-object p1

    :cond_45
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportOrderPassed()V

    :cond_48
    return-object p1
.end method
