.class public Lcom/nimbusds/jose/crypto/impl/ConcatKDF;
.super Ljava/lang/Object;
.source "ConcatKDF.java"

# interfaces
.implements Lcom/nimbusds/jose/jca/JCAAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jca/JCAAware<",
        "Lcom/nimbusds/jose/jca/JCAContext;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

.field private final jcaHashAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/nimbusds/jose/jca/JCAContext;

    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JCAContext;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    if-eqz p1, :cond_f

    .line 76
    iput-object p1, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaHashAlg:Ljava/lang/String;

    return-void

    .line 73
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JCA hash algorithm must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static composeOtherInfo([B[B[B[B[B)[B
    .registers 7

    const/4 v0, 0x5

    .line 199
    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    invoke-static {v0}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static computeDigestCycles(II)I
    .registers 2

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    .line 241
    div-int/2addr p1, p0

    return p1
.end method

.method public static encodeDataWithLength(Lcom/nimbusds/jose/util/Base64URL;)[B
    .registers 1

    if-eqz p0, :cond_7

    .line 308
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    .line 309
    :goto_8
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeDataWithLength([B)[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    goto :goto_6

    .line 292
    :cond_4
    new-array p0, v0, [B

    .line 293
    :goto_6
    array-length v1, p0

    invoke-static {v1}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    move-result-object v1

    const/4 v2, 0x2

    .line 294
    new-array v2, v2, [[B

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeIntData(I)[B
    .registers 1

    .line 265
    invoke-static {p0}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeNoData()[B
    .registers 1

    const/4 v0, 0x0

    .line 252
    new-array v0, v0, [B

    return-object v0
.end method

.method public static encodeStringData(Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_9

    .line 278
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 279
    :goto_a
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->encodeDataWithLength([B)[B

    move-result-object p0

    return-object p0
.end method

.method private getMessageDigest()Ljava/security/MessageDigest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/jca/JCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_11

    .line 219
    :try_start_a
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaHashAlg:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0

    .line 221
    :cond_11
    iget-object v1, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaHashAlg:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    .line 223
    new-instance v1, Lcom/nimbusds/jose/JOSEException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get message digest for KDF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public deriveKey(Ljavax/crypto/SecretKey;I[B)Ljavax/crypto/SecretKey;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    invoke-direct {p0}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    const/4 v2, 0x1

    .line 118
    :goto_a
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v3

    invoke-static {v3}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength(I)I

    move-result v3

    invoke-static {v3, p2}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->computeDigestCycles(II)I

    move-result v3

    if-gt v2, v3, :cond_51

    .line 120
    invoke-static {v2}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    move-result-object v3

    .line 122
    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 123
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    if-eqz p3, :cond_2b

    .line 126
    invoke-virtual {v1, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 130
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_35

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catch_35
    move-exception p1

    .line 132
    new-instance p2, Lcom/nimbusds/jose/JOSEException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write derived key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 136
    :cond_51
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 138
    invoke-static {p2}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    move-result p2

    .line 140
    array-length p3, p1

    const-string v0, "AES"

    if-ne p3, p2, :cond_64

    .line 142
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2

    .line 145
    :cond_64
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    move-result-object p1

    invoke-direct {p3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p3
.end method

.method public deriveKey(Ljavax/crypto/SecretKey;I[B[B[B[B[B)Ljavax/crypto/SecretKey;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 174
    invoke-static {p3, p4, p5, p6, p7}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->composeOtherInfo([B[B[B[B[B)[B

    move-result-object p3

    .line 176
    invoke-virtual {p0, p1, p2, p3}, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->deriveKey(Ljavax/crypto/SecretKey;I[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaHashAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/impl/ConcatKDF;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    return-object v0
.end method
