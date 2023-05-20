.class public Lcom/huawei/agconnect/config/a/g;
.super Ljava/lang/Object;


# direct methods
.method public static a([B[B[B[B)Ljavax/crypto/SecretKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_36

    array-length v0, p1

    if-ne v0, v1, :cond_36

    array-length v0, p2

    if-ne v0, v1, :cond_36

    invoke-static {p0, p1, p2}, Lcom/huawei/agconnect/config/a/g;->a([B[B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/agconnect/config/a/e;->a([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PBKDF2WithHmacSHA1"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/16 v0, 0x1388

    const/16 v1, 0x80

    invoke-direct {p2, p0, p3, v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {p1, p2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1

    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid data for generating the key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a([BI)[B
    .registers 5

    if-eqz p0, :cond_1a

    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_19

    if-gez p1, :cond_10

    aget-byte v1, p0, v0

    neg-int v2, p1

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_16

    :cond_10
    aget-byte v1, p0, v0

    shr-int/2addr v1, p1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_19
    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a([B[B)[B
    .registers 6

    if-eqz p0, :cond_23

    if-eqz p1, :cond_23

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1b

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-object v0

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left and right must be the same length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "left or right must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([B[B[B)[B
    .registers 4

    const/4 v0, -0x4

    invoke-static {p0, v0}, Lcom/huawei/agconnect/config/a/g;->a([BI)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/huawei/agconnect/config/a/g;->a([B[B)[B

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p0, p1}, Lcom/huawei/agconnect/config/a/g;->a([BI)[B

    move-result-object p0

    invoke-static {p0, p2}, Lcom/huawei/agconnect/config/a/g;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method
