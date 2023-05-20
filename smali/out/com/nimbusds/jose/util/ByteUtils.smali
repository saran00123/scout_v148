.class public Lcom/nimbusds/jose/util/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitLength(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static bitLength([B)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_4
    array-length p0, p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->bitLength(I)I

    move-result p0

    return p0
.end method

.method public static byteLength(I)I
    .registers 1

    .line 164
    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static varargs concat([[B)[B
    .registers 5

    .line 45
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    if-nez v3, :cond_e

    goto :goto_11

    .line 53
    :cond_e
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 55
    :cond_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static safeBitLength(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/util/IntegerOverflowException;
        }
    .end annotation

    int-to-long v0, p0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    long-to-int p0, v0

    int-to-long v2, p0

    cmp-long v0, v2, v0

    if-nez v0, :cond_b

    return p0

    .line 110
    :cond_b
    new-instance p0, Lcom/nimbusds/jose/util/IntegerOverflowException;

    invoke-direct {p0}, Lcom/nimbusds/jose/util/IntegerOverflowException;-><init>()V

    throw p0
.end method

.method public static safeBitLength([B)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/util/IntegerOverflowException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_4
    array-length p0, p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength(I)I

    move-result p0

    return p0
.end method

.method public static subArray([BII)[B
    .registers 5

    .line 76
    new-array p2, p2, [B

    .line 77
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method
