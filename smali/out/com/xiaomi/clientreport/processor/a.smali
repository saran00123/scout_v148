.class public Lcom/xiaomi/clientreport/processor/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/clientreport/processor/IEventProcessor;


# instance fields
.field protected a:Landroid/content/Context;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/clientreport/data/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/clientreport/processor/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/clientreport/data/a;)Ljava/lang/String;
    .registers 1

    iget p0, p0, Lcom/xiaomi/clientreport/data/a;->production:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [B

    new-array v3, v1, [B

    const/4 v4, 0x0

    :try_start_b
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_72
    .catchall {:try_start_b .. :try_end_15} :catchall_6f

    :cond_15
    :goto_15
    :try_start_15
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_6c
    .catchall {:try_start_15 .. :try_end_19} :catchall_6a

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1d

    goto :goto_66

    :cond_1d
    const-string v6, "eventData read from cache file failed because magicNumber error"

    if-eq p1, v1, :cond_25

    :goto_21
    :try_start_21
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_66

    :cond_25
    invoke-static {v2}, Lcom/xiaomi/push/ae;->a([B)I

    move-result p1

    const v7, -0x22334456

    if-eq p1, v7, :cond_2f

    goto :goto_21

    :cond_2f
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-ne p1, v4, :cond_36

    goto :goto_66

    :cond_36
    if-eq p1, v1, :cond_3e

    const-string p1, "eventData read from cache file failed cause lengthBuffer error"

    :goto_3a
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_66

    :cond_3e
    invoke-static {v3}, Lcom/xiaomi/push/ae;->a([B)I

    move-result p1

    const/4 v4, 0x1

    if-lt p1, v4, :cond_63

    const/16 v4, 0x1000

    if-le p1, v4, :cond_4a

    goto :goto_63

    :cond_4a
    new-array v4, p1, [B

    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, p1, :cond_55

    const-string p1, "eventData read from cache file failed cause buffer size not equal length"

    goto :goto_3a

    :cond_55
    invoke-virtual {p0, v4}, Lcom/xiaomi/clientreport/processor/a;->bytesToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_63
    :goto_63
    const-string p1, "eventData read from cache file failed cause lengthBuffer < 1 || lengthBuffer > 4K"
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_65} :catch_6c
    .catchall {:try_start_21 .. :try_end_65} :catchall_6a

    goto :goto_3a

    :goto_66
    invoke-static {v5}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_79

    :catchall_6a
    move-exception p1

    goto :goto_7a

    :catch_6c
    move-exception p1

    move-object v4, v5

    goto :goto_73

    :catchall_6f
    move-exception p1

    move-object v5, v4

    goto :goto_7a

    :catch_72
    move-exception p1

    :goto_73
    :try_start_73
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_6f

    invoke-static {v4}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :goto_79
    return-object v0

    :goto_7a
    invoke-static {v5}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private a(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V
    .registers 4

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    :try_start_8
    invoke-virtual {p2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p2

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    invoke-static {p1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/a;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "24:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1389

    invoke-virtual {v0, p2, p1}, Lcom/xiaomi/clientreport/manager/a;->a(ILjava/lang/String;)Lcom/xiaomi/clientreport/data/EventClientReport;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/EventClientReport;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/xiaomi/clientreport/processor/a;->a(Ljava/util/List;)V

    return-void
.end method

.method private a([Lcom/xiaomi/clientreport/data/a;)[Lcom/xiaomi/clientreport/data/a;
    .registers 15

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/xiaomi/clientreport/processor/a;->b(Lcom/xiaomi/clientreport/data/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    return-object v3

    :cond_f
    :try_start_f
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".lock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2f} :catch_b2
    .catchall {:try_start_f .. :try_end_2f} :catchall_ad

    :try_start_2f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_a9
    .catchall {:try_start_2f .. :try_end_37} :catchall_a5

    :try_start_37
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_47} :catch_a2
    .catchall {:try_start_37 .. :try_end_47} :catchall_9f

    :try_start_47
    array-length v5, p1

    move v7, v0

    move v9, v7

    :goto_4a
    if-ge v7, v5, :cond_bb

    aget-object v10, p1, v7

    if-nez v10, :cond_51

    goto :goto_9a

    :cond_51
    invoke-virtual {v10}, Lcom/xiaomi/clientreport/data/a;->toJsonString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/xiaomi/clientreport/processor/a;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    if-eqz v10, :cond_95

    array-length v11, v10

    if-lt v11, v8, :cond_95

    array-length v11, v10

    const/16 v12, 0x1000

    if-le v11, v12, :cond_64

    goto :goto_95

    :cond_64
    iget-object v11, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    invoke-static {v11, v1}, Lcom/xiaomi/push/bs;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7a

    array-length v1, p1

    sub-int/2addr v1, v9

    new-array v5, v1, [Lcom/xiaomi/clientreport/data/a;

    invoke-static {p1, v9, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_73} :catch_9d
    .catchall {:try_start_47 .. :try_end_73} :catchall_c2

    invoke-static {v6}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4, v2}, Lcom/xiaomi/clientreport/processor/a;->a(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V

    return-object v5

    :cond_7a
    const v11, -0x22334456

    :try_start_7d
    invoke-static {v11}, Lcom/xiaomi/push/ae;->a(I)[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/BufferedOutputStream;->write([B)V

    array-length v11, v10

    invoke-static {v11}, Lcom/xiaomi/push/ae;->a(I)[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v6, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9a

    :cond_95
    :goto_95
    const-string v10, "event data throw a invalid item "

    invoke-static {v10}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_9a} :catch_9d
    .catchall {:try_start_7d .. :try_end_9a} :catchall_c2

    :goto_9a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :catch_9d
    move-exception p1

    goto :goto_b6

    :catchall_9f
    move-exception p1

    move-object v6, v3

    goto :goto_c3

    :catch_a2
    move-exception p1

    move-object v6, v3

    goto :goto_b6

    :catchall_a5
    move-exception p1

    move-object v2, v3

    move-object v6, v2

    goto :goto_c3

    :catch_a9
    move-exception p1

    move-object v2, v3

    move-object v6, v2

    goto :goto_b6

    :catchall_ad
    move-exception p1

    move-object v2, v3

    move-object v4, v2

    move-object v6, v4

    goto :goto_c3

    :catch_b2
    move-exception p1

    move-object v2, v3

    move-object v4, v2

    move-object v6, v4

    :goto_b6
    :try_start_b6
    const-string v0, "event data write to cache file failed cause exception"

    invoke-static {v0, p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_c2

    :cond_bb
    invoke-static {v6}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4, v2}, Lcom/xiaomi/clientreport/processor/a;->a(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V

    return-object v3

    :catchall_c2
    move-exception p1

    :goto_c3
    invoke-static {v6}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4, v2}, Lcom/xiaomi/clientreport/processor/a;->a(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V

    throw p1
.end method

.method private b(Lcom/xiaomi/clientreport/data/a;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/clientreport/processor/a;->a(Lcom/xiaomi/clientreport/data/a;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_29
    const/16 v2, 0x64

    if-ge v0, v2, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/xiaomi/push/bs;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    move-object v1, v2

    goto :goto_49

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_49
    :goto_49
    return-object v1
.end method


# virtual methods
.method public a()V
    .registers 12

    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    const-string v1, "eventUploading"

    const-string v2, "event"

    invoke-static {v0, v2, v1}, Lcom/xiaomi/push/bs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/push/bs;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_129

    array-length v1, v0

    if-gtz v1, :cond_16

    goto/16 :goto_129

    :cond_16
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_1b
    if-ge v2, v1, :cond_129

    aget-object v6, v0, v2

    if-nez v6, :cond_3b

    if-eqz v3, :cond_31

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_31

    :try_start_29
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    invoke-static {v4}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v5, :cond_10c

    :goto_36
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_10c

    :cond_3b
    :try_start_3b
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x500000

    cmp-long v7, v7, v9

    if-lez v7, :cond_94

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eventData read from cache file failed because "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is too big, length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/xiaomi/clientreport/processor/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_7e} :catch_f1
    .catchall {:try_start_3b .. :try_end_7e} :catchall_ef

    if-eqz v3, :cond_8e

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_8e

    :try_start_86
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    invoke-static {v4}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v5, :cond_10c

    goto :goto_36

    :cond_94
    :try_start_94
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".lock"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_ae} :catch_f1
    .catchall {:try_start_94 .. :try_end_ae} :catchall_ef

    :try_start_ae
    invoke-static {v8}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v9, "rw"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b8} :catch_ec
    .catchall {:try_start_ae .. :try_end_b8} :catchall_e9

    :try_start_b8
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    invoke-direct {p0, v7}, Lcom/xiaomi/clientreport/processor/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/xiaomi/clientreport/processor/a;->a(Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_ca} :catch_e6
    .catchall {:try_start_b8 .. :try_end_ca} :catchall_e3

    if-eqz v3, :cond_da

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_da

    :try_start_d2
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_da

    :catch_d6
    move-exception v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_da
    :goto_da
    invoke-static {v5}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-object v4, v5

    move-object v5, v8

    goto :goto_10c

    :catchall_e3
    move-exception v0

    move-object v4, v5

    goto :goto_ea

    :catch_e6
    move-exception v6

    move-object v4, v5

    goto :goto_ed

    :catchall_e9
    move-exception v0

    :goto_ea
    move-object v5, v8

    goto :goto_110

    :catch_ec
    move-exception v6

    :goto_ed
    move-object v5, v8

    goto :goto_f2

    :catchall_ef
    move-exception v0

    goto :goto_110

    :catch_f1
    move-exception v6

    :goto_f2
    :try_start_f2
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_ef

    if-eqz v3, :cond_105

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_105

    :try_start_fd
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_105

    :catch_101
    move-exception v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_105
    :goto_105
    invoke-static {v4}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v5, :cond_10c

    goto/16 :goto_36

    :cond_10c
    :goto_10c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1b

    :goto_110
    if-eqz v3, :cond_120

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-eqz v1, :cond_120

    :try_start_118
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11c

    goto :goto_120

    :catch_11c
    move-exception v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_120
    :goto_120
    invoke-static {v4}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v5, :cond_128

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_128
    throw v0

    :cond_129
    :goto_129
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/xiaomi/clientreport/data/a;)V
    .registers 4

    instance-of v0, p1, Lcom/xiaomi/clientreport/data/EventClientReport;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_a

    return-void

    :cond_a
    check-cast p1, Lcom/xiaomi/clientreport/data/EventClientReport;

    invoke-static {p1}, Lcom/xiaomi/clientreport/processor/a;->a(Lcom/xiaomi/clientreport/data/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/clientreport/processor/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1f
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/clientreport/processor/a;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/push/bs;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public a([Lcom/xiaomi/clientreport/data/a;)V
    .registers 4

    if-eqz p1, :cond_19

    array-length v0, p1

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-nez v1, :cond_b

    goto :goto_19

    :cond_b
    invoke-direct {p0, p1}, Lcom/xiaomi/clientreport/processor/a;->a([Lcom/xiaomi/clientreport/data/a;)[Lcom/xiaomi/clientreport/data/a;

    move-result-object p1

    if-eqz p1, :cond_18

    array-length v1, p1

    if-lez v1, :cond_18

    aget-object v1, p1, v0

    if-nez v1, :cond_b

    :cond_18
    return-void

    :cond_19
    :goto_19
    const-string p1, "event data write to cache file failed because data null"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3e

    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/clientreport/processor/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/xiaomi/clientreport/data/a;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/xiaomi/clientreport/processor/a;->a([Lcom/xiaomi/clientreport/data/a;)V

    goto :goto_15

    :cond_3e
    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public bytesToString([B)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_8

    goto :goto_4f

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/clientreport/manager/a;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->isEventEncrypted()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {p1}, Lcom/xiaomi/push/bo;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    iget-object v1, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/bs;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    return-object v0

    :cond_2a
    invoke-static {v1}, Lcom/xiaomi/push/bs;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4f

    array-length v2, v1

    if-lez v2, :cond_4f

    :try_start_33
    invoke-static {v1, p1}, Lcom/xiaomi/push/h;->a([B[B)[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/bo;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_40
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_33 .. :try_end_40} :catch_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_40} :catch_49
    .catch Ljava/security/InvalidKeyException; {:try_start_33 .. :try_end_40} :catch_47
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_33 .. :try_end_40} :catch_45
    .catch Ljavax/crypto/BadPaddingException; {:try_start_33 .. :try_end_40} :catch_43
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_33 .. :try_end_40} :catch_41

    return-object p1

    :catch_41
    move-exception p1

    goto :goto_4c

    :catch_43
    move-exception p1

    goto :goto_4c

    :catch_45
    move-exception p1

    goto :goto_4c

    :catch_47
    move-exception p1

    goto :goto_4c

    :catch_49
    move-exception p1

    goto :goto_4c

    :catch_4b
    move-exception p1

    :goto_4c
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    return-object v0
.end method

.method public setEventMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/clientreport/data/a;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/clientreport/processor/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public stringToBytes(Ljava/lang/String;)[B
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/a;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->isEventEncrypted()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Lcom/xiaomi/push/bo;->a(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1d
    iget-object v0, p0, Lcom/xiaomi/clientreport/processor/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bs;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/push/bo;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4b

    if-eqz p1, :cond_4b

    array-length v2, p1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_34

    goto :goto_4b

    :cond_34
    invoke-static {v0}, Lcom/xiaomi/push/bs;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4b

    :try_start_3a
    array-length v2, v0

    if-le v2, v3, :cond_4b

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/push/h;->b([B[B)[B

    move-result-object p1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_46} :catch_47

    return-object p1

    :catch_47
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    return-object v1
.end method
