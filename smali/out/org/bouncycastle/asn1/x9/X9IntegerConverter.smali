.class public Lorg/bouncycastle/asn1/x9/X9IntegerConverter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getByteLength(Lorg/bouncycastle/math/ec/ECCurve;)I
    .registers 2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public getByteLength(Lorg/bouncycastle/math/ec/ECFieldElement;)I
    .registers 2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public integerToBytes(Ljava/math/BigInteger;I)[B
    .registers 6

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    if-ge p2, v0, :cond_12

    new-array p2, p2, [B

    array-length v0, p1

    array-length v2, p2

    sub-int/2addr v0, v2

    array-length v2, p2

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_12
    array-length v0, p1

    if-le p2, v0, :cond_1f

    new-array p2, p2, [B

    array-length v0, p2

    array-length v2, p1

    sub-int/2addr v0, v2

    array-length v2, p1

    invoke-static {p1, v1, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_1f
    return-object p1
.end method
