.class public Lcom/xiaomi/push/di;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# static fields
.field private static volatile a:Lcom/xiaomi/push/di;

.field public static a:Ljava/lang/String;

.field private static final a:Ljava/text/SimpleDateFormat;

.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/di;->a:Ljava/text/SimpleDateFormat;

    const-string v0, "/MiPushLog"

    sput-object v0, Lcom/xiaomi/push/di;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/di;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/di;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/di;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/di;->a:Landroid/content/Context;

    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/push/di;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Log2FileHandlerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/push/di;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/di;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/di;->a:Lcom/xiaomi/push/di;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/di;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/di;->a:Lcom/xiaomi/push/di;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/di;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/di;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/di;->a:Lcom/xiaomi/push/di;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/xiaomi/push/di;->a:Lcom/xiaomi/push/di;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/di;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/xiaomi/push/di;->a:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic a()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/xiaomi/push/di;->a:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .registers 12

    const-string v0, "log1.txt"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/xiaomi/push/di;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/xiaomi/push/di;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/push/di;->c:Ljava/lang/String;

    :cond_2a
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/push/di;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaomi/push/di;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_5c

    :cond_4e
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_5c

    iget-object v0, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    const-string v3, "Create mipushlog directory fail."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5c
    new-instance v4, Ljava/io/File;

    const-string v5, "log.lock"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_72

    :cond_6f
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_72
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_79} :catch_14d
    .catchall {:try_start_5 .. :try_end_79} :catchall_149

    :try_start_79
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v4
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_81} :catch_146
    .catchall {:try_start_79 .. :try_end_81} :catchall_143

    :try_start_81
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_96} :catch_141
    .catchall {:try_start_81 .. :try_end_96} :catchall_180

    :goto_96
    :try_start_96
    sget-object v7, Lcom/xiaomi/push/di;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_ea

    sget-object v7, Lcom/xiaomi/push/di;->a:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_ad} :catch_13e
    .catchall {:try_start_96 .. :try_end_ad} :catchall_13b

    const-string v10, "\n"

    if-eqz v9, :cond_d7

    :try_start_b1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_d7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_96

    :cond_ea
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_f0} :catch_13e
    .catchall {:try_start_b1 .. :try_end_f0} :catchall_13b

    :try_start_f0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x100000

    cmp-long v0, v7, v9

    if-ltz v0, :cond_119

    new-instance v0, Ljava/io/File;

    const-string v7, "log0.txt"

    invoke-direct {v0, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_116

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_116

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_116
    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_119} :catch_141
    .catchall {:try_start_f0 .. :try_end_119} :catchall_180

    :cond_119
    if-eqz v2, :cond_125

    :try_start_11b
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11e} :catch_11f

    goto :goto_125

    :catch_11f
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_125
    :goto_125
    if-eqz v4, :cond_137

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_137

    :try_start_12d
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_130} :catch_131

    goto :goto_137

    :catch_131
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_137
    :goto_137
    :try_start_137
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_179

    goto :goto_17f

    :catchall_13b
    move-exception v0

    move-object v2, v6

    goto :goto_181

    :catch_13e
    move-exception v0

    move-object v2, v6

    goto :goto_150

    :catch_141
    move-exception v0

    goto :goto_150

    :catchall_143
    move-exception v0

    move-object v4, v2

    goto :goto_181

    :catch_146
    move-exception v0

    move-object v4, v2

    goto :goto_150

    :catchall_149
    move-exception v0

    move-object v4, v2

    move-object v5, v4

    goto :goto_181

    :catch_14d
    move-exception v0

    move-object v4, v2

    move-object v5, v4

    :goto_150
    :try_start_150
    iget-object v3, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_155
    .catchall {:try_start_150 .. :try_end_155} :catchall_180

    if-eqz v2, :cond_161

    :try_start_157
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15a} :catch_15b

    goto :goto_161

    :catch_15b
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_161
    :goto_161
    if-eqz v4, :cond_173

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_173

    :try_start_169
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16c} :catch_16d

    goto :goto_173

    :catch_16d
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_173
    :goto_173
    if-eqz v5, :cond_17f

    :try_start_175
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_178} :catch_179

    goto :goto_17f

    :catch_179
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17f
    :goto_17f
    return-void

    :catchall_180
    move-exception v0

    :goto_181
    if-eqz v2, :cond_18d

    :try_start_183
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_187

    goto :goto_18d

    :catch_187
    move-exception v2

    iget-object v3, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18d
    :goto_18d
    if-eqz v4, :cond_19f

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v2

    if-eqz v2, :cond_19f

    :try_start_195
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_199

    goto :goto_19f

    :catch_199
    move-exception v2

    iget-object v3, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19f
    :goto_19f
    if-eqz v5, :cond_1ab

    :try_start_1a1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    goto :goto_1ab

    :catch_1a5
    move-exception v2

    iget-object v3, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1ab
    :goto_1ab
    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/push/di;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/di;->a()V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/di;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/di;->a:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/push/dj;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/push/dj;-><init>(Lcom/xiaomi/push/di;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/di;->b:Ljava/lang/String;

    return-void
.end method
