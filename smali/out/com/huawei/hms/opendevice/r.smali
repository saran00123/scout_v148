.class public final Lcom/huawei/hms/opendevice/r;
.super Ljava/lang/Object;
.source "SHACoder.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "SHACoder"

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    .line 1
    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_d} :catch_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_d} :catch_22

    if-eqz v1, :cond_11

    const-string p1, "SHA-256"

    .line 3
    :cond_11
    :try_start_11
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/huawei/hms/utils/HEX;->encodeHexString([BZ)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_21} :catch_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    const-string p0, "trans failed ."

    .line 6
    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_28
    const-string p0, "encrypt failed ."

    .line 7
    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
