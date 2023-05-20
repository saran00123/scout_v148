.class public Lcom/meizu/cloud/pushsdk/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "b"

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/meizu/cloud/pushsdk/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/a/a/b;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "sun.net.http.allowRestrictedHeaders"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/a/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/a/a/b;
    .registers 3

    sget-object v0, Lcom/meizu/cloud/pushsdk/a/a/b;->c:Lcom/meizu/cloud/pushsdk/a/a/b;

    if-nez v0, :cond_17

    sget-object v0, Lcom/meizu/cloud/pushsdk/a/a/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/meizu/cloud/pushsdk/a/a/b;->c:Lcom/meizu/cloud/pushsdk/a/a/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/meizu/cloud/pushsdk/a/a/b;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/a/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/cloud/pushsdk/a/a/b;->c:Lcom/meizu/cloud/pushsdk/a/a/b;

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
    sget-object p0, Lcom/meizu/cloud/pushsdk/a/a/b;->c:Lcom/meizu/cloud/pushsdk/a/a/b;

    return-object p0
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    :cond_8
    invoke-static {}, Lcom/meizu/cloud/pushsdk/a/a/a;->a()Lcom/meizu/cloud/pushsdk/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/a/a/a;->c()[B

    move-result-object v0

    if-eqz v0, :cond_36

    array-length v1, v0

    if-lez v1, :cond_36

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sget-object v0, Lcom/meizu/cloud/pushsdk/a/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach x_s_key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-S-Key"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    :cond_36
    invoke-static {}, Lcom/meizu/cloud/pushsdk/a/a/a;->a()Lcom/meizu/cloud/pushsdk/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/a/a/a;->b()[B

    move-result-object v0

    if-eqz v0, :cond_6b

    array-length v0, v0

    if-lez v0, :cond_6b

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/meizu/cloud/pushsdk/a/a/a;->a()Lcom/meizu/cloud/pushsdk/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/a/a/a;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sget-object v1, Lcom/meizu/cloud/pushsdk/a/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach x_a_key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-A-Key"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    :goto_6b
    return-object p1
.end method

.method private a(Ljava/net/HttpURLConnection;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_17

    :try_start_a
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    :try_start_10
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    return-void

    :catchall_14
    move-exception p1

    move-object v0, v1

    goto :goto_18

    :catchall_17
    move-exception p1

    :goto_18
    if-eqz v0, :cond_1d

    :try_start_1a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    throw p1
.end method

.method private a(Ljava/net/URLConnection;)V
    .registers 5

    :try_start_0
    const-string v0, "X-S-Key"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/meizu/cloud/pushsdk/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get x_s_key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/meizu/cloud/pushsdk/a/a/a;->a()Lcom/meizu/cloud/pushsdk/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/a/a/a;->a(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    :cond_10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    :try_start_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    return-object p1

    :catchall_18
    move-exception p1

    :try_start_19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1c

    :catch_1c
    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/a/a/c;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/meizu/cloud/pushsdk/a/a/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_138

    invoke-static {}, Lcom/meizu/cloud/pushsdk/a/a/a;->a()Lcom/meizu/cloud/pushsdk/a/a/a;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/meizu/cloud/pushsdk/a/a/a;->a([B)[B

    move-result-object p3

    if-eqz p3, :cond_1c

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    :goto_1d
    :try_start_1d
    new-instance p3, Ljava/net/URL;

    const-string v2, "https://norma-external-collect.meizu.com/push/android/external/add.do"

    invoke-direct {p3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_24} :catch_134

    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    invoke-virtual {p3, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p3, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 p1, 0x7530

    invoke-virtual {p3, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p3, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {p3, p1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {p3, p1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p3, p1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p3, p1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_88

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_88

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, v2, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    :cond_88
    if-eqz v1, :cond_91

    :try_start_8a
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/meizu/cloud/pushsdk/a/a/b;->a(Ljava/net/HttpURLConnection;[B)V

    :cond_91
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    sget-object p2, Lcom/meizu/cloud/pushsdk/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/meizu/cloud/pushsdk/a/a/b;->a(Ljava/net/URLConnection;)V

    invoke-direct {p0, p3}, Lcom/meizu/cloud/pushsdk/a/a/b;->b(Ljava/net/URLConnection;)V

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_b5} :catch_10b
    .catchall {:try_start_8a .. :try_end_b5} :catchall_108

    if-eqz p2, :cond_ea

    :try_start_b7
    invoke-direct {p0, p2}, Lcom/meizu/cloud/pushsdk/a/a/b;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz v1, :cond_eb

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    sget-object v3, Lcom/meizu/cloud/pushsdk/a/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "body = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_d8} :catch_e8
    .catchall {:try_start_b7 .. :try_end_d8} :catchall_12a

    :try_start_d8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_e2
    .catch Lorg/json/JSONException; {:try_start_d8 .. :try_end_e2} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e2} :catch_e8
    .catchall {:try_start_d8 .. :try_end_e2} :catchall_12a

    goto :goto_eb

    :catch_e3
    move-exception v2

    :try_start_e4
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_eb

    :catch_e8
    move-exception p1

    goto :goto_10d

    :cond_ea
    move-object v1, v0

    :cond_eb
    :goto_eb
    if-eqz v1, :cond_f9

    new-instance v2, Lcom/meizu/cloud/pushsdk/a/a/c;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, p1, v3}, Lcom/meizu/cloud/pushsdk/a/a/c;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    goto :goto_ff

    :cond_f9
    new-instance v1, Lcom/meizu/cloud/pushsdk/a/a/c;

    invoke-direct {v1, p1, v0}, Lcom/meizu/cloud/pushsdk/a/a/c;-><init>(ILjava/lang/String;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_fe} :catch_e8
    .catchall {:try_start_e4 .. :try_end_fe} :catchall_12a

    move-object v0, v1

    :goto_ff
    if-eqz p2, :cond_104

    :goto_101
    :try_start_101
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_104

    :catch_104
    :cond_104
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_138

    :catchall_108
    move-exception p1

    move-object p2, v0

    goto :goto_12b

    :catch_10b
    move-exception p1

    move-object p2, v0

    :goto_10d
    :try_start_10d
    sget-object v1, Lcom/meizu/cloud/pushsdk/a/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realStringPartRequest error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_127
    .catchall {:try_start_10d .. :try_end_127} :catchall_12a

    if-eqz p2, :cond_104

    goto :goto_101

    :catchall_12a
    move-exception p1

    :goto_12b
    if-eqz p2, :cond_130

    :try_start_12d
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_130} :catch_130

    :catch_130
    :cond_130
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1

    :catch_134
    move-exception p1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_138
    :goto_138
    return-object v0
.end method

.method private b(Ljava/net/URLConnection;)V
    .registers 5

    :try_start_0
    const-string v0, "Key-Timeout"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/meizu/cloud/pushsdk/a/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get keyTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/a/a/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/meizu/cloud/pushsdk/a/a/c;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/meizu/cloud/pushsdk/a/a/b;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/a/a/b;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/a/a/c;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_e

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method
