.class public Lcom/xiaomi/push/du;
.super Lcom/xiaomi/push/ak$a;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences;

.field private a:Lcom/xiaomi/push/service/ax;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/push/ak$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/du;->a:Landroid/content/Context;

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/du;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/du;->a:Lcom/xiaomi/push/service/ax;

    return-void
.end method

.method private a(Ljava/io/File;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/id;",
            ">;"
        }
    .end annotation

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

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    return-object v2

    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x4

    new-array v4, v3, [B

    sget-object v5, Lcom/xiaomi/push/dp;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_24
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/xiaomi/push/du;->a:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const-string v8, "push_cdata.lock"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/xiaomi/push/aa;->a(Ljava/io/File;)Z

    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3b} :catch_a7
    .catchall {:try_start_24 .. :try_end_3b} :catchall_92

    :try_start_3b
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v6
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_90
    .catchall {:try_start_3b .. :try_end_43} :catchall_8d

    :try_start_43
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_a9
    .catchall {:try_start_43 .. :try_end_48} :catchall_8b

    :cond_48
    :goto_48
    :try_start_48
    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-eq p1, v3, :cond_4f

    goto :goto_5b

    :cond_4f
    invoke-static {v4}, Lcom/xiaomi/push/ae;->a([B)I

    move-result p1

    new-array v2, p1, [B

    invoke-virtual {v8, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v9
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_59} :catch_89
    .catchall {:try_start_48 .. :try_end_59} :catchall_86

    if-eq v9, p1, :cond_6d

    :goto_5b
    if-eqz v6, :cond_66

    :try_start_5d
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_ba

    if-eqz p1, :cond_66

    :try_start_63
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_ba

    :catch_66
    :cond_66
    :try_start_66
    invoke-static {v8}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :goto_69
    invoke-static {v7}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_ba

    goto :goto_b8

    :cond_6d
    :try_start_6d
    invoke-static {v0, v2}, Lcom/xiaomi/push/do;->a(Ljava/lang/String;[B)[B

    move-result-object p1

    if-eqz p1, :cond_48

    array-length v2, p1

    if-nez v2, :cond_77

    goto :goto_48

    :cond_77
    new-instance v2, Lcom/xiaomi/push/id;

    invoke-direct {v2}, Lcom/xiaomi/push/id;-><init>()V

    invoke-static {v2, p1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/xiaomi/push/du;->a(Lcom/xiaomi/push/id;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_85} :catch_89
    .catchall {:try_start_6d .. :try_end_85} :catchall_86

    goto :goto_48

    :catchall_86
    move-exception p1

    move-object v2, v8

    goto :goto_95

    :catch_89
    move-object v2, v8

    goto :goto_a9

    :catchall_8b
    move-exception p1

    goto :goto_95

    :catchall_8d
    move-exception p1

    move-object v6, v2

    goto :goto_95

    :catch_90
    move-object v6, v2

    goto :goto_a9

    :catchall_92
    move-exception p1

    move-object v6, v2

    move-object v7, v6

    :goto_95
    if-eqz v6, :cond_a0

    :try_start_97
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_ba

    if-eqz v0, :cond_a0

    :try_start_9d
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_ba

    :catch_a0
    :cond_a0
    :try_start_a0
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_a7
    move-object v6, v2

    move-object v7, v6

    :catch_a9
    :goto_a9
    if-eqz v6, :cond_b4

    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1
    :try_end_af
    .catchall {:try_start_a0 .. :try_end_af} :catchall_ba

    if-eqz p1, :cond_b4

    :try_start_b1
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_ba

    :catch_b4
    :cond_b4
    :try_start_b4
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_69

    :goto_b8
    monitor-exit v5

    return-object v1

    :catchall_ba
    move-exception p1

    monitor-exit v5
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_ba

    throw p1
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v3, "last_upload_data_timestamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Lcom/xiaomi/push/id;)V
    .registers 6

    iget-object v0, p1, Lcom/xiaomi/push/id;->a:Lcom/xiaomi/push/hx;

    sget-object v1, Lcom/xiaomi/push/hx;->b:Lcom/xiaomi/push/hx;

    if-ne v0, v1, :cond_2b

    iget-object v0, p1, Lcom/xiaomi/push/id;->a:Ljava/lang/String;

    const-string v1, "same_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/xiaomi/push/id;->a:J

    const-string v3, "dc_job_result_time_4"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p1, Lcom/xiaomi/push/id;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/push/bo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dc_job_result_4"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2b
    return-void
.end method

.method private a()Z
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->g(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1b
    invoke-direct {p0}, Lcom/xiaomi/push/du;->c()Z

    move-result v0

    if-nez v0, :cond_22

    return v2

    :cond_22
    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-direct {p0}, Lcom/xiaomi/push/du;->b()Z

    move-result v0

    if-nez v0, :cond_31

    return v2

    :cond_31
    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    return v2

    :cond_3a
    return v1
.end method

.method private b()Z
    .registers 10

    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Lcom/xiaomi/push/service/ax;

    sget-object v1, Lcom/xiaomi/push/ia;->L:Lcom/xiaomi/push/ia;

    invoke-virtual {v1}, Lcom/xiaomi/push/ia;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Lcom/xiaomi/push/service/ax;

    sget-object v3, Lcom/xiaomi/push/ia;->M:Lcom/xiaomi/push/ia;

    invoke-virtual {v3}, Lcom/xiaomi/push/ia;->a()I

    move-result v3

    const v4, 0x69780

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v0

    const v3, 0x15180

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/xiaomi/push/du;->a:Landroid/content/SharedPreferences;

    const-wide/16 v4, -0x1

    const-string v6, "last_upload_data_timestamp"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_43

    move v1, v2

    :cond_43
    return v1
.end method

.method private c()Z
    .registers 10

    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Lcom/xiaomi/push/service/ax;

    sget-object v1, Lcom/xiaomi/push/ia;->J:Lcom/xiaomi/push/ia;

    invoke-virtual {v1}, Lcom/xiaomi/push/ia;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    iget-object v0, p0, Lcom/xiaomi/push/du;->a:Lcom/xiaomi/push/service/ax;

    sget-object v3, Lcom/xiaomi/push/ia;->K:Lcom/xiaomi/push/ia;

    invoke-virtual {v3}, Lcom/xiaomi/push/ia;->a()I

    move-result v3

    const v4, 0x3f480

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v0

    const v3, 0x15180

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/xiaomi/push/du;->a:Landroid/content/SharedPreferences;

    const-wide/16 v4, -0x1

    const-string v6, "last_upload_data_timestamp"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_43

    move v1, v2

    :cond_43
    return v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "1"

    return-object v0
.end method

.method public run()V
    .registers 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/push/du;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "push_cdata.data"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/du;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/bi;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x1c7000

    cmp-long v1, v1, v3

    if-lez v1, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_24
    return-void

    :cond_25
    invoke-direct {p0}, Lcom/xiaomi/push/du;->a()Z

    move-result v1

    if-eqz v1, :cond_2c

    return-void

    :cond_2c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_33

    return-void

    :cond_33
    invoke-direct {p0, v0}, Lcom/xiaomi/push/du;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/af;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_7f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xfa0

    if-le v3, v4, :cond_4b

    add-int/lit16 v4, v3, -0xfa0

    invoke-interface {v1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    :cond_4b
    new-instance v3, Lcom/xiaomi/push/io;

    invoke-direct {v3}, Lcom/xiaomi/push/io;-><init>()V

    invoke-virtual {v3, v1}, Lcom/xiaomi/push/io;->a(Ljava/util/List;)Lcom/xiaomi/push/io;

    invoke-static {v3}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a([B)[B

    move-result-object v1

    new-instance v3, Lcom/xiaomi/push/iu;

    const/4 v4, 0x0

    const-string v5, "-1"

    invoke-direct {v3, v5, v4}, Lcom/xiaomi/push/iu;-><init>(Ljava/lang/String;Z)V

    sget-object v4, Lcom/xiaomi/push/if;->q:Lcom/xiaomi/push/if;

    iget-object v4, v4, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-virtual {v3, v1}, Lcom/xiaomi/push/iu;->a([B)Lcom/xiaomi/push/iu;

    invoke-static {}, Lcom/xiaomi/push/dm;->a()Lcom/xiaomi/push/dm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/dm;->a()Lcom/xiaomi/push/dl;

    move-result-object v1

    if-eqz v1, :cond_7c

    sget-object v4, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    invoke-interface {v1, v3, v4, v2}, Lcom/xiaomi/push/dl;->a(Lcom/xiaomi/push/iu;Lcom/xiaomi/push/hv;Lcom/xiaomi/push/ii;)V

    :cond_7c
    invoke-direct {p0}, Lcom/xiaomi/push/du;->a()V

    :cond_7f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
