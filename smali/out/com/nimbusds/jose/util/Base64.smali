.class public Lcom/nimbusds/jose/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 55
    iput-object p1, p0, Lcom/nimbusds/jose/util/Base64;->value:Ljava/lang/String;

    return-void

    .line 52
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Base64 value must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static encode(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64;
    .registers 2

    .line 190
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64;->encode([B)Lcom/nimbusds/jose/util/Base64;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/math/BigInteger;)Lcom/nimbusds/jose/util/Base64;
    .registers 1

    .line 177
    invoke-static {p0}, Lcom/nimbusds/jose/util/BigIntegerUtils;->toBytesUnsigned(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64;->encode([B)Lcom/nimbusds/jose/util/Base64;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Lcom/nimbusds/jose/util/Base64;
    .registers 3

    .line 165
    new-instance v0, Lcom/nimbusds/jose/util/Base64;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->encodeToString([BZ)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/util/Base64;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/nimbusds/jose/util/Base64;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_4
    new-instance v0, Lcom/nimbusds/jose/util/Base64;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/util/Base64;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public decode()[B
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/nimbusds/jose/util/Base64;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public decodeToBigInteger()Ljava/math/BigInteger;
    .registers 4

    .line 78
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public decodeToString()Ljava/lang/String;
    .registers 4

    .line 88
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    move-result-object v1

    sget-object v2, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 135
    instance-of v0, p1, Lcom/nimbusds/jose/util/Base64;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/nimbusds/jose/util/Base64;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/nimbusds/jose/util/Base64;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONStringUtils;->toJSONString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/nimbusds/jose/util/Base64;->value:Ljava/lang/String;

    return-object v0
.end method
