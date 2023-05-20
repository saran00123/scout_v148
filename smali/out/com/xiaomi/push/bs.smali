.class public Lcom/xiaomi/push/bs;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/xiaomi/push/bv;->a(Landroid/content/Context;)Lcom/xiaomi/push/bv;

    move-result-object v0

    const-string v1, "sp_client_report_key"

    const-string v2, "sp_client_report_status"

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaomi/push/bv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/xiaomi/push/bo;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/push/bv;->a(Landroid/content/Context;)Lcom/xiaomi/push/bv;

    move-result-object p0

    invoke-virtual {p0, v2, v1, v0}, Lcom/xiaomi/push/bv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.push.XMSF_UPLOAD_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkgname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "category"

    const-string v2, "category_client_report_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    const-string v2, "quality_support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.xiaomi.xmsf.permission.USE_XMSF_UPLOAD"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-virtual {p0, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_124

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_f
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_124

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-void

    :cond_1f
    new-instance p1, Lcom/xiaomi/push/bt;

    invoke-direct {p1}, Lcom/xiaomi/push/bt;-><init>()V

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_124

    array-length p1, p0

    if-gtz p1, :cond_2f

    goto/16 :goto_124

    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    array-length p1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_38
    if-ge v2, p1, :cond_124

    aget-object v6, p0, v2

    if-eqz v6, :cond_108

    :try_start_3e
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4a

    goto/16 :goto_108

    :cond_4a
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".lock"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_64} :catch_cc
    .catchall {:try_start_3e .. :try_end_64} :catchall_c8

    :try_start_64
    invoke-static {v7}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6e} :catch_c3
    .catchall {:try_start_64 .. :try_end_6e} :catchall_c1

    :try_start_6e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_9a} :catch_bf
    .catchall {:try_start_6e .. :try_end_9a} :catchall_ee

    :try_start_9a
    invoke-static {v6, v8}, Lcom/xiaomi/push/aa;->b(Ljava/io/File;Ljava/io/File;)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_bf
    .catchall {:try_start_9a .. :try_end_9d} :catchall_ee

    goto :goto_a8

    :catch_9e
    move-exception v4

    :try_start_9f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :goto_a8
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ab} :catch_bf
    .catchall {:try_start_9f .. :try_end_ab} :catchall_ee

    if-eqz v3, :cond_bb

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_bb

    :try_start_b3
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_bb

    :catch_b7
    move-exception v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_bb
    :goto_bb
    invoke-static {v5}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_e8

    :catch_bf
    move-exception v4

    goto :goto_d0

    :catchall_c1
    move-exception p0

    goto :goto_ca

    :catch_c3
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_d0

    :catchall_c8
    move-exception p0

    move-object v7, v5

    :goto_ca
    move-object v5, v4

    goto :goto_ef

    :catch_cc
    move-exception v6

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    :goto_d0
    :try_start_d0
    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_ee

    if-eqz v3, :cond_e3

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_e3

    :try_start_db
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_e3

    :catch_df
    move-exception v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_e3
    :goto_e3
    invoke-static {v5}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v7, :cond_eb

    :goto_e8
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_eb
    move-object v4, v5

    move-object v5, v7

    goto :goto_120

    :catchall_ee
    move-exception p0

    :goto_ef
    if-eqz v3, :cond_ff

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_ff

    :try_start_f7
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fb

    goto :goto_ff

    :catch_fb
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_ff
    :goto_ff
    invoke-static {v5}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v7, :cond_107

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_107
    throw p0

    :cond_108
    :goto_108
    if-eqz v3, :cond_118

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_118

    :try_start_110
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_114

    goto :goto_118

    :catch_114
    move-exception v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_118
    :goto_118
    invoke-static {v4}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v5, :cond_120

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_120
    :goto_120
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_38

    :cond_124
    :goto_124
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_2a

    :cond_9
    invoke-static {p0}, Lcom/xiaomi/push/bs;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_13

    :cond_26
    invoke-static {p0, v0}, Lcom/xiaomi/push/bs;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_9
    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_11} :catch_16

    const/16 v1, 0x6c

    if-lt p0, v1, :cond_16

    const/4 v0, 0x1

    :catch_16
    :cond_16
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/clientreport/manager/a;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/clientreport/data/Config;->getMaxFileLength()J

    move-result-wide p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_27

    :try_start_19
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_22

    cmp-long p0, v0, p0

    if-lez p0, :cond_2a

    goto :goto_2b

    :catch_22
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_2b

    :cond_27
    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    :cond_2a
    move v2, v3

    :goto_2b
    return v2
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/push/bl;->a(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x44

    aput-byte v1, p0, v0

    const/16 v0, 0xf

    const/16 v1, 0x54

    aput-byte v1, p0, v0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_10

    new-instance p1, Lcom/xiaomi/push/bu;

    invoke-direct {p1}, Lcom/xiaomi/push/bu;-><init>()V

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method
