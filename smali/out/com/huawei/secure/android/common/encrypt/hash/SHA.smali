.class public final Lcom/huawei/secure/android/common/encrypt/hash/SHA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SHA"

.field private static final b:Ljava/lang/String; = "SHA-256"

.field private static final c:Ljava/lang/String; = ""

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "SHA-256"

    const-string v1, "SHA-384"

    const-string v2, "SHA-512"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 2
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

.method public static sha256Encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "SHA-256"

    .line 1
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->shaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_43

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_43

    .line 5
    :cond_f
    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 6
    sget-object p0, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->a:Ljava/lang/String;

    const-string p1, "algorithm is not safe or legal"

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 10
    :cond_1d
    :try_start_1d
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const-string v0, "UTF-8"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->byteArray2HexStr([B)Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_32} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_32} :catch_33

    return-object p0

    .line 16
    :catch_33
    sget-object p0, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->a:Ljava/lang/String;

    const-string p1, "Error in generate SHA NoSuchAlgorithmException"

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 17
    :catch_3b
    sget-object p0, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->a:Ljava/lang/String;

    const-string p1, "Error in generate SHA UnsupportedEncodingException"

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    return-object v1

    .line 18
    :cond_43
    :goto_43
    sget-object p0, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->a:Ljava/lang/String;

    const-string p1, "content or algorithm is null."

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static validateSHA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1c

    .line 4
    :cond_13
    invoke-static {p0, p2}, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->shaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static validateSHA256(Ljava/lang/String;Ljava/lang/String;)Z
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
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->sha256Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method
