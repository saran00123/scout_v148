.class public Lanet/channel/util/HMacUtil;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.HMacUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hmacSha1([B[B)[B
    .registers 4

    .line 24
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 28
    :try_start_7
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 29
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 30
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_12} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public static hmacSha1Hex([B[B)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    .line 16
    :try_start_2
    invoke-static {p0, p1}, Lanet/channel/util/HMacUtil;->hmacSha1([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lanet/channel/util/StringUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_22

    :catch_b
    move-exception p0

    const/4 p1, 0x0

    const/4 v1, 0x3

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "result"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "awcn.HMacUtil"

    const-string v2, "hmacSha1Hex"

    invoke-static {p0, v2, p1, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_22
    return-object v0
.end method
