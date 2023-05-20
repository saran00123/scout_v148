.class public Lcom/huawei/hms/availableupdate/k;
.super Ljava/lang/Object;
.source "HttpRequestHelper.java"

# interfaces
.implements Lcom/huawei/hms/availableupdate/l;


# instance fields
.field public a:Ljavax/net/ssl/HttpsURLConnection;

.field public volatile b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/huawei/hms/availableupdate/k;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/OutputStream;IILandroid/content/Context;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/huawei/hms/availableupdate/j;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0, p1, p5}, Lcom/huawei/hms/availableupdate/k;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    if-nez p1, :cond_14

    const-string p1, "HttpRequestHelper"

    const-string p2, "mConnection is null"

    .line 5
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_66

    .line 25
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    return p1

    .line 26
    :cond_14
    :try_start_14
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    const-string p5, "GET"

    invoke-virtual {p1, p5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-lez p3, :cond_3d

    .line 28
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_66

    const-string p5, "Range"

    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p5, p4}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_3d
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    if-lez p3, :cond_49

    const/16 p4, 0xce

    if-eq p1, p4, :cond_4f

    :cond_49
    if-gtz p3, :cond_62

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_62

    .line 36
    :cond_4f
    iget-object p3, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 37
    new-instance p3, Ljava/io/BufferedInputStream;

    const/16 p4, 0x1000

    invoke-direct {p3, v0, p4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, p3, p2}, Lcom/huawei/hms/availableupdate/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 38
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_62
    .catchall {:try_start_21 .. :try_end_62} :catchall_66

    .line 42
    :cond_62
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return p1

    :catchall_66
    move-exception p1

    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 43
    throw p1
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/huawei/hms/availableupdate/k;->b:I

    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/huawei/hms/availableupdate/j;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 87
    new-array v0, v0, [B

    .line 90
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_1d

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 93
    iget v1, p0, Lcom/huawei/hms/availableupdate/k;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    goto :goto_4

    .line 94
    :cond_15
    new-instance p1, Lcom/huawei/hms/availableupdate/j;

    const-string p2, "HTTP(s) request was canceled."

    invoke-direct {p1, p2}, Lcom/huawei/hms/availableupdate/j;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget v0, p0, Lcom/huawei/hms/availableupdate/k;->b:I

    const-string v1, "HttpRequestHelper"

    if-nez v0, :cond_b

    const-string v0, "Not allowed to repeat open http(s) connection."

    .line 45
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_b
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-nez p1, :cond_1c

    const-string p1, "urlConnection is null"

    .line 50
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_1c
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_86

    .line 54
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iput-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    .line 56
    :try_start_24
    invoke-static {p2}, Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;->getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 58
    iget-object p2, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 60
    :cond_2f
    iget-object p2, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_34
    .catch Ljava/security/KeyManagementException; {:try_start_24 .. :try_end_34} :catch_65
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_34} :catch_63
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_61
    .catch Ljava/security/cert/CertificateException; {:try_start_24 .. :try_end_34} :catch_5f
    .catch Ljava/security/KeyStoreException; {:try_start_24 .. :try_end_34} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_34} :catch_5b
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_34} :catch_59

    .line 72
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    const/16 p2, 0x7530

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 73
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 74
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 75
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 76
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 77
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 80
    iput v0, p0, Lcom/huawei/hms/availableupdate/k;->b:I

    return-void

    :catch_59
    move-exception p1

    goto :goto_66

    :catch_5b
    move-exception p1

    goto :goto_66

    :catch_5d
    move-exception p1

    goto :goto_66

    :catch_5f
    move-exception p1

    goto :goto_66

    :catch_61
    move-exception p1

    goto :goto_66

    :catch_63
    move-exception p1

    goto :goto_66

    :catch_65
    move-exception p1

    .line 81
    :goto_66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to new TLSSocketFactory instance."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to create SSLSocketFactory."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_86
    const-string p1, "current request is http not allow connection"

    .line 85
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/huawei/hms/availableupdate/k;->b:I

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/k;->a:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_a

    .line 4
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_a
    return-void
.end method
