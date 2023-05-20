.class public abstract Lcom/huawei/updatesdk/a/a/d/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v0, "Close FileInputStream failed!"

    const-string v1, "FileUtil"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return-object v3

    :cond_c
    :try_start_c
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_15} :catch_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_15} :catch_65
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_15} :catch_51
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_15} :catch_47
    .catchall {:try_start_c .. :try_end_15} :catchall_45

    const/16 p0, 0x400

    :try_start_17
    new-array p0, p0, [B

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_1c
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2a

    const/4 v9, 0x0

    invoke-virtual {p1, p0, v9, v8}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_1c

    :cond_2a
    cmp-long p0, v6, v4

    if-lez p0, :cond_37

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/d/b;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_36
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_36} :catch_43
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_36} :catch_41
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_36} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_36} :catch_3d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_36} :catch_3b
    .catchall {:try_start_17 .. :try_end_36} :catchall_7d

    move-object v3, p0

    :cond_37
    :goto_37
    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_79

    goto :goto_7c

    :catch_3b
    move-exception p0

    goto :goto_49

    :catch_3d
    move-exception p0

    goto :goto_53

    :catch_3f
    move-exception p0

    goto :goto_5d

    :catch_41
    move-exception p0

    goto :goto_67

    :catch_43
    move-exception p0

    goto :goto_71

    :catchall_45
    move-exception p0

    goto :goto_7f

    :catch_47
    move-exception p0

    move-object v2, v3

    :goto_49
    :try_start_49
    const-string p1, "getFileHashData IndexOutOfBoundsException"

    invoke-static {v1, p1, p0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_7c

    goto :goto_37

    :catch_51
    move-exception p0

    move-object v2, v3

    :goto_53
    const-string p1, "getFileHashData IllegalArgumentException"

    invoke-static {v1, p1, p0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_7c

    goto :goto_37

    :catch_5b
    move-exception p0

    move-object v2, v3

    :goto_5d
    const-string p1, "getFileHashData IOException"

    invoke-static {v1, p1, p0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_7c

    goto :goto_37

    :catch_65
    move-exception p0

    move-object v2, v3

    :goto_67
    const-string p1, "getFileHashData FileNotFoundException"

    invoke-static {v1, p1, p0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_7c

    goto :goto_37

    :catch_6f
    move-exception p0

    move-object v2, v3

    :goto_71
    const-string p1, "getFileHashData NoSuchAlgorithmException"

    invoke-static {v1, p1, p0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_49 .. :try_end_76} :catchall_7d

    if-eqz v2, :cond_7c

    goto :goto_37

    :catch_79
    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    :goto_7c
    return-object v3

    :catchall_7d
    move-exception p0

    move-object v3, v2

    :goto_7f
    if-eqz v3, :cond_88

    :try_start_81
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_88

    :catch_85
    invoke-static {v1, v0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    :goto_88
    throw p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p0, :cond_e

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string v0, "FileUtil"

    const-string v1, "Closeable exception"

    invoke-static {v0, v1, p0}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 5

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2e

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_29

    array-length v1, v0

    if-lez v1, :cond_29

    const/4 v1, 0x0

    array-length v2, v0

    :goto_1f
    if-ge v1, v2, :cond_29

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/huawei/updatesdk/a/a/d/d;->a(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_29
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0
.end method
