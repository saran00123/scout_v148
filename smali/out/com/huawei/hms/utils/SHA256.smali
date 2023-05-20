.class public abstract Lcom/huawei/hms/utils/SHA256;
.super Ljava/lang/Object;
.source "SHA256.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digest(Ljava/io/File;)[B
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "SHA-256"

    .line 7
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_12} :catch_35
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_35
    .catchall {:try_start_2 .. :try_end_12} :catchall_42

    const/16 p0, 0x1000

    .line 12
    :try_start_14
    new-array p0, p0, [B

    move v1, v0

    .line 16
    :goto_17
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_23

    add-int/2addr v1, v4

    .line 18
    invoke-virtual {v2, p0, v0, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_17

    :cond_23
    if-lez v1, :cond_2d

    .line 22
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_29} :catch_34
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_29} :catch_34
    .catchall {:try_start_14 .. :try_end_29} :catchall_31

    .line 28
    invoke-static {v3}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object p0

    :cond_2d
    invoke-static {v3}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_3f

    :catchall_31
    move-exception p0

    move-object v1, v3

    goto :goto_43

    :catch_34
    move-object v1, v3

    :catch_35
    :try_start_35
    const-string p0, "SHA256"

    const-string v2, "An exception occurred while computing file \'SHA-256\'."

    .line 29
    invoke-static {p0, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_42

    .line 31
    invoke-static {v1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 34
    :goto_3f
    new-array p0, v0, [B

    return-object p0

    :catchall_42
    move-exception p0

    .line 35
    :goto_43
    invoke-static {v1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 36
    throw p0
.end method

.method public static digest([B)[B
    .registers 3

    :try_start_0
    const-string v0, "SHA-256"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoSuchAlgorithmException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SHA256"

    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 6
    new-array p0, p0, [B

    return-object p0
.end method
