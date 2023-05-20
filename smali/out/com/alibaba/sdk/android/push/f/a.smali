.class public Lcom/alibaba/sdk/android/push/f/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "aliyun_push_images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/f/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1f
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_28
    :try_start_28
    invoke-static {p1, v0, p0}, Lcom/alibaba/sdk/android/push/f/a;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_31

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1f

    :catch_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1d
    return-object p0
.end method

.method public static a(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_2f
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    const/16 p0, 0x2800

    :try_start_8
    new-array p0, p0, [B

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_28
    .catchall {:try_start_8 .. :try_end_f} :catchall_26

    :goto_f
    :try_start_f
    invoke-virtual {v1, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1a} :catch_24
    .catchall {:try_start_f .. :try_end_1a} :catchall_22

    goto :goto_f

    :cond_1b
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    return-void

    :catchall_22
    move-exception p0

    goto :goto_34

    :catch_24
    move-exception p0

    goto :goto_2a

    :catchall_26
    move-exception p0

    goto :goto_35

    :catch_28
    move-exception p0

    move-object v2, v0

    :goto_2a
    move-object v0, v1

    goto :goto_31

    :catchall_2c
    move-exception p0

    move-object v1, v0

    goto :goto_35

    :catch_2f
    move-exception p0

    move-object v2, v0

    :goto_31
    :try_start_31
    throw p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    move-object v1, v0

    :goto_34
    move-object v0, v2

    :goto_35
    if-eqz v1, :cond_3a

    :try_start_37
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_3a

    :catch_3a
    :cond_3a
    if-eqz v0, :cond_3f

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_11} :catch_bf
    .catchall {:try_start_6 .. :try_end_11} :catchall_ba

    :try_start_11
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "GET"

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "charset"

    const-string/jumbo v4, "utf-8"

    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_68

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_35
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_3a} :catch_b4
    .catchall {:try_start_11 .. :try_end_3a} :catchall_b1

    :try_start_3a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3e} :catch_62
    .catchall {:try_start_3a .. :try_end_3e} :catchall_5e

    :try_start_3e
    invoke-static {p1, v3}, Lcom/alibaba/sdk/android/push/f/a;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_56
    .catchall {:try_start_3e .. :try_end_41} :catchall_4f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p0, :cond_49

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_49
    if-eqz p1, :cond_4e

    :try_start_4b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4e

    :catch_4e
    :cond_4e
    return-void

    :catchall_4f
    move-exception p2

    move-object v7, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v7

    goto/16 :goto_c9

    :catch_56
    move-exception p2

    move-object v7, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, p2

    move-object p2, v7

    goto/16 :goto_c3

    :catchall_5e
    move-exception p1

    move-object p2, v2

    goto/16 :goto_c9

    :catch_62
    move-exception p1

    move-object p2, v2

    move-object v2, p0

    move-object p0, p2

    goto/16 :goto_c3

    :cond_68
    :try_start_68
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6c} :catch_b4
    .catchall {:try_start_68 .. :try_end_6c} :catchall_b1

    :try_start_6c
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_78} :catch_aa
    .catchall {:try_start_6c .. :try_end_78} :catchall_a4

    :try_start_78
    invoke-static {p2}, Lcom/alibaba/sdk/android/push/f/a;->a(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_99} :catch_9e
    .catchall {:try_start_78 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception v0

    move-object v3, v2

    move-object v2, p1

    move-object p1, v0

    goto :goto_c9

    :catch_9e
    move-exception v1

    move-object v3, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v1

    goto :goto_c3

    :catchall_a4
    move-exception p2

    move-object v3, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v3

    goto :goto_c9

    :catch_aa
    move-exception p2

    move-object v3, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, p2

    move-object p2, v3

    goto :goto_c3

    :catchall_b1
    move-exception p1

    move-object p2, v2

    goto :goto_bd

    :catch_b4
    move-exception p1

    move-object p2, v2

    move-object v3, p2

    move-object v2, p0

    move-object p0, v3

    goto :goto_c3

    :catchall_ba
    move-exception p1

    move-object p0, v2

    move-object p2, p0

    :goto_bd
    move-object v3, p2

    goto :goto_c9

    :catch_bf
    move-exception p1

    move-object p0, v2

    move-object p2, p0

    move-object v3, p2

    :goto_c3
    :try_start_c3
    throw p1
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c4

    :catchall_c4
    move-exception p1

    move v1, v0

    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    :goto_c9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p0, :cond_d1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d1
    if-eqz v2, :cond_d6

    :try_start_d3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d6

    :catch_d6
    :cond_d6
    if-eqz p2, :cond_db

    :try_start_d8
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_db

    :catch_db
    :cond_db
    if-eqz v1, :cond_e8

    if-eqz v3, :cond_e8

    :try_start_df
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_e8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_e8} :catch_e8

    :catch_e8
    :cond_e8
    throw p1
.end method
