.class public Lcom/ta/a/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/io/File;

.field private static a:Ljava/nio/channels/FileChannel;

.field private static a:Ljava/nio/channels/FileLock;

.field private static b:Ljava/io/File;

.field private static b:Ljava/nio/channels/FileChannel;

.field private static b:Ljava/nio/channels/FileLock;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static declared-synchronized a()Z
    .registers 5

    const-class v0, Lcom/ta/a/e/e;

    monitor-enter v0

    .line 76
    :try_start_3
    invoke-static {}, Lcom/ta/a/e/h;->f()V

    .line 77
    sget-object v1, Lcom/ta/a/e/e;->b:Ljava/io/File;

    if-nez v1, :cond_15

    .line 78
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/ta/a/d/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ta/a/e/e;->b:Ljava/io/File;

    .line 80
    :cond_15
    sget-object v1, Lcom/ta/a/e/e;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_4b

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 83
    :try_start_1e
    sget-object v1, Lcom/ta/a/e/e;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_4b

    goto :goto_26

    .line 85
    :catch_24
    monitor-exit v0

    return v2

    .line 89
    :cond_26
    :goto_26
    :try_start_26
    sget-object v1, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileChannel;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_4b

    if-nez v1, :cond_3c

    .line 91
    :try_start_2a
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v3, Lcom/ta/a/e/e;->b:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sput-object v1, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileChannel;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_39} :catch_3a
    .catchall {:try_start_2a .. :try_end_39} :catchall_4b

    goto :goto_3c

    .line 93
    :catch_3a
    monitor-exit v0

    return v2

    .line 97
    :cond_3c
    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 99
    sput-object v1, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileLock;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_46} :catch_49
    .catchall {:try_start_3c .. :try_end_46} :catchall_4b

    const/4 v1, 0x1

    .line 100
    monitor-exit v0

    return v1

    .line 105
    :catch_49
    :cond_49
    monitor-exit v0

    return v2

    :catchall_4b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()V
    .registers 4

    const-class v0, Lcom/ta/a/e/e;

    monitor-enter v0

    .line 24
    :try_start_3
    invoke-static {}, Lcom/ta/a/e/h;->f()V

    .line 25
    sget-object v1, Lcom/ta/a/e/e;->a:Ljava/io/File;

    if-nez v1, :cond_15

    .line 26
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/ta/a/d/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ta/a/e/e;->a:Ljava/io/File;

    .line 28
    :cond_15
    sget-object v1, Lcom/ta/a/e/e;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_45

    if-nez v1, :cond_25

    .line 31
    :try_start_1d
    sget-object v1, Lcom/ta/a/e/e;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_45

    goto :goto_25

    .line 33
    :catch_23
    monitor-exit v0

    return-void

    .line 36
    :cond_25
    :goto_25
    :try_start_25
    sget-object v1, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileChannel;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_45

    if-nez v1, :cond_3b

    .line 38
    :try_start_29
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/ta/a/e/e;->a:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sput-object v1, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileChannel;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_39
    .catchall {:try_start_29 .. :try_end_38} :catchall_45

    goto :goto_3b

    .line 40
    :catch_39
    monitor-exit v0

    return-void

    .line 44
    :cond_3b
    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    sput-object v1, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileLock;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_43} :catch_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_45

    .line 48
    :catch_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()V
    .registers 3

    const-class v0, Lcom/ta/a/e/e;

    monitor-enter v0

    .line 51
    :try_start_3
    invoke-static {}, Lcom/ta/a/e/h;->f()V

    .line 52
    sget-object v1, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileLock;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 54
    :try_start_b
    sget-object v1, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_10
    .catchall {:try_start_b .. :try_end_10} :catchall_13

    .line 58
    :catch_10
    :try_start_10
    sput-object v2, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileLock;

    goto :goto_17

    :catchall_13
    move-exception v1

    sput-object v2, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileLock;

    throw v1

    .line 61
    :cond_17
    :goto_17
    sget-object v1, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileChannel;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_29

    if-eqz v1, :cond_27

    .line 63
    :try_start_1b
    sget-object v1, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_23

    .line 67
    :catch_20
    :try_start_20
    sput-object v2, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileChannel;

    goto :goto_27

    :catchall_23
    move-exception v1

    sput-object v2, Lcom/ta/a/e/e;->a:Ljava/nio/channels/FileChannel;

    throw v1
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    .line 70
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()V
    .registers 3

    const-class v0, Lcom/ta/a/e/e;

    monitor-enter v0

    .line 109
    :try_start_3
    invoke-static {}, Lcom/ta/a/e/h;->f()V

    .line 110
    sget-object v1, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileLock;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 112
    :try_start_b
    sget-object v1, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_10
    .catchall {:try_start_b .. :try_end_10} :catchall_13

    .line 116
    :catch_10
    :try_start_10
    sput-object v2, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileLock;

    goto :goto_17

    :catchall_13
    move-exception v1

    sput-object v2, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileLock;

    throw v1

    .line 119
    :cond_17
    :goto_17
    sget-object v1, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileChannel;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_29

    if-eqz v1, :cond_27

    .line 121
    :try_start_1b
    sget-object v1, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_23

    .line 125
    :catch_20
    :try_start_20
    sput-object v2, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileChannel;

    goto :goto_27

    :catchall_23
    move-exception v1

    sput-object v2, Lcom/ta/a/e/e;->b:Ljava/nio/channels/FileChannel;

    throw v1
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    .line 128
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0

    throw v1
.end method
