.class public abstract Lcom/huawei/secure/android/common/encrypt/hash/HMACSHA256;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "HMACSHA256"

.field private static final b:Ljava/lang/String; = "HmacSHA256"

.field private static final c:Ljava/lang/String; = ""

.field private static final d:I = 0x20


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

.method public static hmacSHA256Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 4
    :cond_d
    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/hash/HMACSHA256;->hmacSHA256Encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    const-string p0, ""

    return-object p0
.end method

.method public static hmacSHA256Encrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_58

    if-nez p1, :cond_b

    goto :goto_58

    .line 10
    :cond_b
    array-length v0, p1

    const/16 v2, 0x20

    if-ge v0, v2, :cond_18

    .line 11
    sget-object p0, Lcom/huawei/secure/android/common/encrypt/hash/HMACSHA256;->a:Ljava/lang/String;

    const-string p1, "hmac key length is not right"

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 15
    :cond_18
    :try_start_18
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v0, "UTF-8"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->byteArray2HexStr([B)Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_38} :catch_3d
    .catch Ljava/security/InvalidKeyException; {:try_start_18 .. :try_end_38} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    goto :goto_3e

    :catch_3b
    move-exception p0

    goto :goto_3e

    :catch_3d
    move-exception p0

    .line 22
    :goto_3e
    sget-object p1, Lcom/huawei/secure/android/common/encrypt/hash/HMACSHA256;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hmacsha256 encrypt exception"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
    return-object v1
.end method
