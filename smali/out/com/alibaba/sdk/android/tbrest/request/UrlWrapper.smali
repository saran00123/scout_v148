.class public Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;
.super Ljava/lang/Object;
.source "UrlWrapper.java"


# static fields
.field private static final MAX_CONNECTION_TIME_OUT:I = 0x2710

.field private static final MAX_READ_CONNECTION_STREAM_TIME_OUT:I = 0xea60

.field public static mErrorCode:I

.field private static mRestSslSocketFactory:Lcom/alibaba/sdk/android/tbrest/request/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    .line 44
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;
    .registers 11

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRequest use adashx, bytes length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_f

    const-string v1, "0"

    goto :goto_14

    :cond_f
    array-length v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;-><init>()V

    .line 54
    :try_start_23
    iget-object v1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->openHttp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 55
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_36

    .line 57
    :cond_31
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    :goto_36
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 61
    instance-of v2, p2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_3e
    .catch Ljava/net/MalformedURLException; {:try_start_23 .. :try_end_3e} :catch_1fb
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3e} :catch_1fb

    if-eqz v2, :cond_61

    .line 63
    :try_start_40
    sget-object v2, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->mRestSslSocketFactory:Lcom/alibaba/sdk/android/tbrest/request/a;

    if-nez v2, :cond_59

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 64
    new-instance v2, Lcom/alibaba/sdk/android/tbrest/request/a;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/sdk/android/tbrest/request/a;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->mRestSslSocketFactory:Lcom/alibaba/sdk/android/tbrest/request/a;

    .line 66
    :cond_59
    move-object v1, p2

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v2, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->mRestSslSocketFactory:Lcom/alibaba/sdk/android/tbrest/request/a;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_61
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_61} :catch_61
    .catch Ljava/net/MalformedURLException; {:try_start_40 .. :try_end_61} :catch_1fb
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_61} :catch_1fb

    :catch_61
    :cond_61
    if-eqz p2, :cond_1fb

    const/4 v1, 0x1

    .line 78
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 79
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    :try_start_6a
    const-string v2, "POST"

    .line 81
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/net/ProtocolException; {:try_start_6a .. :try_end_6f} :catch_1fb

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v3, 0x2710

    .line 86
    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xea60

    .line 87
    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 88
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    .line 89
    invoke-virtual {p2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Charset"

    const-string v4, "UTF-8"

    .line 90
    invoke-virtual {p2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string/jumbo v3, "x-k"

    .line 94
    invoke-virtual {p2, v3, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_9b
    :try_start_9b
    iget-object p0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appSecret:Ljava/lang/String;
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9d} :catch_100

    const-string/jumbo v3, "x-t"

    const-string/jumbo v4, "x-s"

    const-string/jumbo v5, "signValue:"

    if-eqz p0, :cond_d6

    .line 101
    :try_start_a8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d6

    .line 102
    new-instance v6, Lcom/alibaba/sdk/android/tbrest/a/a;

    invoke-direct {v6, p1, p0, v1}, Lcom/alibaba/sdk/android/tbrest/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    invoke-static {p3}, Lcom/alibaba/sdk/android/tbrest/utils/MD5Utils;->getMd5Hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/alibaba/sdk/android/tbrest/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2, v4, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "2"

    .line 106
    invoke-virtual {p2, v3, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_108

    :cond_d6
    const-string p0, ""

    .line 109
    new-instance v1, Lcom/alibaba/sdk/android/tbrest/a/a;

    invoke-direct {v1, p1, p0, v2}, Lcom/alibaba/sdk/android/tbrest/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    invoke-static {p3}, Lcom/alibaba/sdk/android/tbrest/utils/MD5Utils;->getMd5Hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/sdk/android/tbrest/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2, v4, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "3"

    .line 113
    invoke-virtual {p2, v3, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_ff} :catch_100

    goto :goto_108

    :catch_100
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 120
    :goto_108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const/4 v1, 0x0

    .line 123
    :try_start_10d
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz p3, :cond_131

    .line 124
    array-length v3, p3

    if-lez v3, :cond_131

    .line 125
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11e
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_10d .. :try_end_11e} :catch_1ce
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_11e} :catch_1b0
    .catchall {:try_start_10d .. :try_end_11e} :catchall_1ae

    .line 126
    :try_start_11e
    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 127
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_124
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_11e .. :try_end_124} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_124} :catch_129
    .catchall {:try_start_11e .. :try_end_124} :catchall_125

    goto :goto_132

    :catchall_125
    move-exception p0

    move-object v1, v3

    goto/16 :goto_1ec

    :catch_129
    move-exception p2

    move-object v1, v3

    goto/16 :goto_1b1

    :catch_12d
    move-exception p2

    move-object v1, v3

    goto/16 :goto_1cf

    :cond_131
    move-object v3, v1

    :goto_132
    if-eqz v3, :cond_140

    .line 140
    :try_start_134
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_138

    goto :goto_140

    :catch_138
    move-exception p3

    .line 142
    invoke-virtual {p3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 147
    :cond_140
    :goto_140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p0

    iput-wide v3, v0, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->rt:J

    .line 150
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    :try_start_14c
    new-instance p1, Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_155} :catch_170
    .catchall {:try_start_14c .. :try_end_155} :catchall_16e

    const/16 p2, 0x800

    .line 153
    :try_start_157
    new-array p3, p2, [B

    .line 155
    :goto_159
    invoke-virtual {p1, p3, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_164

    .line 156
    invoke-virtual {p0, p3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_163} :catch_16b
    .catchall {:try_start_157 .. :try_end_163} :catchall_168

    goto :goto_159

    .line 163
    :cond_164
    :try_start_164
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_167} :catch_17e

    goto :goto_186

    :catchall_168
    move-exception p0

    move-object v1, p1

    goto :goto_19f

    :catch_16b
    move-exception p2

    move-object v1, p1

    goto :goto_171

    :catchall_16e
    move-exception p0

    goto :goto_19f

    :catch_170
    move-exception p2

    .line 159
    :goto_171
    :try_start_171
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_178
    .catchall {:try_start_171 .. :try_end_178} :catchall_16e

    if-eqz v1, :cond_186

    .line 163
    :try_start_17a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_17d} :catch_17e

    goto :goto_186

    :catch_17e
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 169
    :cond_186
    :goto_186
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_1fb

    .line 170
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->parseResult([B)I

    move-result p0

    sput p0, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->mErrorCode:I

    .line 171
    sget p0, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->mErrorCode:I

    iput p0, v0, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->errCode:I

    .line 172
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    iput-object p0, v0, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->data:Ljava/lang/String;

    goto :goto_1fb

    :goto_19f
    if-eqz v1, :cond_1ad

    .line 163
    :try_start_1a1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    goto :goto_1ad

    :catch_1a5
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 166
    :cond_1ad
    :goto_1ad
    throw p0

    :catchall_1ae
    move-exception p0

    goto :goto_1ec

    :catch_1b0
    move-exception p2

    .line 134
    :goto_1b1
    :try_start_1b1
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, p0

    iput-wide p2, v0, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->rt:J
    :try_end_1bf
    .catchall {:try_start_1b1 .. :try_end_1bf} :catchall_1ae

    if-eqz v1, :cond_1cd

    .line 140
    :try_start_1c1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c4} :catch_1c5

    goto :goto_1cd

    :catch_1c5
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_1cd
    :goto_1cd
    return-object v0

    :catch_1ce
    move-exception p2

    .line 130
    :goto_1cf
    :try_start_1cf
    invoke-virtual {p2}, Ljavax/net/ssl/SSLHandshakeException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, p0

    iput-wide p2, v0, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->rt:J
    :try_end_1dd
    .catchall {:try_start_1cf .. :try_end_1dd} :catchall_1ae

    if-eqz v1, :cond_1eb

    .line 140
    :try_start_1df
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e2} :catch_1e3

    goto :goto_1eb

    :catch_1e3
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_1eb
    :goto_1eb
    return-object v0

    :goto_1ec
    if-eqz v1, :cond_1fa

    .line 140
    :try_start_1ee
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f1} :catch_1f2

    goto :goto_1fa

    :catch_1f2
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 143
    :cond_1fa
    :goto_1fa
    throw p0

    :catch_1fb
    :cond_1fb
    :goto_1fb
    return-object v0
.end method

.method public static sendRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;
    .registers 7

    .line 182
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->openHttp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "/upload"

    if-eqz v1, :cond_21

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    .line 187
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    :goto_35
    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->sendRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;

    move-result-object p0

    return-object p0
.end method

.method public static sendRequestByUrl(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    .line 200
    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->sendRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;

    move-result-object p0

    return-object p0
.end method
