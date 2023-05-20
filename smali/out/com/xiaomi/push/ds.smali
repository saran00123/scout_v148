.class public abstract Lcom/xiaomi/push/ds;
.super Lcom/xiaomi/push/ak$a;


# instance fields
.field protected a:I

.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/push/ak$a;-><init>()V

    iput p2, p0, Lcom/xiaomi/push/ds;->a:I

    iput-object p1, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/push/id;)V
    .registers 4

    invoke-static {}, Lcom/xiaomi/push/dm;->a()Lcom/xiaomi/push/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/dm;->a()Lcom/xiaomi/push/dl;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    goto :goto_11

    :cond_d
    invoke-interface {v0}, Lcom/xiaomi/push/dl;->a()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-void

    :cond_18
    invoke-virtual {p1}, Lcom/xiaomi/push/id;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    return-void

    :cond_23
    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/ds;->a(Landroid/content/Context;Lcom/xiaomi/push/id;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/id;Ljava/lang/String;)V
    .registers 9

    invoke-static {p1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/push/do;->b(Ljava/lang/String;[B)[B

    move-result-object p1

    if-eqz p1, :cond_ae

    array-length p2, p1

    if-nez p2, :cond_f

    goto/16 :goto_ae

    :cond_f
    sget-object p2, Lcom/xiaomi/push/dp;->a:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    :try_start_13
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "push_cdata.lock"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_28} :catch_7f
    .catchall {:try_start_13 .. :try_end_28} :catchall_7b

    :try_start_28
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_78
    .catchall {:try_start_28 .. :try_end_30} :catchall_75

    :try_start_30
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v4, "push_cdata.data"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_46} :catch_71
    .catchall {:try_start_30 .. :try_end_46} :catchall_6f

    :try_start_46
    array-length v0, p1

    invoke-static {v0}, Lcom/xiaomi/push/ae;->a(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_59} :catch_6d
    .catchall {:try_start_46 .. :try_end_59} :catchall_6b

    if-eqz v1, :cond_64

    :try_start_5b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_ab

    if-eqz p1, :cond_64

    :try_start_61
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_ab

    :catch_64
    :cond_64
    :try_start_64
    invoke-static {p0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :goto_67
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_ab

    goto :goto_94

    :catchall_6b
    move-exception p1

    goto :goto_98

    :catch_6d
    move-exception p1

    goto :goto_73

    :catchall_6f
    move-exception p1

    goto :goto_99

    :catch_71
    move-exception p1

    move-object p0, v0

    :goto_73
    move-object v0, v1

    goto :goto_82

    :catchall_75
    move-exception p1

    move-object v1, v0

    goto :goto_99

    :catch_78
    move-exception p1

    move-object p0, v0

    goto :goto_82

    :catchall_7b
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    goto :goto_99

    :catch_7f
    move-exception p1

    move-object p0, v0

    move-object v2, p0

    :goto_82
    :try_start_82
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_96

    if-eqz v0, :cond_90

    :try_start_87
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_ab

    if-eqz p1, :cond_90

    :try_start_8d
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_ab

    :catch_90
    :cond_90
    :try_start_90
    invoke-static {p0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_67

    :goto_94
    monitor-exit p2

    return-void

    :catchall_96
    move-exception p1

    move-object v1, v0

    :goto_98
    move-object v0, p0

    :goto_99
    if-eqz v1, :cond_a4

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p0
    :try_end_9f
    .catchall {:try_start_90 .. :try_end_9f} :catchall_ab

    if-eqz p0, :cond_a4

    :try_start_a1
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_ab

    :catch_a4
    :cond_a4
    :try_start_a4
    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p1

    :catchall_ab
    move-exception p0

    monitor-exit p2
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_ab

    throw p0

    :cond_ae
    :goto_ae
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dc_job_result_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ds;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dc_job_result_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ds;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/xiaomi/push/hx;
.end method

.method protected a()Z
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/push/ds;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/push/ds;->a:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/do;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .registers 12

    invoke-virtual {p0}, Lcom/xiaomi/push/ds;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/push/ds;->a()Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DC run job mutual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/push/ds;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-static {}, Lcom/xiaomi/push/dm;->a()Lcom/xiaomi/push/dm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/dm;->a()Lcom/xiaomi/push/dl;

    move-result-object v1

    if-nez v1, :cond_37

    const-string v1, ""

    goto :goto_3b

    :cond_37
    invoke-interface {v1}, Lcom/xiaomi/push/dl;->a()Ljava/lang/String;

    move-result-object v1

    :goto_3b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    return-void

    :cond_42
    invoke-virtual {p0}, Lcom/xiaomi/push/ds;->b()Z

    move-result v2

    if-nez v2, :cond_49

    return-void

    :cond_49
    invoke-virtual {p0}, Lcom/xiaomi/push/ds;->c()Z

    move-result v2

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "mipush_extra"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaomi/push/ds;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaomi/push/bo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-direct {p0}, Lcom/xiaomi/push/ds;->c()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/push/ia;->ba:Lcom/xiaomi/push/ia;

    invoke-virtual {v5}, Lcom/xiaomi/push/ia;->a()I

    move-result v5

    const v6, 0x93a80

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iget v9, p0, Lcom/xiaomi/push/ds;->a:I

    int-to-long v9, v9

    cmp-long v5, v5, v9

    if-gez v5, :cond_98

    return-void

    :cond_98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    div-long/2addr v5, v7

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gez v4, :cond_b4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "same_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b4
    new-instance v2, Lcom/xiaomi/push/id;

    invoke-direct {v2}, Lcom/xiaomi/push/id;-><init>()V

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/id;->a(Ljava/lang/String;)Lcom/xiaomi/push/id;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/id;->a(J)Lcom/xiaomi/push/id;

    invoke-virtual {p0}, Lcom/xiaomi/push/ds;->a()Lcom/xiaomi/push/hx;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/id;->a(Lcom/xiaomi/push/hx;)Lcom/xiaomi/push/id;

    iget-object v0, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/xiaomi/push/ds;->a(Landroid/content/Context;Lcom/xiaomi/push/id;Ljava/lang/String;)V

    return-void
.end method
