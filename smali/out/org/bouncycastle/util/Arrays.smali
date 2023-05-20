.class public final Lorg/bouncycastle/util/Arrays;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/util/Arrays$Iterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([BB)[B
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    new-array p0, p0, [B

    aput-byte p1, p0, v0

    return-object p0

    :cond_9
    array-length v1, p0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p1, v2, v1

    return-object v2
.end method

.method public static append([II)[I
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    new-array p0, p0, [I

    aput p1, p0, v0

    return-object p0

    :cond_9
    array-length v1, p0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v2, v1

    return-object v2
.end method

.method public static append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    aput-object p1, p0, v0

    return-object p0

    :cond_9
    array-length v1, p0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v2, v1

    return-object v2
.end method

.method public static append([SS)[S
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    new-array p0, p0, [S

    aput-short p1, p0, v0

    return-object p0

    :cond_9
    array-length v1, p0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [S

    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-short p1, v2, v1

    return-object v2
.end method

.method public static areAllZeroes([BII)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v1, p2, :cond_d

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    if-nez v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public static areEqual([BII[BII)Z
    .registers 9

    sub-int/2addr p2, p1

    sub-int/2addr p5, p4

    const/4 v0, 0x0

    if-eq p2, p5, :cond_6

    return v0

    :cond_6
    move p5, v0

    :goto_7
    if-ge p5, p2, :cond_17

    add-int v1, p1, p5

    aget-byte v1, p0, v1

    add-int v2, p4, p5

    aget-byte v2, p3, v2

    if-eq v1, v2, :cond_14

    return v0

    :cond_14
    add-int/lit8 p5, p5, 0x1

    goto :goto_7

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public static areEqual([B[B)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static areEqual([C[C)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0
.end method

.method public static areEqual([I[I)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method public static areEqual([J[J)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0
.end method

.method public static areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static areEqual([S[S)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p0

    return p0
.end method

.method public static areEqual([Z[Z)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0
.end method

.method public static clear([B)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_6
    return-void
.end method

.method public static clear([I)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_6
    return-void
.end method

.method public static clone([B)[B
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_a
    return-object p0
.end method

.method public static clone([B[B)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_11

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_11
    :goto_11
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static clone([C)[C
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    :goto_a
    return-object p0
.end method

.method public static clone([I)[I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    :goto_a
    return-object p0
.end method

.method public static clone([J)[J
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    :goto_a
    return-object p0
.end method

.method public static clone([J[J)[J
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p1, :cond_11

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_11
    :goto_11
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object p0

    return-object p0
.end method

.method public static clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/math/BigInteger;

    :goto_a
    return-object p0
.end method

.method public static clone([S)[S
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    :goto_a
    return-object p0
.end method

.method public static clone([Z)[Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    :goto_a
    return-object p0
.end method

.method public static clone([[B)[[B
    .registers 4

    if-nez p0, :cond_6

    const/4 p0, 0x0

    check-cast p0, [[B

    return-object p0

    :cond_6
    array-length v0, p0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    :goto_a
    array-length v2, v0

    if-eq v1, v2, :cond_18

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return-object v0
.end method

.method public static clone([[[B)[[[B
    .registers 4

    if-nez p0, :cond_6

    const/4 p0, 0x0

    check-cast p0, [[[B

    return-object p0

    :cond_6
    array-length v0, p0

    new-array v0, v0, [[[B

    const/4 v1, 0x0

    :goto_a
    array-length v2, v0

    if-eq v1, v2, :cond_18

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return-object v0
.end method

.method public static compareUnsigned([B[B)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, -0x1

    if-nez p0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    if-nez p1, :cond_c

    return v2

    :cond_c
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v0

    :goto_13
    if-ge v4, v3, :cond_26

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    if-ge v5, v6, :cond_20

    return v1

    :cond_20
    if-le v5, v6, :cond_23

    return v2

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_26
    array-length v3, p0

    array-length v4, p1

    if-ge v3, v4, :cond_2b

    return v1

    :cond_2b
    array-length p0, p0

    array-length p1, p1

    if-le p0, p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public static concatenate([B[B)[B
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static concatenate([B[B[B)[B
    .registers 6

    if-nez p0, :cond_7

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0

    :cond_e
    if-nez p2, :cond_15

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0

    :cond_15
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    add-int/2addr p0, v2

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p0, p1

    array-length p1, p2

    invoke-static {p2, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static concatenate([B[B[B[B)[B
    .registers 7

    if-nez p0, :cond_7

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_e
    if-nez p2, :cond_15

    invoke-static {p0, p1, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_15
    if-nez p3, :cond_1c

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p0

    return-object p0

    :cond_1c
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    add-int/2addr p0, v2

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr p0, p1

    array-length p1, p2

    invoke-static {p2, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    add-int/2addr p0, p1

    array-length p1, p3

    invoke-static {p3, v2, v0, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static concatenate([[B)[B
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    array-length v3, p0

    if-eq v1, v3, :cond_d

    aget-object v3, p0, v1

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    new-array v1, v2, [B

    move v2, v0

    move v3, v2

    :goto_11
    array-length v4, p0

    if-eq v2, v4, :cond_23

    aget-object v4, p0, v2

    aget-object v5, p0, v2

    array-length v5, v5

    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_23
    return-object v1
.end method

.method public static concatenate([I[I)[I
    .registers 5

    if-nez p0, :cond_7

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p0

    return-object p0

    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static constantTimeAreEqual(I[BI[BI)Z
    .registers 10

    if-eqz p1, :cond_44

    if-eqz p3, :cond_3c

    if-ltz p0, :cond_34

    array-length v0, p1

    sub-int/2addr v0, p0

    if-gt p2, v0, :cond_2c

    array-length v0, p3

    sub-int/2addr v0, p0

    if-gt p4, v0, :cond_24

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_11
    if-ge v1, p0, :cond_20

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    add-int v4, p4, v1

    aget-byte v4, p3, v4

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    if-nez v2, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0

    :cond_24
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "\'bOff\' value invalid for specified length"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "\'aOff\' value invalid for specified length"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'len\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'b\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'a\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    if-nez p1, :cond_6

    goto :goto_31

    :cond_6
    const/4 v1, 0x1

    if-ne p0, p1, :cond_a

    return v1

    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_10

    array-length v2, p0

    goto :goto_11

    :cond_10
    array-length v2, p1

    :goto_11
    array-length v3, p0

    array-length v4, p1

    xor-int/2addr v3, v4

    move v4, v3

    move v3, v0

    :goto_16
    if-eq v3, v2, :cond_21

    aget-byte v5, p0, v3

    aget-byte v6, p1, v3

    xor-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_21
    :goto_21
    array-length p0, p1

    if-ge v2, p0, :cond_2e

    aget-byte p0, p1, v2

    aget-byte v3, p1, v2

    not-int v3, v3

    xor-int/2addr p0, v3

    or-int/2addr v4, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2e
    if-nez v4, :cond_31

    move v0, v1

    :cond_31
    :goto_31
    return v0
.end method

.method public static contains([BB)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    aget-byte v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static contains([CC)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    aget-char v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static contains([II)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    aget v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static contains([JJ)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_10

    aget-wide v2, p0, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method public static contains([SS)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    aget-short v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static contains([ZZ)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_e

    aget-boolean v2, p0, v1

    if-ne v2, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public static copyOf([BI)[B
    .registers 4

    new-array v0, p1, [B

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOf([CI)[C
    .registers 4

    new-array v0, p1, [C

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOf([II)[I
    .registers 4

    new-array v0, p1, [I

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOf([JI)[J
    .registers 4

    new-array v0, p1, [J

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .registers 4

    new-array v0, p1, [Ljava/math/BigInteger;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOf([SI)[S
    .registers 4

    new-array v0, p1, [S

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .registers 4

    new-array v0, p1, [Z

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .registers 5

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    new-array v0, p2, [B

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOfRange([CII)[C
    .registers 5

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    new-array v0, p2, [C

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOfRange([III)[I
    .registers 5

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    new-array v0, p2, [I

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOfRange([JII)[J
    .registers 5

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    new-array v0, p2, [J

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .registers 5

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    new-array v0, p2, [Ljava/math/BigInteger;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOfRange([SII)[S
    .registers 5

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    new-array v0, p2, [S

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static copyOfRange([ZII)[Z
    .registers 5

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result p2

    new-array v0, p2, [Z

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static fill([BB)V
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public static fill([BIB)V
    .registers 4

    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public static fill([BIIB)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public static fill([CC)V
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([CC)V

    return-void
.end method

.method public static fill([CIIC)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([CIIC)V

    return-void
.end method

.method public static fill([II)V
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public static fill([III)V
    .registers 4

    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method public static fill([IIII)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method public static fill([JIIJ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public static fill([JIJ)V
    .registers 5

    array-length v0, p0

    invoke-static {p0, p1, v0, p2, p3}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public static fill([JJ)V
    .registers 3

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static fill([SIIS)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([SIIS)V

    return-void
.end method

.method public static fill([SIS)V
    .registers 4

    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Ljava/util/Arrays;->fill([SIIS)V

    return-void
.end method

.method public static fill([SS)V
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([SS)V

    return-void
.end method

.method public static fill([ZIIZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void
.end method

.method public static fill([ZZ)V
    .registers 2

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method private static getLength(II)I
    .registers 3

    sub-int v0, p1, p0

    if-ltz v0, :cond_5

    return v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string p0, " > "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hashCode([B)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    mul-int/lit16 v1, v1, 0x101

    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_11
    return v1
.end method

.method public static hashCode([BII)I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p2, 0x1

    :goto_6
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_12

    mul-int/lit16 v0, v0, 0x101

    add-int v1, p1, p2

    aget-byte v1, p0, v1

    xor-int/2addr v0, v1

    goto :goto_6

    :cond_12
    return v0
.end method

.method public static hashCode([C)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    mul-int/lit16 v1, v1, 0x101

    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_11
    return v1
.end method

.method public static hashCode([I)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    mul-int/lit16 v1, v1, 0x101

    aget v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_11
    return v1
.end method

.method public static hashCode([III)I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p2, 0x1

    :goto_6
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_12

    mul-int/lit16 v0, v0, 0x101

    add-int v1, p1, p2

    aget v1, p0, v1

    xor-int/2addr v0, v1

    goto :goto_6

    :cond_12
    return v0
.end method

.method public static hashCode([J)I
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    aget-wide v2, p0, v0

    mul-int/lit16 v1, v1, 0x101

    long-to-int v4, v2

    xor-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x101

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_19
    return v1
.end method

.method public static hashCode([JII)I
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p2, 0x1

    :goto_6
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1a

    add-int v1, p1, p2

    aget-wide v1, p0, v1

    mul-int/lit16 v0, v0, 0x101

    long-to-int v3, v1

    xor-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x101

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    goto :goto_6

    :cond_1a
    return v0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_15
    return v1
.end method

.method public static hashCode([S)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    mul-int/lit16 v1, v1, 0x101

    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    goto :goto_7

    :cond_13
    return v1
.end method

.method public static hashCode([[I)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-eq v0, v2, :cond_11

    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return v1
.end method

.method public static hashCode([[S)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-eq v0, v2, :cond_11

    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return v1
.end method

.method public static hashCode([[[S)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-eq v0, v2, :cond_11

    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return v1
.end method

.method public static isNullOrContainsNull([Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_11

    aget-object v4, p0, v3

    if-nez v4, :cond_e

    return v0

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    return v2
.end method

.method public static isNullOrEmpty([B)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    array-length p0, p0

    if-ge p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static isNullOrEmpty([I)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    array-length p0, p0

    if-ge p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static isNullOrEmpty([Ljava/lang/Object;)Z
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    array-length p0, p0

    if-ge p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static prepend([BB)[B
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    new-array p0, v1, [B

    aput-byte p1, p0, v0

    return-object p0

    :cond_9
    array-length v2, p0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p1, v3, v0

    return-object v3
.end method

.method public static prepend([II)[I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    new-array p0, v1, [I

    aput p1, p0, v0

    return-object p0

    :cond_9
    array-length v2, p0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v3, v0

    return-object v3
.end method

.method public static prepend([SS)[S
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    new-array p0, v1, [S

    aput-short p1, p0, v0

    return-object p0

    :cond_9
    array-length v2, p0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [S

    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-short p1, v3, v0

    return-object v3
.end method

.method public static reverse([B)[B
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    new-array v2, v1, [B

    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_14

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_8

    :cond_14
    return-object v2
.end method

.method public static reverse([I)[I
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    new-array v2, v1, [I

    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_14

    add-int/lit8 v3, v0, 0x1

    aget v0, p0, v0

    aput v0, v2, v1

    move v0, v3

    goto :goto_8

    :cond_14
    return-object v2
.end method
