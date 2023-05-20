.class public Lcom/alibaba/sdk/android/tbrest/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field public static hexChar:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 15
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/alibaba/sdk/android/tbrest/utils/MD5Utils;->hexChar:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMd5([B)[B
    .registers 2

    if-eqz p0, :cond_14

    :try_start_2
    const-string v0, "MD5"

    .line 39
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 41
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMd5Hex([B)Ljava/lang/String;
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/MD5Utils;->getMd5([B)[B

    move-result-object p0

    if-eqz p0, :cond_b

    .line 30
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/MD5Utils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p0, "0000000000000000"

    return-object p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 5

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 20
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_27

    .line 21
    sget-object v2, Lcom/alibaba/sdk/android/tbrest/utils/MD5Utils;->hexChar:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    sget-object v2, Lcom/alibaba/sdk/android/tbrest/utils/MD5Utils;->hexChar:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 24
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
