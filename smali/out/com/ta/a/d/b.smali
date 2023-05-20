.class public Lcom/ta/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ta/a/d/d;

.field private static a:Lcom/ta/a/d/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "http.keepAlive"

    const-string v1, "true"

    .line 40
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/ta/a/d/b;->a:Lcom/ta/a/d/f;

    .line 44
    sput-object v0, Lcom/ta/a/d/b;->a:Lcom/ta/a/d/d;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ta/a/d/a;
    .registers 20

    move-object/from16 v0, p1

    const-string v1, ""

    .line 50
    new-instance v2, Lcom/ta/a/d/a;

    invoke-direct {v2}, Lcom/ta/a/d/a;-><init>()V

    .line 51
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-object v2

    :cond_10
    const/4 v3, 0x0

    .line 58
    :try_start_11
    new-instance v4, Ljava/net/URL;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    return-object v2

    .line 63
    :cond_23
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 65
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_5b

    .line 66
    sget-object v6, Lcom/ta/a/d/b;->a:Lcom/ta/a/d/f;

    if-nez v6, :cond_3c

    .line 67
    new-instance v6, Lcom/ta/a/d/f;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ta/a/d/f;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/ta/a/d/b;->a:Lcom/ta/a/d/f;

    .line 69
    :cond_3c
    sget-object v6, Lcom/ta/a/d/b;->a:Lcom/ta/a/d/d;

    if-nez v6, :cond_4b

    .line 70
    new-instance v6, Lcom/ta/a/d/d;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/ta/a/d/d;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/ta/a/d/b;->a:Lcom/ta/a/d/d;

    .line 72
    :cond_4b
    move-object v4, v5

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v6, Lcom/ta/a/d/b;->a:Lcom/ta/a/d/f;

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 73
    move-object v4, v5

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v6, Lcom/ta/a/d/b;->a:Lcom/ta/a/d/d;

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_5b
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_5b} :catch_28a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_5b} :catch_283
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_5b} :catch_27c

    :cond_5b
    if-eqz v5, :cond_27b

    const/4 v4, 0x1

    .line 87
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p2, :cond_73

    .line 89
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :try_start_66
    const-string v6, "POST"

    .line 91
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/net/ProtocolException; {:try_start_66 .. :try_end_6b} :catch_6c

    goto :goto_78

    :catch_6c
    move-exception v0

    .line 93
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/a/e/h;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2

    :cond_73
    :try_start_73
    const-string v6, "GET"

    .line 98
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/net/ProtocolException; {:try_start_73 .. :try_end_78} :catch_275

    .line 104
    :goto_78
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v6, 0x2710

    .line 105
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 106
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 107
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    .line 108
    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "UTF-8"

    const-string v7, "Charset"

    .line 109
    invoke-virtual {v5, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x-audid-appkey"

    .line 112
    invoke-virtual {v5, v8, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ta/a/a;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 115
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_bc

    :try_start_b0
    const-string v9, "x-audid-appname"

    .line 117
    invoke-static {v8, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bc} :catch_bc

    :catch_bc
    :cond_bc
    const-string v6, "2.5.2"

    const-string v8, "x-audid-sdk"

    .line 124
    invoke-virtual {v5, v8, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ta/a/a;->a()Ljava/lang/String;

    move-result-object v6

    const-string v8, "x-audid-timestamp"

    .line 128
    invoke-virtual {v5, v8, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-array v9, v4, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timestamp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v1, v9}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ta/a/e/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    const-string v7, "signature"

    invoke-virtual {v5, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v6, 0x0

    .line 139
    :try_start_10c
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz v0, :cond_130

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_130

    .line 141
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_120} :catch_246
    .catchall {:try_start_10c .. :try_end_120} :catchall_243

    .line 142
    :try_start_120
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V
    :try_end_126
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_126} :catch_12c
    .catchall {:try_start_120 .. :try_end_126} :catchall_127

    goto :goto_131

    :catchall_127
    move-exception v0

    move-object v2, v0

    move-object v6, v11

    goto/16 :goto_265

    :catch_12c
    move-exception v0

    move-object v6, v11

    goto/16 :goto_247

    :cond_130
    move-object v11, v6

    :goto_131
    if-eqz v11, :cond_140

    .line 152
    :try_start_133
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_137

    goto :goto_140

    :catch_137
    move-exception v0

    move-object v11, v0

    .line 154
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v11, v0, v3

    invoke-static {v1, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_140
    :goto_140
    :try_start_140
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v2, Lcom/ta/a/d/a;->a:I

    .line 161
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ta/a/d/a;->a:Ljava/lang/String;
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_14c} :catch_14d

    goto :goto_155

    :catch_14d
    move-exception v0

    .line 164
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v1, v7}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :goto_155
    :try_start_155
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/ta/a/d/a;->timestamp:J

    .line 170
    new-array v0, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "repsonse.timestamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v2, Lcom/ta/a/d/a;->timestamp:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    invoke-static {v1, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/a/a;->a()J

    move-result-wide v7

    .line 172
    iget-wide v11, v2, Lcom/ta/a/d/a;->timestamp:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_1a4

    iget-wide v11, v2, Lcom/ta/a/d/a;->timestamp:J

    const-wide/32 v13, 0x1b7740

    add-long v15, v7, v13

    cmp-long v0, v11, v15

    if-gtz v0, :cond_19b

    iget-wide v11, v2, Lcom/ta/a/d/a;->timestamp:J

    sub-long/2addr v7, v13

    cmp-long v0, v11, v7

    if-gez v0, :cond_1a4

    .line 175
    :cond_19b
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    iget-wide v7, v2, Lcom/ta/a/d/a;->timestamp:J

    invoke-virtual {v0, v7, v8}, Lcom/ta/a/a;->a(J)V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_1a4} :catch_1a4

    .line 181
    :catch_1a4
    :cond_1a4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    iput-wide v7, v2, Lcom/ta/a/d/a;->b:J

    .line 184
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v8, -0x1

    const/16 v9, 0x800

    .line 186
    :try_start_1b3
    new-instance v10, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1bc} :catch_1e0
    .catchall {:try_start_1b3 .. :try_end_1bc} :catchall_1dd

    .line 187
    :try_start_1bc
    new-array v0, v9, [B

    .line 189
    :goto_1be
    invoke-virtual {v10, v0, v3, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v8, :cond_1c8

    .line 190
    invoke-virtual {v7, v0, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1c7} :catch_1da
    .catchall {:try_start_1bc .. :try_end_1c7} :catchall_1d6

    goto :goto_1be

    .line 208
    :cond_1c8
    :try_start_1c8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1cb} :catch_1cc

    goto :goto_20a

    :catch_1cc
    move-exception v0

    move-object v5, v0

    .line 210
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20a

    :catchall_1d6
    move-exception v0

    move-object v2, v0

    move-object v6, v10

    goto :goto_233

    :catch_1da
    move-exception v0

    move-object v6, v10

    goto :goto_1e1

    :catchall_1dd
    move-exception v0

    move-object v2, v0

    goto :goto_233

    :catch_1e0
    move-exception v0

    .line 193
    :goto_1e1
    :try_start_1e1
    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v3

    invoke-static {v1, v10}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1e8
    .catchall {:try_start_1e1 .. :try_end_1e8} :catchall_1dd

    .line 195
    :try_start_1e8
    new-instance v10, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1f1} :catch_21b
    .catchall {:try_start_1e8 .. :try_end_1f1} :catchall_1dd

    .line 196
    :try_start_1f1
    new-array v0, v9, [B

    .line 198
    :goto_1f3
    invoke-virtual {v10, v0, v3, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v8, :cond_1fd

    .line 199
    invoke-virtual {v7, v0, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_1fc} :catch_218
    .catchall {:try_start_1f1 .. :try_end_1fc} :catchall_1d6

    goto :goto_1f3

    .line 208
    :cond_1fd
    :try_start_1fd
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_200} :catch_201

    goto :goto_20a

    :catch_201
    move-exception v0

    move-object v5, v0

    .line 210
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :goto_20a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_27b

    .line 215
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lcom/ta/a/d/a;->data:[B

    goto/16 :goto_27b

    :catch_218
    move-exception v0

    move-object v6, v10

    goto :goto_21c

    :catch_21b
    move-exception v0

    .line 202
    :goto_21c
    :try_start_21c
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v1, v5}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_223
    .catchall {:try_start_21c .. :try_end_223} :catchall_1dd

    if-eqz v6, :cond_232

    .line 208
    :try_start_225
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_225 .. :try_end_228} :catch_229

    goto :goto_232

    :catch_229
    move-exception v0

    move-object v5, v0

    .line 210
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_232
    :goto_232
    return-object v2

    :goto_233
    if-eqz v6, :cond_242

    .line 208
    :try_start_235
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_238
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_238} :catch_239

    goto :goto_242

    :catch_239
    move-exception v0

    move-object v5, v0

    .line 210
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_242
    :goto_242
    throw v2

    :catchall_243
    move-exception v0

    move-object v2, v0

    goto :goto_265

    :catch_246
    move-exception v0

    .line 146
    :goto_247
    :try_start_247
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v1, v5}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    iput-wide v7, v2, Lcom/ta/a/d/a;->b:J
    :try_end_255
    .catchall {:try_start_247 .. :try_end_255} :catchall_243

    if-eqz v6, :cond_264

    .line 152
    :try_start_257
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_25a
    .catch Ljava/io/IOException; {:try_start_257 .. :try_end_25a} :catch_25b

    goto :goto_264

    :catch_25b
    move-exception v0

    move-object v5, v0

    .line 154
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_264
    :goto_264
    return-object v2

    :goto_265
    if-eqz v6, :cond_274

    .line 152
    :try_start_267
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_26a
    .catch Ljava/io/IOException; {:try_start_267 .. :try_end_26a} :catch_26b

    goto :goto_274

    :catch_26b
    move-exception v0

    move-object v5, v0

    .line 154
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    invoke-static {v1, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_274
    :goto_274
    throw v2

    :catch_275
    move-exception v0

    .line 100
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/a/e/h;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_27b
    :goto_27b
    return-object v2

    :catch_27c
    move-exception v0

    .line 82
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/a/e/h;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2

    :catch_283
    move-exception v0

    .line 79
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/a/e/h;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2

    :catch_28a
    move-exception v0

    .line 76
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/a/e/h;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2
.end method
