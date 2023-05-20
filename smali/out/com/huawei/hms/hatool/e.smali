.class public Lcom/huawei/hms/hatool/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/huawei/hms/hatool/e;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const-string p0, "hmsSdk"

    const-string p1, "Unsupported encoding exception,utf-8"

    invoke-static {p0, p1}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const-string v1, "hmsSdk"

    if-eqz p1, :cond_24

    array-length v2, p1

    if-nez v2, :cond_a

    goto :goto_24

    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/hatool/e;->a([B)Ljava/security/PublicKey;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/huawei/hms/hatool/e;->a([BLjava/security/PublicKey;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->byteArray2HexStr([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_1a} :catch_1e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    const-string p0, "encrypt(): Invalid key specification"

    goto :goto_20

    :catch_1e
    const-string p0, "encrypt(): getInstance - No such algorithm,transformation"

    :goto_20
    invoke-static {v1, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_24
    :goto_24
    const-string p0, "encrypt: content is empty or null"

    invoke-static {v1, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a([B)Ljava/security/PublicKey;
    .registers 2

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/security/PublicKey;)[B
    .registers 5

    const-string v0, "hmsSdk"

    if-eqz p1, :cond_13

    :try_start_4
    const-string v1, "RSA/ECB/OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    const-string p1, "The loaded public key is null"

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_1b} :catch_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_1b} :catch_27
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_1b} :catch_24
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_1b} :catch_21
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_1b} :catch_1e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_1b} :catch_1b

    :catch_1b
    const-string p0, "rsaEncrypt(): doFinal - The provided block is not filled with"

    goto :goto_2c

    :catch_1e
    const-string p0, "rsaEncrypt():False filling parameters!"

    goto :goto_2c

    :catch_21
    const-string p0, "rsaEncrypt():  No such filling parameters "

    goto :goto_2c

    :catch_24
    const-string p0, "rsaEncrypt(): init - Invalid key!"

    goto :goto_2c

    :catch_27
    const-string p0, "rsaEncrypt(): getInstance - No such algorithm,transformation"

    goto :goto_2c

    :catch_2a
    const-string p0, "rsaEncrypt(): getBytes - Unsupported coding format!"

    :goto_2c
    invoke-static {v0, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method
