.class public Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;
.super Ljava/lang/Object;


# instance fields
.field private c:I

.field private cL:J

.field private x0:I

.field private x0L:J


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iput p2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    iput-wide p3, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;

    iget v0, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    iget v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    if-eq v0, v2, :cond_f

    return v1

    :cond_f
    iget v0, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iget v2, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    if-eq v0, v2, :cond_16

    return v1

    :cond_16
    iget-wide v2, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1f

    return v1

    :cond_1f
    iget-wide v2, p1, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_28

    return v1

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method public getC()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    return v0
.end method

.method public getCL()J
    .registers 3

    iget-wide v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    return-wide v0
.end method

.method public getX0()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    return v0
.end method

.method public getX0L()J
    .registers 3

    iget-wide v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iget v1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->c:I

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    long-to-int v3, v1

    xor-int/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lorg/bouncycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    long-to-int v4, v1

    xor-int/2addr v0, v4

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method
