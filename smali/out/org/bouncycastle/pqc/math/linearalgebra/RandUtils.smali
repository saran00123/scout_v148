.class public Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static nextInt(Ljava/security/SecureRandom;I)I
    .registers 5

    neg-int v0, p1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_13

    int-to-long v0, p1

    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result p0

    ushr-int/lit8 p0, p0, 0x1

    int-to-long p0, p0

    mul-long/2addr v0, p0

    const/16 p0, 0x1f

    shr-long p0, v0, p0

    long-to-int p0, p0

    return p0

    :cond_13
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    rem-int v1, v0, p1

    sub-int/2addr v0, v1

    add-int/lit8 v2, p1, -0x1

    add-int/2addr v0, v2

    if-ltz v0, :cond_13

    return v1
.end method
