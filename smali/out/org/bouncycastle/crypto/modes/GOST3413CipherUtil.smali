.class Lorg/bouncycastle/crypto/modes/GOST3413CipherUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LSB([BI)[B
    .registers 5

    new-array v0, p1, [B

    array-length v1, p0

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static MSB([BI)[B
    .registers 2

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static copyFromInput([BII)[B
    .registers 5

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_7

    array-length p1, p0

    sub-int/2addr p1, p2

    :cond_7
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static sum([B[B)[B
    .registers 6

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method
