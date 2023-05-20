.class public Lcom/huawei/hms/framework/network/grs/g/h;
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
.field private static final i:Ljava/lang/String; = "h"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/g/a;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/e/c;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/huawei/hms/framework/network/grs/g/b;-><init>(Ljava/lang/String;ILcom/huawei/hms/framework/network/grs/g/a;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/e/c;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/huawei/hms/framework/network/grs/g/e;
    .registers 18

    move-object/from16 v1, p0

    sget-object v0, Lcom/huawei/hms/framework/network/grs/g/h;->i:Ljava/lang/String;

    const-string v2, "Post call execute"

    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_9e

    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/b;->b()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/b;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/huawei/hms/framework/network/grs/h/f/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    const/4 v6, 0x0

    if-nez v0, :cond_2e

    sget-object v0, Lcom/huawei/hms/framework/network/grs/g/h;->i:Ljava/lang/String;

    const-string v7, "create HttpsURLConnection instance by url return null."

    invoke-static {v0, v7}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v6

    :cond_2e
    const-string v7, "Content-Type"

    const-string v8, "application/json; charset=UTF-8"

    invoke-virtual {v0, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/b;->f()Lcom/huawei/hms/framework/network/grs/e/c;

    move-result-object v8

    const-string v9, "services"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v10
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_64} :catch_9c

    const/16 v7, 0xc8

    if-ne v10, v7, :cond_7a

    :try_start_68
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hms/framework/common/IoUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v7
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_75

    :try_start_70
    invoke-static {v6}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    move-object v6, v7

    goto :goto_7a

    :catchall_75
    move-exception v0

    invoke-static {v6}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    throw v0

    :cond_7a
    :goto_7a
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    if-nez v6, :cond_90

    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v12, v0

    goto :goto_91

    :cond_90
    move-object v12, v6

    :goto_91
    new-instance v0, Lcom/huawei/hms/framework/network/grs/g/e;

    sub-long v13, v7, v4

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/huawei/hms/framework/network/grs/g/e;-><init>(ILjava/util/Map;[BJ)V

    iput-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_9b} :catch_9c

    goto :goto_b7

    :catch_9c
    move-exception v0

    goto :goto_a0

    :catch_9e
    move-exception v0

    move-wide v4, v2

    :goto_a0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sget-object v8, Lcom/huawei/hms/framework/network/grs/g/h;->i:Ljava/lang/String;

    const-string v9, "RequestCallableV2 run task catch IOException"

    invoke-static {v8, v9, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v8, Lcom/huawei/hms/framework/network/grs/g/e;

    sub-long/2addr v6, v4

    invoke-direct {v8, v0, v6, v7}, Lcom/huawei/hms/framework/network/grs/g/e;-><init>(Ljava/lang/Exception;J)V

    iput-object v8, v1, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    :goto_b7
    move-wide v4, v15

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/huawei/hms/framework/network/grs/g/e;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/b;->d()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/huawei/hms/framework/network/grs/g/e;->a(I)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-virtual {v0, v2, v3}, Lcom/huawei/hms/framework/network/grs/g/e;->b(J)V

    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-virtual {v0, v4, v5}, Lcom/huawei/hms/framework/network/grs/g/e;->a(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/b;->a()Lcom/huawei/hms/framework/network/grs/g/a;

    move-result-object v0

    if-eqz v0, :cond_e3

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/framework/network/grs/g/b;->a()Lcom/huawei/hms/framework/network/grs/g/a;

    move-result-object v0

    iget-object v2, v1, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-interface {v0, v2}, Lcom/huawei/hms/framework/network/grs/g/a;->a(Lcom/huawei/hms/framework/network/grs/g/e;)V

    :cond_e3
    iget-object v0, v1, Lcom/huawei/hms/framework/network/grs/g/b;->a:Lcom/huawei/hms/framework/network/grs/g/e;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/h;->call()Lcom/huawei/hms/framework/network/grs/g/e;

    move-result-object v0

    return-object v0
.end method
