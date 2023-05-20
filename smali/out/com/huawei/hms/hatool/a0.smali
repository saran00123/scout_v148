.class public abstract Lcom/huawei/hms/hatool/a0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hatool/a0$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;[BLjava/util/Map;)Lcom/huawei/hms/hatool/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/hms/hatool/b0;"
        }
    .end annotation

    const-string v0, "POST"

    invoke-static {p0, p1, p2, v0}, Lcom/huawei/hms/hatool/a0;->a(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)Lcom/huawei/hms/hatool/b0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)Lcom/huawei/hms/hatool/b0;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hms/hatool/b0;"
        }
    .end annotation

    const-string v0, "hmsSdk"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_12

    new-instance p0, Lcom/huawei/hms/hatool/b0;

    const/16 p1, -0x64

    invoke-direct {p0, p1, v2}, Lcom/huawei/hms/hatool/b0;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_12
    const/16 v1, -0x66

    const/16 v3, -0x65

    const/4 v4, 0x0

    :try_start_17
    array-length v5, p1

    invoke-static {p0, v5, p2, p3}, Lcom/huawei/hms/hatool/a0;->a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_1c
    .catch Lcom/huawei/hms/hatool/a0$a; {:try_start_17 .. :try_end_1c} :catch_11c
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1c} :catch_103
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_17 .. :try_end_1c} :catch_ea
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_17 .. :try_end_1c} :catch_d1
    .catch Ljava/net/ConnectException; {:try_start_17 .. :try_end_1c} :catch_b8
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_1c} :catch_9f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_86
    .catchall {:try_start_17 .. :try_end_1c} :catchall_81

    if-nez p0, :cond_2f

    :try_start_1e
    new-instance p1, Lcom/huawei/hms/hatool/b0;

    invoke-direct {p1, v3, v2}, Lcom/huawei/hms/hatool/b0;-><init>(ILjava/lang/String;)V
    :try_end_23
    .catch Lcom/huawei/hms/hatool/a0$a; {:try_start_1e .. :try_end_23} :catch_7e
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_23} :catch_7b
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1e .. :try_end_23} :catch_78
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1e .. :try_end_23} :catch_75
    .catch Ljava/net/ConnectException; {:try_start_1e .. :try_end_23} :catch_73
    .catch Ljava/net/UnknownHostException; {:try_start_1e .. :try_end_23} :catch_71
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_6f
    .catchall {:try_start_1e .. :try_end_23} :catchall_6b

    invoke-static {v4}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_2e

    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/net/HttpURLConnection;)V

    :cond_2e
    return-object p1

    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_33
    .catch Lcom/huawei/hms/hatool/a0$a; {:try_start_2f .. :try_end_33} :catch_7e
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_33} :catch_7b
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2f .. :try_end_33} :catch_78
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2f .. :try_end_33} :catch_75
    .catch Ljava/net/ConnectException; {:try_start_2f .. :try_end_33} :catch_73
    .catch Ljava/net/UnknownHostException; {:try_start_2f .. :try_end_33} :catch_71
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_6f
    .catchall {:try_start_2f .. :try_end_33} :catchall_6b

    :try_start_33
    new-instance p3, Ljava/io/BufferedOutputStream;

    invoke-direct {p3, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_38
    .catch Lcom/huawei/hms/hatool/a0$a; {:try_start_33 .. :try_end_38} :catch_11e
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_38} :catch_105
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_33 .. :try_end_38} :catch_ec
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_33 .. :try_end_38} :catch_d3
    .catch Ljava/net/ConnectException; {:try_start_33 .. :try_end_38} :catch_ba
    .catch Ljava/net/UnknownHostException; {:try_start_33 .. :try_end_38} :catch_a1
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_88
    .catchall {:try_start_33 .. :try_end_38} :catchall_68

    :try_start_38
    invoke-virtual {p3, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_42
    .catch Lcom/huawei/hms/hatool/a0$a; {:try_start_38 .. :try_end_42} :catch_11f
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_42} :catch_106
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_38 .. :try_end_42} :catch_ed
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_38 .. :try_end_42} :catch_d4
    .catch Ljava/net/ConnectException; {:try_start_38 .. :try_end_42} :catch_bb
    .catch Ljava/net/UnknownHostException; {:try_start_38 .. :try_end_42} :catch_a2
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_42} :catch_89
    .catchall {:try_start_38 .. :try_end_42} :catchall_135

    :try_start_42
    invoke-static {p0}, Lcom/huawei/hms/hatool/a0;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/huawei/hms/hatool/b0;

    invoke-direct {v4, p1, v1}, Lcom/huawei/hms/hatool/b0;-><init>(ILjava/lang/String;)V
    :try_end_4b
    .catch Lcom/huawei/hms/hatool/a0$a; {:try_start_42 .. :try_end_4b} :catch_11f
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_4b} :catch_65
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_42 .. :try_end_4b} :catch_62
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_42 .. :try_end_4b} :catch_5f
    .catch Ljava/net/ConnectException; {:try_start_42 .. :try_end_4b} :catch_5c
    .catch Ljava/net/UnknownHostException; {:try_start_42 .. :try_end_4b} :catch_59
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4b} :catch_57
    .catchall {:try_start_42 .. :try_end_4b} :catchall_135

    invoke-static {p3}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_56

    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/net/HttpURLConnection;)V

    :cond_56
    return-object v4

    :catch_57
    move v1, p1

    goto :goto_89

    :catch_59
    move v1, p1

    goto/16 :goto_a2

    :catch_5c
    move v1, p1

    goto/16 :goto_bb

    :catch_5f
    move v1, p1

    goto/16 :goto_d4

    :catch_62
    move v1, p1

    goto/16 :goto_ed

    :catch_65
    move v1, p1

    goto/16 :goto_106

    :catchall_68
    move-exception p1

    goto/16 :goto_137

    :catchall_6b
    move-exception p1

    move-object p2, v4

    goto/16 :goto_137

    :catch_6f
    move-object p2, v4

    goto :goto_88

    :catch_71
    move-object p2, v4

    goto :goto_a1

    :catch_73
    move-object p2, v4

    goto :goto_ba

    :catch_75
    move-object p2, v4

    goto/16 :goto_d3

    :catch_78
    move-object p2, v4

    goto/16 :goto_ec

    :catch_7b
    move-object p2, v4

    goto/16 :goto_105

    :catch_7e
    move-object p2, v4

    goto/16 :goto_11e

    :catchall_81
    move-exception p1

    move-object p0, v4

    move-object p2, p0

    goto/16 :goto_137

    :catch_86
    move-object p0, v4

    move-object p2, p0

    :catch_88
    :goto_88
    move-object p3, v4

    :catch_89
    :goto_89
    :try_start_89
    const-string p1, "events PostRequest(byte[]): IOException occurred."

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/hatool/b0;

    invoke-direct {p1, v1, v2}, Lcom/huawei/hms/hatool/b0;-><init>(ILjava/lang/String;)V
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_135

    invoke-static {p3}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_9e

    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/net/HttpURLConnection;)V

    :cond_9e
    return-object p1

    :catch_9f
    move-object p0, v4

    move-object p2, p0

    :catch_a1
    :goto_a1
    move-object p3, v4

    :catch_a2
    :goto_a2
    :try_start_a2
    const-string p1, "No address associated with hostname or No network"

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/hatool/b0;

    invoke-direct {p1, v1, v2}, Lcom/huawei/hms/hatool/b0;-><init>(ILjava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_135

    invoke-static {p3}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_b7

    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/net/HttpURLConnection;)V

    :cond_b7
    return-object p1

    :catch_b8
    move-object p0, v4

    move-object p2, p0

    :catch_ba
    :goto_ba
    move-object p3, v4

    :catch_bb
    :goto_bb
    :try_start_bb
    const-string p1, "Network is unreachable or Connection refused"

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/hatool/b0;

    invoke-direct {p1, v1, v2}, Lcom/huawei/hms/hatool/b0;-><init>(ILjava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_bb .. :try_end_c5} :catchall_135

    invoke-static {p3}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_d0

    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/net/HttpURLConnection;)V

    :cond_d0
    return-object p1

    :catch_d1
    move-object p0, v4

    move-object p2, p0

    :catch_d3
    :goto_d3
    move-object p3, v4

    :catch_d4
    :goto_d4
    :try_start_d4
    const-string p1, "Chain validation failed,Certificate expired"

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/hatool/b0;

    invoke-direct {p1, v1, v2}, Lcom/huawei/hms/hatool/b0;-><init>(ILjava/lang/String;)V
    :try_end_de
    .catchall {:try_start_d4 .. :try_end_de} :catchall_135

    invoke-static {p3}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_e9

    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/net/HttpURLConnection;)V

    :cond_e9
    return-object p1

    :catch_ea
    move-object p0, v4

    move-object p2, p0

    :catch_ec
    :goto_ec
    move-object p3, v4

    :catch_ed
    :goto_ed
    :try_start_ed
    const-string p1, "Certificate has not been verified,Request is restricted!"

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/hatool/b0;

    invoke-direct {p1, v1, v2}, Lcom/huawei/hms/hatool/b0;-><init>(ILjava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_ed .. :try_end_f7} :catchall_135

    invoke-static {p3}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_102

    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/net/HttpURLConnection;)V

    :cond_102
    return-object p1

    :catch_103
    move-object p0, v4

    move-object p2, p0

    :catch_105
    :goto_105
    move-object p3, v4

    :catch_106
    :goto_106
    :try_start_106
    const-string p1, "SecurityException with HttpClient. Please check INTERNET permission."

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/hatool/b0;

    invoke-direct {p1, v1, v2}, Lcom/huawei/hms/hatool/b0;-><init>(ILjava/lang/String;)V
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_135

    invoke-static {p3}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_11b

    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/net/HttpURLConnection;)V

    :cond_11b
    return-object p1

    :catch_11c
    move-object p0, v4

    move-object p2, p0

    :catch_11e
    :goto_11e
    move-object p3, v4

    :catch_11f
    :try_start_11f
    const-string p1, "PostRequest(byte[]): No ssl socket factory set!"

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/hatool/b0;

    invoke-direct {p1, v3, v2}, Lcom/huawei/hms/hatool/b0;-><init>(ILjava/lang/String;)V
    :try_end_129
    .catchall {:try_start_11f .. :try_end_129} :catchall_135

    invoke-static {p3}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_134

    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/net/HttpURLConnection;)V

    :cond_134
    return-object p1

    :catchall_135
    move-exception p1

    move-object v4, p3

    :goto_137
    invoke-static {v4}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_142

    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/net/HttpURLConnection;)V

    :cond_142
    throw p1
