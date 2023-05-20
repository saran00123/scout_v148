.class public Lcom/xiaomi/push/service/bx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/bx;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/push/hz;)V
    .registers 4

    invoke-virtual {p1}, Lcom/xiaomi/push/hz;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/bw;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-static {p0}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/by;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/push/service/by;-><init>(Landroid/content/Context;Lcom/xiaomi/push/hz;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ak;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)[B
    .registers 5

    invoke-static {p0}, Lcom/xiaomi/push/q;->a(Landroid/content/Context;)Lcom/xiaomi/push/q;

    move-result-object v0

    const-string v1, "td_key"

    const-string v2, "mipush"

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaomi/push/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/xiaomi/push/bo;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/push/q;->a(Landroid/content/Context;)Lcom/xiaomi/push/q;

    move-result-object p0

    invoke-virtual {p0, v2, v1, v0}, Lcom/xiaomi/push/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    invoke-static {v0}, Lcom/xiaomi/push/service/bx;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 3

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

.method static synthetic b(Landroid/content/Context;Lcom/xiaomi/push/hz;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/bx;->c(Landroid/content/Context;Lcom/xiaomi/push/hz;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/xiaomi/push/hz;)V
    .registers 9

    invoke-static {p0}, Lcom/xiaomi/push/service/bx;->a(Landroid/content/Context;)[B

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-static {p1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/h;->b([B[B)[B

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_a2
    .catchall {:try_start_5 .. :try_end_d} :catchall_9f

    const-string v2, "  ts:"

    if-eqz v0, :cond_7f

    :try_start_11
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_17

    goto/16 :goto_7f

    :cond_17
    array-length v3, v0

    const/16 v5, 0x2800

    if-le v3, v5, :cond_45

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TinyData write to cache file failed case too much data content item:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/hz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3b
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3e} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3e} :catch_a2
    .catchall {:try_start_11 .. :try_end_3e} :catchall_9f

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return-void

    :cond_45
    :try_start_45
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "tiny_data.data"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_5a} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5a} :catch_a2
    .catchall {:try_start_45 .. :try_end_5a} :catchall_9f

    :try_start_5a
    array-length v2, v0

    invoke-static {v2}, Lcom/xiaomi/push/ae;->a(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_68} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_68} :catch_75
    .catchall {:try_start_5a .. :try_end_68} :catchall_70

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto/16 :goto_da

    :catchall_70
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto/16 :goto_dc

    :catch_75
    move-exception v0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_a4

    :catch_7a
    move-exception v0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_bc

    :cond_7f
    :goto_7f
    :try_start_7f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TinyData write to cache file failed case encryption fail item:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/hz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_9e} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9e} :catch_a2
    .catchall {:try_start_7f .. :try_end_9e} :catchall_9f

    goto :goto_3b

    :catchall_9f
    move-exception p0

    move-object v0, v1

    goto :goto_dc

    :catch_a2
    move-exception p0

    move-object v0, v1

    :goto_a4
    :try_start_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TinyData write to cache file  failed item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/hz;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d1

    :catch_ba
    move-exception p0

    move-object v0, v1

    :goto_bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TinyData write to cache file failed cause io exception item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/hz;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_d1
    invoke-static {p1, p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d4
    .catchall {:try_start_a4 .. :try_end_d4} :catchall_db

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :goto_da
    return-void

    :catchall_db
    move-exception p0

    :goto_dc
    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p0
.end method
