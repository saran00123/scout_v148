.class public Lorg/bouncycastle/math/ec/ScaleYNegateXPointMap;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/ECPointMap;


# instance fields
.field protected final scale:Lorg/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ScaleYNegateXPointMap;->scale:Lorg/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method


# virtual methods
.method public map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ScaleYNegateXPointMap;->scale:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->scaleYNegateX(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
