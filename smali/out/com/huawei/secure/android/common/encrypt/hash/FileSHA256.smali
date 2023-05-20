.class public abstract Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x2000

.field private static final b:Ljava/lang/String; = "SHA-256"

.field private static final c:Ljava/lang/String; = "FileSHA256"

.field private static final d:Ljava/lang/String; = ""

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "SHA-256"

    const-string v1, "SHA-384"

    const-string v2, "SHA-512"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .registers 5

    if-eqz p0, :cond_14

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    .line 2
    sget-object v0, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->e:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public static fileSHA256Encrypt(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-256"

    .line 1
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->fileSHAEncrypt(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fileSHAEncrypt(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_91

    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_91

    .line 6
    :cond_10
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 7
    sget-object p0, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->c:Ljava/lang/String;

    const-string p1, "file is not valid"

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1e
    const/4 v0, 0x0

    .line 13
    :try_start_1f
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 14
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1f .. :try_end_28} :catch_6c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_4f
    .catchall {:try_start_1f .. :try_end_28} :catchall_4c

    const/16 p0, 0x2000

    .line 15
    :try_start_2a
    new-array p0, p0, [B

    const/4 v2, 0x0

    move v3, v2

    .line 18
    :goto_2e
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_39

    .line 19
    invoke-virtual {p1, p0, v2, v4}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v3, 0x1

    goto :goto_2e

    :cond_39
    if-eqz v3, :cond_44

    .line 23
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->byteArray2HexStr([B)Ljava/lang/String;

    move-result-object p0
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_43} :catch_4a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_43} :catch_48
    .catchall {:try_start_2a .. :try_end_43} :catchall_8c

    move-object v0, p0

    .line 30
    :cond_44
    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/a;->a(Ljava/io/InputStream;)V

    goto :goto_8b

    :catch_48
    move-exception p0

    goto :goto_51

    :catch_4a
    move-exception p0

    goto :goto_6e

    :catchall_4c
    move-exception p0

    move-object v1, v0

    goto :goto_8d

    :catch_4f
    move-exception p0

    move-object v1, v0

    .line 31
    :goto_51
    :try_start_51
    sget-object p1, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    :catch_6c
    move-exception p0

    move-object v1, v0

    .line 32
    :goto_6e
    sget-object p1, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchAlgorithmException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_51 .. :try_end_88} :catchall_8c

    .line 36
    :goto_88
    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/a;->a(Ljava/io/InputStream;)V

    :goto_8b
    return-object v0

    :catchall_8c
    move-exception p0

    :goto_8d
    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/a;->a(Ljava/io/InputStream;)V

    .line 37
    throw p0

    .line 38
    :cond_91
    :goto_91
    sget-object p0, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->c:Ljava/lang/String;

    const-string p1, "algorithm is empty or not safe"

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static inputStreamSHA256Encrypt(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const-string v0, "SHA-256"

    .line 1
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->inputStreamSHAEncrypt(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static inputStreamSHAEncrypt(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/16 v1, 0x2000

    .line 1
    new-array v1, v1, [B

    .line 3
    :try_start_9
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 5
    :cond_d
    :goto_d
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1a

    if-lez v2, :cond_d

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p1, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_d

    .line 10
    :cond_1a
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->byteArray2HexStr([B)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_22} :catch_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_22} :catch_28
    .catchall {:try_start_9 .. :try_end_22} :catchall_26

    .line 14
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/a;->a(Ljava/io/InputStream;)V

    return-object p1

    :catchall_26
    move-exception p1

    goto :goto_33

    .line 15
    :catch_28
    :try_start_28
    sget-object p1, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->c:Ljava/lang/String;

    const-string v1, "inputstraem exception"

    invoke-static {p1, v1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_26

    .line 17
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/a;->a(Ljava/io/InputStream;)V

    return-object v0

    :goto_33
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/a;->a(Ljava/io/InputStream;)V

    .line 18
    throw p1
.end method

.method public static validateFileSHA(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p2}, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_16

    .line 5
    :cond_d
    invoke-static {p0, p2}, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->fileSHAEncrypt(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6
    :cond_16
    :goto_16
    sget-object p0, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->c:Ljava/lang/String;

    const-string p1, "hash value is null || algorithm is illegal"

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static validateFileSHA256(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_8
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->fileSHA256Encrypt(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static validateInputStreamSHA(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p2}, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_16

    .line 5
    :cond_d
    invoke-static {p0, p2}, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->inputStreamSHAEncrypt(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6
    :cond_16
    :goto_16
    sget-object p0, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->c:Ljava/lang/String;

    const-string p1, "hash value is null || algorithm is illegal"

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static validateInputStreamSHA256(Ljava/io/InputStream;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_8
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/hash/FileSHA256;->inputStreamSHA256Encrypt(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
