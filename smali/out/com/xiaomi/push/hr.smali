.class public Lcom/xiaomi/push/hr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/hr$a;
    }
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/tdReadTemp"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_23

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_23
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/push/hu;)V
    .registers 4

    invoke-static {p0}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/hr$a;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/push/hr$a;-><init>(Landroid/content/Context;Lcom/xiaomi/push/hu;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ak;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/push/hu;Ljava/io/File;[B)V
    .registers 16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    :try_start_9
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_d1
    .catchall {:try_start_9 .. :try_end_13} :catchall_ce

    const/4 v3, 0x0

    :goto_14
    move v5, v3

    move v6, v5

    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v4, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1f

    goto/16 :goto_af

    :cond_1f
    if-eq v7, v1, :cond_37

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TinyData read from cache file failed cause lengthBuffer error. size:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_32
    invoke-static {p3}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto/16 :goto_af

    :cond_37
    invoke-static {v2}, Lcom/xiaomi/push/ae;->a([B)I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_9d

    const/16 v8, 0x2800

    if-le v7, v8, :cond_43

    goto :goto_9d

    :cond_43
    new-array v9, v7, [B

    invoke-virtual {v4, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    if-eq v10, v7, :cond_65

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TinyData read from cache file failed cause buffer size not equal length. size:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "__length:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_32

    :cond_65
    invoke-static {p3, v9}, Lcom/xiaomi/push/h;->a([B[B)[B

    move-result-object v7

    if-eqz v7, :cond_96

    array-length v9, v7

    if-nez v9, :cond_6f

    goto :goto_96

    :cond_6f
    new-instance v9, Lcom/xiaomi/push/hz;

    invoke-direct {v9}, Lcom/xiaomi/push/hz;-><init>()V

    invoke-static {v9, v7}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    const-string v10, "item_size"

    array-length v11, v7

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/xiaomi/push/hz;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    array-length v7, v7

    add-int/2addr v6, v7

    const/16 v7, 0x8

    if-ge v5, v7, :cond_8e

    if-lt v6, v8, :cond_16

    :cond_8e
    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/hs;->a(Landroid/content/Context;Lcom/xiaomi/push/hu;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_14

    :cond_96
    :goto_96
    const-string v7, "TinyData read from cache file failed cause decrypt fail"

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_9d
    :goto_9d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TinyData read from cache file failed cause lengthBuffer < 1 || too big. length:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_32

    :goto_af
    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/hs;->a(Landroid/content/Context;Lcom/xiaomi/push/hu;Ljava/util/List;)V

    if-eqz p2, :cond_c5

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_c5

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_c5

    const-string p0, "TinyData delete reading temp file failed"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_c5} :catch_cb
    .catchall {:try_start_16 .. :try_end_c5} :catchall_c9

    :cond_c5
    invoke-static {v4}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_d8

    :catchall_c9
    move-exception p0

    goto :goto_d9

    :catch_cb
    move-exception p0

    move-object v3, v4

    goto :goto_d2

    :catchall_ce
    move-exception p0

    move-object v4, v3

    goto :goto_d9

    :catch_d1
    move-exception p0

    :goto_d2
    :try_start_d2
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_ce

    invoke-static {v3}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :goto_d8
    return-void

    :goto_d9
    invoke-static {v4}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 5

    const-string v0, "mipush_extra"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v2, "last_tiny_data_upload_timestamp"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lcom/xiaomi/push/hu;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/push/hr;->c(Landroid/content/Context;Lcom/xiaomi/push/hu;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/xiaomi/push/hu;)V
    .registers 13

    const-string v0, "/"

    const-string v1, "/tdReadTemp"

    sget-boolean v2, Lcom/xiaomi/push/hr;->a:Z

    if-nez v2, :cond_dd

    const/4 v2, 0x1

    sput-boolean v2, Lcom/xiaomi/push/hr;->a:Z

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "tiny_data.data"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v5, "TinyData no ready file to get data."

    if-nez v3, :cond_22

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_22
    invoke-static {p0}, Lcom/xiaomi/push/hr;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/bx;->a(Landroid/content/Context;)[B

    move-result-object v3

    const/4 v6, 0x0

    :try_start_2a
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "tiny_data.lock"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v9, "rw"

    invoke-direct {v8, v7, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3f} :catch_7b
    .catchall {:try_start_2a .. :try_end_3f} :catchall_78

    :try_start_3f
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_68} :catch_76
    .catchall {:try_start_3f .. :try_end_68} :catchall_c8

    if-eqz v6, :cond_90

    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_90

    :try_start_70
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_90

    :catch_74
    move-exception v2

    goto :goto_8d

    :catch_76
    move-exception v2

    goto :goto_7d

    :catchall_78
    move-exception p0

    move-object v8, v6

    goto :goto_c9

    :catch_7b
    move-exception v2

    move-object v8, v6

    :goto_7d
    :try_start_7d
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_c8

    if-eqz v6, :cond_90

    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_90

    :try_start_88
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception v2

    :goto_8d
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    invoke-static {v8}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_bb

    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_bb
    invoke-static {p0, p1, v2, v3}, Lcom/xiaomi/push/hr;->a(Landroid/content/Context;Lcom/xiaomi/push/hu;Ljava/io/File;[B)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/xiaomi/push/hq;->a(Z)V

    invoke-static {p0}, Lcom/xiaomi/push/hr;->b(Landroid/content/Context;)V

    sput-boolean p1, Lcom/xiaomi/push/hr;->a:Z

    return-void

    :catchall_c8
    move-exception p0

    :goto_c9
    if-eqz v6, :cond_d9

    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_d9

    :try_start_d1
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d5

    goto :goto_d9

    :catch_d5
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_d9
    :goto_d9
    invoke-static {v8}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_dd
    const-string p0, "TinyData extractTinyData is running"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void
.end method
