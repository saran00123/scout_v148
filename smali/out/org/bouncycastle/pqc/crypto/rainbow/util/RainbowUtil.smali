.class public Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertArray([S)[B
    .registers 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_f

    aget-short v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method public static convertArray([B)[S
    .registers 4

    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_11

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    return-object v0
.end method

.method public static convertArray([[S)[[B
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, B

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v2, v1

    :goto_12
    array-length v3, p0

    if-ge v2, v3, :cond_2a

    move v3, v1

    :goto_16
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_27

    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-short v5, v5, v3

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2a
    return-object v0
.end method

.method public static convertArray([[B)[[S
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, S

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v2, v1

    :goto_12
    array-length v3, p0

    if-ge v2, v3, :cond_2c

    move v3, v1

    :goto_16
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_29

    aget-object v4, v0, v2

    aget-object v5, p0, v2

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2c
    return-object v0
.end method

.method public static convertArray([[[S)[[[B
    .registers 8

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    aget-object v3, p0, v1

    aget-object v3, v3, v1

    array-length v3, v3

    filled-new-array {v0, v2, v3}, [I

    move-result-object v0

    const-class v2, B

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[B

    move v2, v1

    :goto_17
    array-length v3, p0

    if-ge v2, v3, :cond_3e

    move v3, v1

    :goto_1b
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_3b

    move v4, v1

    :goto_21
    aget-object v5, p0, v1

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_38

    aget-object v5, v0, v2

    aget-object v5, v5, v3

    aget-object v6, p0, v2

    aget-object v6, v6, v3

    aget-short v6, v6, v4

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3e
    return-object v0
.end method

.method public static convertArray([[[B)[[[S
    .registers 8

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    aget-object v3, p0, v1

    aget-object v3, v3, v1

    array-length v3, v3

    filled-new-array {v0, v2, v3}, [I

    move-result-object v0

    const-class v2, S

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    move v2, v1

    :goto_17
    array-length v3, p0

    if-ge v2, v3, :cond_40

    move v3, v1

    :goto_1b
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_3d

    move v4, v1

    :goto_21
    aget-object v5, p0, v1

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_3a

    aget-object v5, v0, v2

    aget-object v5, v5, v3

    aget-object v6, p0, v2

    aget-object v6, v6, v3

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_40
    return-object v0
.end method

.method public static convertArraytoInt([B)[I
    .registers 4

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_10

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-object v0
.end method

.method public static convertIntArray([I)[B
    .registers 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_f

    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method public static equals([S[S)Z
    .registers 8

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v3, v1

    :goto_a
    if-ltz v0, :cond_19

    aget-short v4, p0, v0

    aget-short v5, p1, v0

    if-ne v4, v5, :cond_14

    move v4, v1

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    and-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_19
    return v3
.end method

.method public static equals([[S[[S)Z
    .registers 6

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    if-ltz v0, :cond_17

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return v1
.end method

.method public static equals([[[S[[[S)Z
    .registers 6

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    if-ltz v0, :cond_17

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return v1
.end method
