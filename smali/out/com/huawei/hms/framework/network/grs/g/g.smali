.class public Lcom/huawei/hms/framework/network/grs/g/g;
.super Lcom/huawei/hms/framework/network/grs/g/b;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/framework/network/grs/g/b;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/huawei/hms/framework/network/grs/g/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "g"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/g/a;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/huawei/hms/framework/network/grs/g/b;-><init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/g/a;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/e/c;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/huawei/hms/framework/network/grs/g/e;
    .registers 16

    sget-object v0, Lcom/huawei/hms/framework/network/grs/g/g;->i:Ljava/lang/String;

    const-string v1, "Get call execute"

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_72

    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hms/framework/network/grs/h/f/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2c

    sget-object v4, Lcom/huawei/hms/framework/network/grs/g/g;->i:Ljava/lang/String;

    const-string v6, "create HttpsURLConnection instance by url return null."

    invoke-static {v4, v6}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v5

    :cond_2c
    const-string v6, "GET"

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v8
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_38} :catch_70

    const/16 v6, 0xc8

    if-ne v8, v6, :cond_4e

    :try_start_3c
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hms/framework/common/IoUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v6
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_49

    :try_start_44
    invoke-static {v5}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    move-object v5, v6

    goto :goto_4e

    :catchall_49
    move-exception v4

    invoke-static {v5}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    throw v4

    :cond_4e
    :goto_4e
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    if-nez v5, :cond_64

    const/4 v4, 0x0

    new-array v4, v4, [B

    move-object v10, v4

    goto :goto_65

    :cond_64
    move-object v10, v5

    :goto_65
    new-instance v4, Lcom/huawei/hms/framework/network/grs/g/e;

    sub-long v11, v6, v2

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/huawei/hms/framework/network/grs/g/e;-><init>(ILjava/util/Map;[BJ)V

    iput-object v4, p0, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_6f} :catch_70

    goto :goto_8b

    :catch_70
    move-exception v4

    goto :goto_74

    :catch_72
    move-exception v4

    move-wide v2, v0

    :goto_74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sget-object v7, Lcom/huawei/hms/framework/network/grs/g/g;->i:Ljava/lang/String;

    const-string v8, "RequestCallable run task catch IOException"

    invoke-static {v7, v8, v4}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v7, Lcom/huawei/hms/framework/network/grs/g/e;

    sub-long/2addr v5, v2

    invoke-direct {v7, v4, v5, v6}, Lcom/huawei/hms/framework/network/grs/g/e;-><init>(Ljava/lang/Exception;J)V

    iput-object v7, p0, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    :goto_8b
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/hms/framework/network/grs/g/e;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/b;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/huawei/hms/framework/network/grs/g/e;->a(I)V

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/framework/network/grs/g/e;->b(J)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-virtual {v0, v13, v14}, Lcom/huawei/hms/framework/network/grs/g/e;->a(J)V

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/b;->a()Lcom/huawei/hms/framework/network/grs/g/a;

    move-result-object v0

    if-eqz v0, :cond_b6

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/b;->a()Lcom/huawei/hms/framework/network/grs/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-interface {v0, v1}, Lcom/huawei/hms/framework/network/grs/g/a;->a(Lcom/huawei/hms/framework/network/grs/g/e;)V

    :cond_b6
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/g;->call()Lcom/huawei/hms/framework/network/grs/g/e;

    move-result-object v0

    return-object v0
.end method
