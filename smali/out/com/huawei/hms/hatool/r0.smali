.class public final Lcom/huawei/hms/hatool/r0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    const-string v0, "hmsSdk"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_49
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_40
    .catchall {:try_start_5 .. :try_end_a} :catchall_3e

    :try_start_a
    new-instance p0, Lcom/huawei/hms/hatool/o0;

    const/16 v2, 0x400

    invoke-direct {p0, v2}, Lcom/huawei/hms/hatool/o0;-><init>(I)V

    new-array v2, v2, [B

    :goto_13
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1e

    invoke-virtual {p0, v2, v4}, Lcom/huawei/hms/hatool/o0;->a([BI)V

    goto :goto_13

    :cond_1e
    invoke-virtual {p0}, Lcom/huawei/hms/hatool/o0;->b()I

    move-result v2
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_22} :catch_3c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_3a
    .catchall {:try_start_a .. :try_end_22} :catchall_37

    if-nez v2, :cond_28

    invoke-static {v3}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    return-object v1

    :cond_28
    :try_start_28
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/o0;->a()[B

    move-result-object p0

    const-string v4, "UTF-8"

    invoke-direct {v2, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_33} :catch_3c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_33} :catch_3a
    .catchall {:try_start_28 .. :try_end_33} :catchall_37

    invoke-static {v3}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_37
    move-exception p0

    move-object v2, v3

    goto :goto_52

    :catch_3a
    move-object v2, v3

    goto :goto_40

    :catch_3c
    move-object v2, v3

    goto :goto_49

    :catchall_3e
    move-exception p0

    goto :goto_52

    :catch_40
    :goto_40
    :try_start_40
    const-string p0, "getInfoFromFile(): stream.read or new string exception"

    invoke-static {v0, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_3e

    invoke-static {v2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    return-object v1

    :catch_49
    :goto_49
    :try_start_49
    const-string p0, "getInfoFromFile(): No files need to be read"

    invoke-static {v0, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_3e

    invoke-static {v2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    return-object v1

    :goto_52
    invoke-static {v2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    :try_start_7
    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1f

    invoke-static {v0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_1f
    move-exception p0

    invoke-static {v0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_d

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "hmsSdk"

    const-string v0, "closeQuietly(): Exception when closing the closeable!"

    invoke-static {p0, v0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    const-string v0, "hmsSdk"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_21
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_1a
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    :try_start_8
    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_14} :catch_22
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_1b
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_25

    :catchall_15
    move-exception p0

    move-object v1, v2

    goto :goto_29

    :catchall_18
    move-exception p0

    goto :goto_29

    :catch_1a
    move-object v2, v1

    :catch_1b
    :try_start_1b
    const-string p0, "saveInfoToFile(): io exc from write info to file!"

    :goto_1d
    invoke-static {v0, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :catch_21
    move-object v2, v1

    :catch_22
    const-string p0, "saveInfoToFile(): No files need to be read"
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_15

    goto :goto_1d

    :goto_25
    invoke-static {v2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    return-void

    :goto_29
    invoke-static {v1}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 2

    if-eqz p0, :cond_d

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "hmsSdk"

    const-string v0, "closeStream(): Exception: close OutputStream error!"

    invoke-static {p0, v0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .registers 3

    const-string v0, "hmsSdk"

    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    const-string v1, "closeQuietly(): Exception when connHttp.getInputStream()!,There may be no network, or no INTERNET permission"

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string p0, " connHttp disconnect"

    invoke-static {v0, p0}, Lcom/huawei/hms/hatool/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a([B)[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1}, Ljava/util/zip/Deflater;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    const/16 p0, 0x400

    new-array p0, p0, [B

    :goto_14
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_14

    :cond_23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    invoke-static {v0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/OutputStream;)V

    return-object p0
.end method
