.class public Lcom/huawei/hms/framework/network/grs/h/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "c"


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :try_start_10
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/16 p1, 0x2000

    new-array p1, p1, [B

    :goto_1c
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_27

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1c

    :cond_27
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {p1, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_35} :catch_3e
    .catchall {:try_start_10 .. :try_end_35} :catchall_3c

    invoke-static {v2}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    return-object p1

    :catchall_3c
    move-exception p0

    goto :goto_51

    :catch_3e
    :try_start_3e
    sget-object p1, Lcom/huawei/hms/framework/network/grs/h/c;->a:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_3c

    const-string v4, "local config file is not exist.filename is {%s}"

    const/4 v5, 0x1

    :try_start_43
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-static {p1, v4, v5}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_3c

    invoke-static {v2}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    return-object v1

    :goto_51
    invoke-static {v2}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    throw p0
.end method
