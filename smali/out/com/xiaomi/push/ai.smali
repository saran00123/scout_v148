.class public Lcom/xiaomi/push/ai;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_10

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/xiaomi/push/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x0

    :try_start_11
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "/.vdevdir/"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "lcfp.lock"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2d} :catch_4d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_4a

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/push/ai;->b(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_39} :catch_48
    .catchall {:try_start_2d .. :try_end_39} :catchall_61

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_44

    :try_start_41
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_44

    :catch_44
    :cond_44
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return p0

    :catch_48
    move-exception p0

    goto :goto_4f

    :catchall_4a
    move-exception p0

    move-object v2, v0

    goto :goto_62

    :catch_4d
    move-exception p0

    move-object v2, v0

    :goto_4f
    :try_start_4f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_61

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p0

    if-eqz p0, :cond_5d

    :try_start_5a
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5d

    :catch_5d
    :cond_5d
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_61
    move-exception p0

    :goto_62
    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_6d

    :try_start_6a
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6d

    :catch_6d
    :cond_6d
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 20

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "/.vdevdir/"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "lcfp"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_c1

    :try_start_47
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_51} :catch_b3
    .catchall {:try_start_47 .. :try_end_51} :catchall_b0

    :goto_51
    :try_start_51
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a8

    invoke-virtual {v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x2

    if-eq v14, v15, :cond_60

    goto :goto_51

    :cond_60
    const/4 v14, 0x0

    aget-object v1, v13, v14

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a3

    aget-object v1, v13, v11

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v12, v1

    if-eq v12, v15, :cond_77

    goto :goto_a6

    :cond_77
    aget-object v12, v1, v11

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v14, 0x0

    aget-object v1, v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a6

    sub-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_90} :catch_ae
    .catchall {:try_start_51 .. :try_end_90} :catchall_ac

    long-to-float v1, v12

    const-wide/16 v12, 0x3e8

    mul-long v12, v12, p2

    long-to-float v12, v12

    const v13, 0x3f666666    # 0.9f

    mul-float/2addr v12, v13

    cmpg-float v1, v1, v12

    if-gez v1, :cond_a6

    invoke-static {v10}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    return v0

    :cond_a3
    :try_start_a3
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_ae
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_ac

    :cond_a6
    :goto_a6
    const/4 v1, 0x0

    goto :goto_51

    :cond_a8
    invoke-static {v10}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_c8

    :catchall_ac
    move-exception v0

    goto :goto_bd

    :catch_ae
    move-object v1, v10

    goto :goto_b4

    :catchall_b0
    move-exception v0

    const/4 v10, 0x0

    goto :goto_bd

    :catch_b3
    const/4 v1, 0x0

    :goto_b4
    :try_start_b4
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_bb

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_c8

    :catchall_bb
    move-exception v0

    move-object v10, v1

    :goto_bd
    invoke-static {v10}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_c1
    invoke-static {v3}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_c8

    return v11

    :cond_c8
    :goto_c8
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_cb
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d5} :catch_f4
    .catchall {:try_start_cb .. :try_end_d5} :catchall_f1

    :try_start_d5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_ee} :catch_ef
    .catchall {:try_start_d5 .. :try_end_ee} :catchall_101

    goto :goto_d9

    :catch_ef
    move-exception v0

    goto :goto_f6

    :catchall_f1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_102

    :catch_f4
    move-exception v0

    const/4 v1, 0x0

    :goto_f6
    :try_start_f6
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_fd
    .catchall {:try_start_f6 .. :try_end_fd} :catchall_101

    :cond_fd
    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return v11

    :catchall_101
    move-exception v0

    :goto_102
    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw v0
.end method
