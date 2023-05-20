.class Lorg/bouncycastle/math/field/GF2Polynomial;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/field/Polynomial;


# instance fields
.field protected final exponents:[I


# direct methods
.method constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/math/field/GF2Polynomial;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lorg/bouncycastle/math/field/GF2Polynomial;

    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object p1, p1, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result p1

    return p1
.end method

.method public getDegree()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getExponentsPresent()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
