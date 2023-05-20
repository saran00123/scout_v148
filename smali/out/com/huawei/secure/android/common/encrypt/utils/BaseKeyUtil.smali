.class public Lcom/huawei/secure/android/common/encrypt/utils/BaseKeyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BaseKeyUtil"

.field private static final b:I = 0x10

.field private static final c:I = 0x10

.field private static final d:I = 0x2710


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

.method private static a(III)I
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    move p0, p2

    :cond_6
    return p0
.end method

.method private static a(I)Z
    .registers 2

    const/16 v0, 0x10

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static a(I[B)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/BaseKeyUtil;->a(I)Z

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/utils/BaseKeyUtil;->a([B)Z

    move-result p1

    and-int/2addr p0, p1

    return p0
.end method

.method private static a([B)Z
    .registers 2

    .line 3
    array-length p0, p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static exportHexRootKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIZ)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/huawei/secure/android/common/encrypt/utils/BaseKeyUtil;->exportRootKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->byteArray2HexStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exportRootKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)[B
    .registers 12

    .line 23
    invoke-static {p3}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/huawei/secure/android/common/encrypt/utils/BaseKeyUtil;->exportRootKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static exportRootKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIZ)[B
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 3
    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 4
    invoke-static {p2}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 5
    array-length v0, p0

    array-length v1, p1

    array-length v2, p2

    invoke-static {v0, v1, v2}, Lcom/huawei/secure/android/common/encrypt/utils/BaseKeyUtil;->a(III)I

    move-result v0

    .line 7
    invoke-static {v0, p3}, Lcom/huawei/secure/android/common/encrypt/utils/BaseKeyUtil;->a(I[B)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 10
    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_2c

    .line 12
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    aget-byte v4, p2, v2

    xor-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2c
    const/16 p0, 0x2710

    if-nez p5, :cond_3e

    .line 17
    sget-object p1, Lcom/huawei/secure/android/common/encrypt/utils/BaseKeyUtil;->a:Ljava/lang/String;

    const-string p2, "exportRootKey: sha1"

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/encrypt/utils/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 p4, p4, 0x8

    .line 18
    invoke-static {v1, p3, p0, p4}, Lcom/huawei/secure/android/common/encrypt/hash/PBKDF2;->pbkdf2([C[BII)[B

    move-result-object p0

    return-object p0

    .line 20
    :cond_3e
    sget-object p1, Lcom/huawei/secure/android/common/encrypt/utils/BaseKeyUtil;->a:Ljava/lang/String;

    const-string p2, "exportRootKey: sha256"

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/encrypt/utils/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 p4, p4, 0x8

    .line 21
    invoke-static {v1, p3, p0, p4}, Lcom/huawei/secure/android/common/encrypt/hash/PBKDF2;->pbkdf2SHA256([C[BII)[B

    move-result-object p0

    return-object p0

    .line 22
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key length must be more than 128bit."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static exportRootKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)[B
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v4, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/huawei/secure/android/common/encrypt/utils/BaseKeyUtil;->exportRootKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIZ)[B

    move-result-object p0

    return-object p0
.end method
