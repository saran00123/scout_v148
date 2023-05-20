.class Lcom/xiaomi/push/service/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/xiaomi/push/hz;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xiaomi/push/hz;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/push/service/by;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/push/service/by;->a:Lcom/xiaomi/push/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    sget-object v0, Lcom/xiaomi/push/service/bx;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/xiaomi/push/service/by;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "tiny_data.lock"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_43
    .catchall {:try_start_4 .. :try_end_1b} :catchall_40

    :try_start_1b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/by;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/push/service/by;->a:Lcom/xiaomi/push/hz;

    invoke-static {v2, v4}, Lcom/xiaomi/push/service/bx;->b(Landroid/content/Context;Lcom/xiaomi/push/hz;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_3e
    .catchall {:try_start_1b .. :try_end_2a} :catchall_5b

    if-eqz v1, :cond_3a

    :try_start_2c
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_70

    if-eqz v2, :cond_3a

    :try_start_32
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_70

    goto :goto_3a

    :catch_36
    move-exception v1

    :try_start_37
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    invoke-static {v3}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_70

    goto :goto_59

    :catch_3e
    move-exception v2

    goto :goto_45

    :catchall_40
    move-exception v2

    move-object v3, v1

    goto :goto_5c

    :catch_43
    move-exception v2

    move-object v3, v1

    :goto_45
    :try_start_45
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_5b

    if-eqz v1, :cond_3a

    :try_start_4a
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_70

    if-eqz v2, :cond_3a

    :try_start_50
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54
    .catchall {:try_start_50 .. :try_end_53} :catchall_70

    goto :goto_3a

    :catch_54
    move-exception v1

    :try_start_55
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_3a

    :goto_59
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception v2

    :goto_5c
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_70

    if-eqz v4, :cond_6c

    :try_start_64
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_70

    goto :goto_6c

    :catch_68
    move-exception v1

    :try_start_69
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_6c
    :goto_6c
    invoke-static {v3}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw v2

    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_70

    throw v1
.end method
