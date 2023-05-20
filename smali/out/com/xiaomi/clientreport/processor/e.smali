.class public Lcom/xiaomi/clientreport/processor/e;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/xiaomi/clientreport/data/PerfClientReport;Ljava/lang/String;)Lcom/xiaomi/clientreport/data/PerfClientReport;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p1}, Lcom/xiaomi/clientreport/processor/e;->a(Ljava/lang/String;)[J

    move-result-object p1

    if-nez p1, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/PerfClientReport;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/clientreport/processor/e;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_55

    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_55

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_55

    const/4 v3, 0x2

    aget-object v4, p0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    const/4 v4, 0x3

    aget-object v5, p0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    invoke-static {}, Lcom/xiaomi/clientreport/data/PerfClientReport;->getBlankInstance()Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-result-object v0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->production:I

    aget-object v1, p0, v2

    iput-object v1, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->clientInterfaceId:Ljava/lang/String;

    aget-object v1, p0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->reportType:I

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaomi/clientreport/data/PerfClientReport;->code:I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4f} :catch_50

    goto :goto_55

    :catch_50
    const-string p0, "parse per key error"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-object v0
.end method

.method public static a(Lcom/xiaomi/clientreport/data/PerfClientReport;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->production:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->clientInterfaceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->reportType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->code:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_64

    :cond_17
    const/4 v1, 0x0

    :try_start_18
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_58
    .catchall {:try_start_18 .. :try_end_22} :catchall_55

    :cond_22
    :goto_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4c

    const-string v1, "%%%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_22

    const/4 v1, 0x0

    aget-object v3, p0, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    const/4 v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    aget-object v1, p0, v1

    aget-object p0, p0, v3

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4b} :catch_52
    .catchall {:try_start_22 .. :try_end_4b} :catchall_50

    goto :goto_22

    :cond_4c
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_5f

    :catchall_50
    move-exception p0

    goto :goto_60

    :catch_52
    move-exception p0

    move-object v1, v2

    goto :goto_59

    :catchall_55
    move-exception p0

    move-object v2, v1

    goto :goto_60

    :catch_58
    move-exception p0

    :goto_59
    :try_start_59
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_55

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :goto_5f
    return-object v0

    :goto_60
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_64
    :goto_64
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_f8

    :cond_18
    const/4 v0, 0x0

    :try_start_19
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_b6
    .catchall {:try_start_19 .. :try_end_2f} :catchall_b1

    :try_start_2f
    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_ae
    .catchall {:try_start_2f .. :try_end_39} :catchall_ab

    :try_start_39
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_41} :catch_a8
    .catchall {:try_start_39 .. :try_end_41} :catchall_a5

    :try_start_41
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4b} :catch_a1
    .catchall {:try_start_41 .. :try_end_4b} :catchall_9f

    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_84

    const-string v0, "%%%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v5, 0x2

    if-lt v0, v5, :cond_4b

    const/4 v0, 0x0

    aget-object v5, p1, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4b

    const/4 v5, 0x1

    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/xiaomi/clientreport/processor/e;->a(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-result-object v0

    aget-object p1, p1, v5

    invoke-static {v0, p1}, Lcom/xiaomi/clientreport/processor/e;->a(Lcom/xiaomi/clientreport/data/PerfClientReport;Ljava/lang/String;)Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-result-object p1

    if-nez p1, :cond_7c

    goto :goto_4b

    :cond_7c
    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/PerfClientReport;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_83} :catch_9d
    .catchall {:try_start_4b .. :try_end_83} :catchall_9b

    goto :goto_4b

    :cond_84
    if-eqz v3, :cond_94

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_94

    :try_start_8c
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_94
    :goto_94
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_d5

    :catchall_9b
    move-exception p0

    goto :goto_db

    :catch_9d
    move-exception p1

    goto :goto_a3

    :catchall_9f
    move-exception p0

    goto :goto_dc

    :catch_a1
    move-exception p1

    move-object v4, v0

    :goto_a3
    move-object v0, v3

    goto :goto_ba

    :catchall_a5
    move-exception p0

    move-object v3, v0

    goto :goto_dc

    :catch_a8
    move-exception p1

    move-object v4, v0

    goto :goto_ba

    :catchall_ab
    move-exception p0

    move-object v2, v0

    goto :goto_b4

    :catch_ae
    move-exception p1

    move-object v2, v0

    goto :goto_b9

    :catchall_b1
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_b4
    move-object v3, v2

    goto :goto_dc

    :catch_b6
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_b9
    move-object v4, v2

    :goto_ba
    :try_start_ba
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_d9

    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_cd

    :try_start_c5
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_cd

    :catch_c9
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_cd
    :goto_cd
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_d8

    :goto_d5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_d8
    return-object p0

    :catchall_d9
    move-exception p0

    move-object v3, v0

    :goto_db
    move-object v0, v4

    :goto_dc
    if-eqz v3, :cond_ec

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_ec

    :try_start_e4
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_ec

    :catch_e8
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_ec
    :goto_ec
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_f7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_f7
    throw p0

    :cond_f8
    :goto_f8
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_72

    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1d
    const/4 p0, 0x0

    :try_start_1e
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_63
    .catchall {:try_start_1e .. :try_end_28} :catchall_5f

    :try_start_28
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%%%"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_5c} :catch_5d
    .catchall {:try_start_28 .. :try_end_5c} :catchall_6d

    goto :goto_30

    :catch_5d
    move-exception p0

    goto :goto_66

    :catchall_5f
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_6e

    :catch_63
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_66
    :try_start_66
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6d

    :cond_69
    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_6d
    move-exception p0

    :goto_6e
    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_72
    :goto_72
    return-void
