.class public Lcom/huawei/updatesdk/a/a/b/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/updatesdk/a/a/b/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 3

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;->getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-object p0
.end method

.method private a([B)[B
    .registers 9

    const-string v0, "gzip error!"

    const-string v1, "HttpsUtil"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_2b
    .catchall {:try_start_5 .. :try_end_a} :catchall_29

    :try_start_a
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    array-length v6, p1

    invoke-direct {v5, v3, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_27
    .catchall {:try_start_a .. :try_end_15} :catchall_29

    const/4 v2, 0x0

    :try_start_16
    array-length v5, p1

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_24
    .catchall {:try_start_16 .. :try_end_1d} :catchall_21

    :try_start_1d
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_36

    goto :goto_3a

    :catchall_21
    move-exception p1

    move-object v2, v4

    goto :goto_3f

    :catch_24
    move-exception p1

    move-object v2, v4

    goto :goto_2d

    :catch_27
    move-exception p1

    goto :goto_2d

    :catchall_29
    move-exception p1

    goto :goto_3f

    :catch_2b
    move-exception p1

    move-object v3, v2

    :goto_2d
    :try_start_2d
    invoke-static {v1, v0, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_29

    if-eqz v2, :cond_3a

    :try_start_32
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :goto_3f
    if-eqz v2, :cond_49

    :try_start_41
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v2

    invoke-static {v1, v0, v2}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/huawei/updatesdk/a/a/b/b$a;
    .registers 9

    new-instance v0, Lcom/huawei/updatesdk/a/a/b/b$a;

    invoke-direct {v0}, Lcom/huawei/updatesdk/a/a/b/b$a;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    invoke-static {p1, p5}, Lcom/huawei/updatesdk/a/a/b/b;->a(Ljava/lang/String;Landroid/content/Context;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    iget-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    const/4 p5, 0x1

    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    const/4 p5, 0x0

    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    const/16 p5, 0x1388

    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    const/16 p5, 0x2710

    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    const-string p5, "POST"

    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    const-string p5, "Content-Type"

    const-string v2, "application/x-gzip"

    invoke-virtual {p1, p5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    const-string p5, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p1, p5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    const-string p5, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {p1, p5, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    const-string p5, "User-Agent"

    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/DataOutputStream;

    iget-object p4, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5f
    .catchall {:try_start_6 .. :try_end_5f} :catchall_c8

    :try_start_5f
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/huawei/updatesdk/a/a/b/b;->a([B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    iget-object p2, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-static {v0, p2}, Lcom/huawei/updatesdk/a/a/b/b$a;->a(Lcom/huawei/updatesdk/a/a/b/b$a;I)I

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_88

    new-instance p2, Ljava/io/BufferedInputStream;

    iget-object p3, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_93

    :catchall_86
    move-exception p2

    goto :goto_cb

    :cond_88
    new-instance p2, Ljava/io/BufferedInputStream;

    iget-object p3, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_93
    move-object v1, p2

    new-instance p2, Lcom/huawei/updatesdk/a/a/d/b;

    invoke-direct {p2}, Lcom/huawei/updatesdk/a/a/d/b;-><init>()V

    invoke-static {}, Lcom/huawei/updatesdk/a/a/b/a;->b()Lcom/huawei/updatesdk/a/a/b/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/huawei/updatesdk/a/a/b/a;->a()[B

    move-result-object p3

    :goto_a1
    invoke-virtual {v1, p3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_ac

    invoke-virtual {p2, p3, p4}, Lcom/huawei/updatesdk/a/a/d/b;->a([BI)V

    goto :goto_a1

    :cond_ac
    invoke-static {}, Lcom/huawei/updatesdk/a/a/b/a;->b()Lcom/huawei/updatesdk/a/a/b/a;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/huawei/updatesdk/a/a/b/a;->a([B)V

    invoke-virtual {p2}, Lcom/huawei/updatesdk/a/a/d/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/huawei/updatesdk/a/a/b/b$a;->a(Lcom/huawei/updatesdk/a/a/b/b$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ba
    .catchall {:try_start_5f .. :try_end_ba} :catchall_86

    iget-object p2, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_c1

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c1
    invoke-static {p1}, Lcom/huawei/updatesdk/a/a/d/d;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/huawei/updatesdk/a/a/d/d;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_c8
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    :goto_cb
    iget-object p3, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    if-eqz p3, :cond_d2

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d2
    invoke-static {p1}, Lcom/huawei/updatesdk/a/a/d/d;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/huawei/updatesdk/a/a/d/d;->a(Ljava/io/Closeable;)V

    throw p2
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/a/a/b/b;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-void
.end method
