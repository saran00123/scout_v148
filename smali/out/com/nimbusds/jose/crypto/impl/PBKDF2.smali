.class public Lcom/nimbusds/jose/crypto/impl/PBKDF2;
.super Ljava/lang/Object;
.source "PBKDF2.java"


# static fields
.field public static final ZERO_BYTE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    .line 49
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/nimbusds/jose/crypto/impl/PBKDF2;->ZERO_BYTE:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deriveKey([B[BILcom/nimbusds/jose/crypto/impl/PRFParams;)Ljavax/crypto/SecretKey;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->getMACAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->getMacProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/nimbusds/jose/crypto/impl/HMAC;->getInitMac(Ljavax/crypto/SecretKey;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    .line 114
    invoke-virtual {p3}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->getDerivedKeyByteLength()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    if-gtz v1, :cond_5e

    .line 127
    invoke-virtual {p3}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->getDerivedKeyByteLength()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 128
    invoke-virtual {p3}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->getDerivedKeyByteLength()I

    move-result p3

    add-int/lit8 v2, v1, -0x1

    mul-int/2addr v0, v2

    sub-int/2addr p3, v0

    .line 161
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_3e
    if-ge v4, v1, :cond_52

    add-int/lit8 v5, v4, 0x1

    .line 163
    invoke-static {p1, p2, v5, p0}, Lcom/nimbusds/jose/crypto/impl/PBKDF2;->extractBlock([BIILjavax/crypto/Mac;)[B

    move-result-object v6

    if-ne v4, v2, :cond_4c

    .line 165
    invoke-static {v6, v3, p3}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    move-result-object v6

    .line 167
    :cond_4c
    array-length v4, v6

    invoke-virtual {v0, v6, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v4, v5

    goto :goto_3e

    .line 171
    :cond_52
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string p2, "AES"

    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    .line 115
    :cond_5e
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "derived key too long "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/nimbusds/jose/crypto/impl/PRFParams;->getDerivedKeyByteLength()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extractBlock([BIILjavax/crypto/Mac;)[B
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v2, v0

    move-object v3, v2

    move v0, v1

    :goto_5
    if-gt v0, p1, :cond_34

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1f

    const/4 v2, 0x2

    .line 198
    new-array v2, v2, [[B

    aput-object p0, v2, v4

    invoke-static {p2}, Lcom/nimbusds/jose/util/IntegerUtils;->toBytes(I)[B

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    move-result-object v2

    .line 199
    invoke-virtual {p3, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    move-object v3, v2

    goto :goto_31

    .line 204
    :cond_1f
    invoke-virtual {p3, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 205
    :goto_23
    array-length v5, v3

    if-ge v4, v5, :cond_31

    .line 207
    aget-byte v5, v3, v4

    aget-byte v6, v2, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_34
    return-object v2
.end method

.method public static formatSalt(Lcom/nimbusds/jose/JWEAlgorithm;[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEAlgorithm;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 69
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    :try_start_f
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 73
    sget-object p0, Lcom/nimbusds/jose/crypto/impl/PBKDF2;->ZERO_BYTE:[B

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 74
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_1f

    .line 81
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_1f
    move-exception p0

    .line 78
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