.end method

.method public static a(Ljava/lang/String;[Lcom/xiaomi/clientreport/data/a;)V
    .registers 15

    if-eqz p1, :cond_ae

    array-length v0, p1

    if-lez v0, :cond_ae

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_ae

    :cond_d
    const/4 v0, 0x0

    :try_start_e
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2e} :catch_7f
    .catchall {:try_start_e .. :try_end_2e} :catchall_7c

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/clientreport/processor/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    array-length v9, p1

    const/4 v3, 0x0

    move v10, v3

    :goto_3d
    if-ge v10, v9, :cond_6b

    aget-object v3, p1, v10

    if-eqz v3, :cond_68

    move-object v4, v3

    check-cast v4, Lcom/xiaomi/clientreport/data/PerfClientReport;

    invoke-static {v4}, Lcom/xiaomi/clientreport/processor/e;->a(Lcom/xiaomi/clientreport/data/PerfClientReport;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lcom/xiaomi/clientreport/data/PerfClientReport;

    iget-wide v5, v5, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    check-cast v3, Lcom/xiaomi/clientreport/data/PerfClientReport;

    iget-wide v7, v3, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-lez v3, :cond_68

    cmp-long v3, v7, v11

    if-gez v3, :cond_64

    goto :goto_68

    :cond_64
    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lcom/xiaomi/clientreport/processor/e;->a(Ljava/util/HashMap;Ljava/lang/String;JJ)V

    :cond_68
    :goto_68
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    :cond_6b
    invoke-static {p0, v1}, Lcom/xiaomi/clientreport/processor/e;->a(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_6e} :catch_80
    .catchall {:try_start_2e .. :try_end_6e} :catchall_99

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p0

    if-eqz p0, :cond_95

    :try_start_76
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_95

    :catch_7a
    move-exception p0

    goto :goto_92

    :catchall_7c
    move-exception p0

    move-object v2, v0

    goto :goto_9a

    :catch_7f
    move-object v2, v0

    :catch_80
    :try_start_80
    const-string p0, "failed to write perf to file "

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_99

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p0

    if-eqz p0, :cond_95

    :try_start_8d
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_95

    :catch_91
    move-exception p0

    :goto_92
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_95
    :goto_95
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_99
    move-exception p0

    :goto_9a
    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_aa

    :try_start_a2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_aa

    :catch_a6
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_aa
    :goto_aa
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_ae
    :goto_ae
    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;JJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "#"

    if-eqz v1, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_13
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :cond_24
    invoke-static {v0}, Lcom/xiaomi/clientreport/processor/e;->a(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_47

    const/4 v1, 0x0

    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_47

    const/4 v3, 0x1

    aget-wide v7, v0, v3

    cmp-long v4, v7, v5

    if-gez v4, :cond_3b

    goto :goto_47

    :cond_3b
    aget-wide v4, v0, v1

    add-long/2addr p2, v4

    aget-wide v3, v0, v3

    add-long/2addr p4, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_13

    :cond_47
    :goto_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_13

    :goto_4d
    return-void
.end method

.method protected static a(Ljava/lang/String;)[J
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [J

    :try_start_3
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    if-lt v2, v0, :cond_26

    const/4 v0, 0x0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    :cond_26
    return-object v1

    :catch_27
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