.end method

.method public static a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "hmsSdk"

    const-string p1, "CreateConnection: invalid urlPath."

    invoke-static {p0, p1}, Lcom/huawei/hms/hatool/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_f
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-static {p0}, Lcom/huawei/hms/hatool/a0;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p3, 0x3a98

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=UTF-8"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Connection"

    const-string v0, "close"

    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_79

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-ge p1, p3, :cond_4c

    goto :goto_79

    :cond_4c
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_54
    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_54

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    goto :goto_54

    :cond_6f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :cond_79
    :goto_79
    return-object p0
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .registers 4

    const-string v0, "hmsSdk"

    instance-of v1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_39

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    :try_start_9
    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;->getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;

    move-result-object v1
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_11} :catch_1e
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_11} :catch_1b
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_11} :catch_18
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_11} :catch_12

    goto :goto_23

    :catch_12
    const-string v2, "getSocketFactory(): Illegal Access Exception "

    goto :goto_20

    :catch_15
    const-string v2, "getSocketFactory(): IO Exception!"

    goto :goto_20

    :catch_18
    const-string v2, "getSocketFactory(): General Security Exception"

    goto :goto_20

    :catch_1b
    const-string v2, "getSocketFactory(): Key Store exception"

    goto :goto_20

    :catch_1e
    const-string v2, "getSocketFactory(): Algorithm Exception!"

    :goto_20
    invoke-static {v0, v2}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    if-eqz v1, :cond_31

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/huawei/secure/android/common/ssl/hostname/StrictHostnameVerifier;

    invoke-direct {v0}, Lcom/huawei/secure/android/common/ssl/hostname/StrictHostnameVerifier;-><init>()V

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_39

    :cond_31
    new-instance p0, Lcom/huawei/hms/hatool/a0$a;

    const-string v0, "No ssl socket factory set"

    invoke-direct {p0, v0}, Lcom/huawei/hms/hatool/a0$a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    :goto_39
    return-void
.end method

.method public static b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_f
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    invoke-static {v0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_d
    move-exception p0

    goto :goto_2f

    :catch_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_d

    const-string v1, "hmsSdk"

    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When Response Content From Connection inputStream operation exception! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_d

    invoke-static {v0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    const-string p0, ""

    return-object p0

    :goto_2f
    invoke-static {v0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    throw p0
.end method
