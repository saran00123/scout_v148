.class public Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "EncryptUtil"

.field private static final b:Ljava/lang/String; = "RSA"

.field private static c:Z = false

.field private static d:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/security/SecureRandom;
    .registers 9

    const-string v0, "EncryptUtil"

    const-string v1, "generateSecureRandomNew "

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :try_start_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_14

    .line 5
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v2

    goto :goto_1a

    :cond_14
    const-string v3, "SHA1PRNG"

    .line 7
    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    :goto_1a
    const/4 v3, 0x1

    .line 11
    new-instance v4, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    const/16 v5, 0x100

    const/16 v6, 0x180

    const/16 v7, 0x20

    .line 15
    new-array v7, v7, [B

    .line 16
    invoke-virtual {v2, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 18
    new-instance v8, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    invoke-direct {v8, v2, v3}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    .line 19
    invoke-virtual {v8, v6}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->setEntropyBitsRequired(I)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v4, v5, v7, v1}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->buildCTR(Lorg/bouncycastle/crypto/BlockCipher;I[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object v0
    :try_end_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_38} :catch_5e
    .catchall {:try_start_9 .. :try_end_38} :catchall_39

    return-object v0

    :catchall_39
    move-exception v3

    .line 25
    sget-boolean v4, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->d:Z

    if-eqz v4, :cond_63

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , you should implementation bcprov-jdk15on library"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sput-boolean v1, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->d:Z

    goto :goto_63

    :catch_5e
    const-string v1, "NoSuchAlgorithmException"

    .line 28
    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    :goto_63
    return-object v2
.end method

.method private static a(I)[B
    .registers 2

    .line 29
    invoke-static {}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->a()Ljava/security/SecureRandom;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    .line 31
    new-array p0, p0, [B

    return-object p0

    .line 33
    :cond_a
    new-array p0, p0, [B

    .line 34
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static genSecureRandom()Ljava/security/SecureRandom;
    .registers 3

    .line 1
    sget-boolean v0, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->c:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    .line 4
    :try_start_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_10

    .line 5
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_1e

    :cond_10
    const-string v1, "SHA1PRNG"

    .line 7
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_1e

    :catch_17
    const-string v1, "EncryptUtil"

    const-string v2, "genSecureRandom: NoSuchAlgorithmException"

    .line 10
    invoke-static {v1, v2}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-object v0

    .line 14
    :cond_1f
    invoke-static {}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->a()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static generateSecureRandom(I)[B
    .registers 3

    .line 1
    sget-boolean v0, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->c:Z

    if-nez v0, :cond_26

    .line 2
    new-array p0, p0, [B

    .line 5
    :try_start_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    .line 6
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_17

    :cond_11
    const-string v0, "SHA1PRNG"

    .line 8
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 10
    :goto_17
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    const-string p0, "EncryptUtil"

    const-string v0, "getSecureRandomBytes: NoSuchAlgorithmException"

    .line 13
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 18
    new-array p0, p0, [B

    return-object p0

    .line 19
    :cond_26
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->a(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateSecureRandomStr(I)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandom(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->byteArray2HexStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 5

    const-string v0, "EncryptUtil"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_4
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_32

    .line 10
    :try_start_8
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    .line 11
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 12
    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_17
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load Key Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_32
    move-exception p0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base64 decode Exception"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_4c
    const-string p0, "base64 decode IllegalArgumentException"

    .line 16
    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .registers 5

    const-string v0, "EncryptUtil"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_4
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_34

    :try_start_8
    const-string v1, "RSA"

    .line 10
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 11
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 12
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_19
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load Key Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_34
    move-exception p0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base64 decode Exception"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_4e
    const-string p0, "base64 decode IllegalArgumentException"

    .line 16
    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static isBouncycastleFlag()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->c:Z

    return v0
.end method

.method public static setBouncycastleFlag(Z)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBouncycastleFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EncryptUtil"

    invoke-static {v1, v0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-boolean p0, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->c:Z

    return-void
.end method
