.class public Lanet/channel/session/b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/session/b$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;)I
    .registers 9

    const-string v0, "postData"

    const-string v1, "awcn.HttpConnector"

    .line 387
    invoke-virtual {p1}, Lanet/channel/request/Request;->containsBody()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6c

    const/4 v2, 0x0

    .line 390
    :try_start_c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 391
    invoke-virtual {p1, v2}, Lanet/channel/request/Request;->postBody(Ljava/io/OutputStream;)I

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_2b
    .catchall {:try_start_c .. :try_end_14} :catchall_29

    if-eqz v2, :cond_27

    .line 397
    :try_start_16
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 398
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_27

    :catch_1d
    move-exception v2

    .line 400
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v4, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_27
    :goto_27
    move v3, p0

    goto :goto_4a

    :catchall_29
    move-exception p0

    goto :goto_58

    :catch_2b
    move-exception p0

    :try_start_2c
    const-string v4, "postData error"

    .line 393
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5, p0, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_29

    if-eqz v2, :cond_4a

    .line 397
    :try_start_39
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 398
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3f} :catch_40

    goto :goto_4a

    :catch_40
    move-exception p0

    .line 400
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, p0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 404
    :cond_4a
    :goto_4a
    iget-object p0, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    int-to-long v0, v3

    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->reqBodyInflateSize:J

    .line 405
    iget-object p0, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->reqBodyDeflateSize:J

    .line 406
    iget-object p0, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iput-wide v0, p0, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    goto :goto_6c

    :goto_58
    if-eqz v2, :cond_6b

    .line 397
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 398
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_60} :catch_61

    goto :goto_6b

    :catch_61
    move-exception v2

    .line 400
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, p1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 403
    :cond_6b
    :goto_6b
    throw p0

    :cond_6c
    :goto_6c
    return v3
.end method

.method public static a(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/session/b$a;
    .registers 24

    move-object/from16 v1, p1

    const-string v2, "hostnameVerifier"

    const-string/jumbo v3, "sslSocketFactory"

    const-string v4, "SSL Error Info."

    const-string v5, "host"

    const-string v6, ""

    const-string v7, "http disconnect"

    const-string v8, "awcn.HttpConnector"

    .line 78
    new-instance v9, Lanet/channel/session/b$a;

    invoke-direct {v9}, Lanet/channel/session/b$a;-><init>()V

    const/4 v10, 0x0

    if-eqz p0, :cond_49d

    .line 79
    invoke-virtual/range {p0 .. p0}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v11

    if-nez v11, :cond_21

    goto/16 :goto_49d

    :cond_21
    move-object/from16 v11, p0

    move-object v12, v10

    .line 90
    :goto_24
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v13

    if-nez v13, :cond_31

    const/16 v2, -0xc8

    .line 91
    invoke-static {v11, v9, v1, v2, v10}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    goto/16 :goto_48c

    :cond_31
    const/4 v13, 0x2

    const/4 v15, 0x0

    .line 94
    :try_start_33
    invoke-static {v11}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;)Ljava/net/HttpURLConnection;

    move-result-object v12

    .line 95
    invoke-static {v13}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v16

    if-eqz v16, :cond_84

    .line 96
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v10

    new-array v14, v13, [Ljava/lang/Object;

    const-string v18, "request URL"

    aput-object v18, v14, v15

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v14, v17

    invoke-static {v8, v6, v10, v14}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v10

    new-array v14, v13, [Ljava/lang/Object;

    const-string v18, "request Method"

    aput-object v18, v14, v15

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v14, v17

    invoke-static {v8, v6, v10, v14}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v10

    new-array v14, v13, [Ljava/lang/Object;

    const-string v18, "request headers"

    aput-object v18, v14, v15

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v14, v17

    invoke-static {v8, v6, v10, v14}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_84
    iget-object v10, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v10, Lanet/channel/statist/RequestStatistic;->sendStart:J

    .line 102
    iget-object v10, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v13, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v13, v13, Lanet/channel/statist/RequestStatistic;->sendStart:J

    iget-object v15, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;
    :try_end_94
    .catch Ljava/net/UnknownHostException; {:try_start_33 .. :try_end_94} :catch_45a
    .catch Ljava/net/SocketTimeoutException; {:try_start_33 .. :try_end_94} :catch_434
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_33 .. :try_end_94} :catch_40e
    .catch Ljava/net/ConnectException; {:try_start_33 .. :try_end_94} :catch_3e6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_33 .. :try_end_94} :catch_37e
    .catch Ljavax/net/ssl/SSLException; {:try_start_33 .. :try_end_94} :catch_316
    .catch Ljava/util/concurrent/CancellationException; {:try_start_33 .. :try_end_94} :catch_2f2
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_94} :catch_2bd
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_94} :catch_278
    .catchall {:try_start_33 .. :try_end_94} :catchall_274

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    :try_start_98
    iget-wide v2, v15, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v13, v2

    iput-wide v13, v10, Lanet/channel/statist/RequestStatistic;->processTime:J

    .line 103
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->connect()V

    .line 104
    invoke-static {v12, v11}, Lanet/channel/session/b;->a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;)I

    .line 107
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v2, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    .line 108
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v3, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v13, v3, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    iget-object v3, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;
    :try_end_b3
    .catch Ljava/net/UnknownHostException; {:try_start_98 .. :try_end_b3} :catch_45a
    .catch Ljava/net/SocketTimeoutException; {:try_start_98 .. :try_end_b3} :catch_434
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_98 .. :try_end_b3} :catch_40e
    .catch Ljava/net/ConnectException; {:try_start_98 .. :try_end_b3} :catch_3e6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_98 .. :try_end_b3} :catch_271
    .catch Ljavax/net/ssl/SSLException; {:try_start_98 .. :try_end_b3} :catch_26e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_98 .. :try_end_b3} :catch_2f2
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_b3} :catch_2bd
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b3} :catch_278
    .catchall {:try_start_98 .. :try_end_b3} :catchall_274

    move-object v10, v4

    :try_start_b4
    iget-wide v3, v3, Lanet/channel/statist/RequestStatistic;->sendStart:J

    sub-long/2addr v13, v3

    iput-wide v13, v2, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 111
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, v9, Lanet/channel/session/b$a;->a:I

    .line 112
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lanet/channel/util/HttpHelper;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v9, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    .line 114
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "response code"

    const/4 v13, 0x0

    aput-object v3, v4, v13

    iget v3, v9, Lanet/channel/session/b$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v13, 0x1

    aput-object v3, v4, v13

    invoke-static {v8, v6, v2, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "response headers"

    const/4 v13, 0x0

    aput-object v3, v4, v13

    iget-object v3, v9, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    const/4 v13, 0x1

    aput-object v3, v4, v13

    invoke-static {v8, v6, v2, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget v2, v9, Lanet/channel/session/b$a;->a:I

    invoke-static {v11, v2}, Lanet/channel/util/HttpHelper;->checkRedirect(Lanet/channel/request/Request;I)Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 118
    iget-object v2, v9, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    const-string v3, "Location"

    invoke-static {v2, v3}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18b

    .line 120
    invoke-static {v2}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v3

    if-eqz v3, :cond_177

    const-string v4, "redirect"

    .line 122
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    const-string/jumbo v14, "to url"

    const/16 v19, 0x0

    aput-object v14, v15, v19

    invoke-virtual {v3}, Lanet/channel/util/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v15, v17

    invoke-static {v8, v4, v13, v15}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v11}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v4

    const-string v13, "GET"

    .line 124
    invoke-virtual {v4, v13}, Lanet/channel/request/Request$Builder;->setMethod(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v4

    const/4 v13, 0x0

    .line 125
    invoke-virtual {v4, v13}, Lanet/channel/request/Request$Builder;->setBody(Lanet/channel/request/BodyEntry;)Lanet/channel/request/Request$Builder;

    move-result-object v4

    .line 126
    invoke-virtual {v4, v3}, Lanet/channel/request/Request$Builder;->setUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request$Builder;

    move-result-object v4

    .line 127
    invoke-virtual {v11}, Lanet/channel/request/Request;->getRedirectTimes()I

    move-result v14

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-virtual {v4, v14}, Lanet/channel/request/Request$Builder;->setRedirectTimes(I)Lanet/channel/request/Request$Builder;

    move-result-object v4

    .line 128
    invoke-virtual {v4, v13}, Lanet/channel/request/Request$Builder;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/Request$Builder;

    move-result-object v4

    .line 129
    invoke-virtual {v4, v13}, Lanet/channel/request/Request$Builder;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lanet/channel/request/Request$Builder;

    move-result-object v4

    .line 130
    invoke-virtual {v4}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v11

    .line 131
    iget-object v4, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget v13, v9, Lanet/channel/session/b$a;->a:I

    invoke-virtual {v3}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v13, v3}, Lanet/channel/statist/RequestStatistic;->recordRedirect(ILjava/lang/String;)V

    .line 132
    iget-object v3, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iput-object v2, v3, Lanet/channel/statist/RequestStatistic;->locationUrl:Ljava/lang/String;
    :try_end_160
    .catch Ljava/net/UnknownHostException; {:try_start_b4 .. :try_end_160} :catch_45a
    .catch Ljava/net/SocketTimeoutException; {:try_start_b4 .. :try_end_160} :catch_434
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b4 .. :try_end_160} :catch_40e
    .catch Ljava/net/ConnectException; {:try_start_b4 .. :try_end_160} :catch_3e6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_b4 .. :try_end_160} :catch_26b
    .catch Ljavax/net/ssl/SSLException; {:try_start_b4 .. :try_end_160} :catch_268
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b4 .. :try_end_160} :catch_2f2
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_160} :catch_2bd
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_160} :catch_278
    .catchall {:try_start_b4 .. :try_end_160} :catchall_274

    if-eqz v12, :cond_16f

    .line 244
    :try_start_162
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_165} :catch_166

    goto :goto_16f

    :catch_166
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    .line 247
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8, v7, v4, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_16f
    :goto_16f
    move-object v4, v10

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    const/4 v10, 0x0

    goto/16 :goto_24

    :cond_177
    :try_start_177
    const-string v3, "redirect url is invalid!"

    .line 135
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const-string v13, "redirect url"

    const/4 v15, 0x0

    aput-object v13, v14, v15

    const/4 v13, 0x1

    aput-object v2, v14, v13

    invoke-static {v8, v3, v4, v14}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_18b
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v3, v9, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    const-string v4, "Content-Encoding"

    invoke-static {v3, v4}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lanet/channel/statist/RequestStatistic;->contentEncoding:Ljava/lang/String;

    .line 141
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v3, v9, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    const-string v4, "Content-Type"

    invoke-static {v3, v4}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lanet/channel/statist/RequestStatistic;->contentType:Ljava/lang/String;

    const-string v2, "HEAD"

    .line 144
    invoke-virtual {v11}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20a

    iget v2, v9, Lanet/channel/session/b$a;->a:I

    const/16 v3, 0x130

    if-eq v2, v3, :cond_20a

    iget v2, v9, Lanet/channel/session/b$a;->a:I

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_20a

    iget v2, v9, Lanet/channel/session/b$a;->a:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1c8

    iget v2, v9, Lanet/channel/session/b$a;->a:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1c8

    goto :goto_20a

    .line 155
    :cond_1c8
    iget-object v2, v9, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    invoke-static {v2}, Lanet/channel/util/HttpHelper;->parseContentLength(Ljava/util/Map;)I

    move-result v2

    iput v2, v9, Lanet/channel/session/b$a;->d:I

    .line 156
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget v3, v9, Lanet/channel/session/b$a;->d:I

    int-to-long v3, v3

    iput-wide v3, v2, Lanet/channel/statist/RequestStatistic;->contentLength:J

    const-string v2, "gzip"

    .line 157
    iget-object v3, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v3, v3, Lanet/channel/statist/RequestStatistic;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v9, Lanet/channel/session/b$a;->e:Z

    .line 158
    iget-boolean v2, v9, Lanet/channel/session/b$a;->e:Z

    if-eqz v2, :cond_1f5

    .line 159
    iget-object v2, v9, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    const-string v3, "Content-Encoding"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v2, v9, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    const-string v3, "Content-Length"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f5
    if-eqz v1, :cond_1fe

    .line 163
    iget v2, v9, Lanet/channel/session/b$a;->a:I

    iget-object v3, v9, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 166
    :cond_1fe
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lanet/channel/statist/RequestStatistic;->rspStart:J

    .line 167
    invoke-static {v12, v11, v9, v1}, Lanet/channel/session/b;->a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;)V

    goto :goto_21b

    :cond_20a
    :goto_20a
    if-eqz v1, :cond_213

    .line 149
    iget v2, v9, Lanet/channel/session/b$a;->a:I

    iget-object v3, v9, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 152
    :cond_213
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lanet/channel/statist/RequestStatistic;->rspStart:J

    .line 170
    :goto_21b
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v3, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v3, v3, Lanet/channel/statist/RequestStatistic;->rspStart:J

    iget-object v13, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v13, v13, Lanet/channel/statist/RequestStatistic;->sendEnd:J

    sub-long/2addr v3, v13

    iput-wide v3, v2, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 171
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_24b

    .line 172
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    const/4 v3, 0x1

    iput v3, v2, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 173
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget v3, v9, Lanet/channel/session/b$a;->a:I

    iput v3, v2, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 174
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    const-string v3, "SUCCESS"

    iput-object v3, v2, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 175
    iget-object v2, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    :cond_24b
    if-eqz v1, :cond_256

    .line 179
    iget v2, v9, Lanet/channel/session/b$a;->a:I

    const-string v3, "SUCCESS"

    iget-object v4, v11, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-interface {v1, v2, v3, v4}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_256
    .catch Ljava/net/UnknownHostException; {:try_start_177 .. :try_end_256} :catch_45a
    .catch Ljava/net/SocketTimeoutException; {:try_start_177 .. :try_end_256} :catch_434
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_177 .. :try_end_256} :catch_40e
    .catch Ljava/net/ConnectException; {:try_start_177 .. :try_end_256} :catch_3e6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_177 .. :try_end_256} :catch_26b
    .catch Ljavax/net/ssl/SSLException; {:try_start_177 .. :try_end_256} :catch_268
    .catch Ljava/util/concurrent/CancellationException; {:try_start_177 .. :try_end_256} :catch_2f2
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_256} :catch_2bd
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_256} :catch_278
    .catchall {:try_start_177 .. :try_end_256} :catchall_274

    :cond_256
    if-eqz v12, :cond_48c

    .line 244
    :try_start_258
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_25b} :catch_25d

    goto/16 :goto_48c

    :catch_25d
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 247
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_48c

    :catch_268
    move-exception v0

    goto/16 :goto_31c

    :catch_26b
    move-exception v0

    goto/16 :goto_384

    :catch_26e
    move-exception v0

    goto/16 :goto_31b

    :catch_271
    move-exception v0

    goto/16 :goto_383

    :catchall_274
    move-exception v0

    move-object v1, v0

    goto/16 :goto_48d

    :catch_278
    move-exception v0

    move-object v2, v0

    .line 232
    :try_start_27a
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_284

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    :cond_284
    const-string v3, "not verified"

    .line 233
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29b

    .line 3016
    sget-object v3, Lanet/channel/strategy/c$a;->a:Lanet/channel/strategy/c;

    .line 234
    invoke-virtual {v11}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lanet/channel/strategy/c;->b(Ljava/lang/String;)V

    const/16 v3, -0x193

    .line 235
    invoke-static {v11, v9, v1, v3, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    goto :goto_2a0

    :cond_29b
    const/16 v3, -0x65

    .line 237
    invoke-static {v11, v9, v1, v3, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    :goto_2a0
    const-string v1, "HTTP Exception"

    .line 239
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v8, v1, v3, v2, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2ac
    .catchall {:try_start_27a .. :try_end_2ac} :catchall_274

    if-eqz v12, :cond_48c

    .line 244
    :try_start_2ae
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2b1} :catch_2b3

    goto/16 :goto_48c

    :catch_2b3
    move-exception v0

    move-object v1, v0

    .line 247
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_48c

    :catch_2bd
    move-exception v0

    move-object v2, v0

    const/16 v3, -0x194

    .line 227
    :try_start_2c1
    invoke-static {v11, v9, v1, v3, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "IO Exception"

    .line 228
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v11}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v8, v1, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V
    :try_end_2e0
    .catchall {:try_start_2c1 .. :try_end_2e0} :catchall_274

    if-eqz v12, :cond_48c

    .line 244
    :try_start_2e2
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_2e5} :catch_2e7

    goto/16 :goto_48c

    :catch_2e7
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 247
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_48c

    :catch_2f2
    move-exception v0

    move-object v2, v0

    const/16 v3, -0xcc

    .line 223
    :try_start_2f6
    invoke-static {v11, v9, v1, v3, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "HTTP Request Cancel"

    .line 224
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v8, v1, v3, v2, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_305
    .catchall {:try_start_2f6 .. :try_end_305} :catchall_274

    if-eqz v12, :cond_48c

    .line 244
    :try_start_307
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_30a
    .catch Ljava/lang/Exception; {:try_start_307 .. :try_end_30a} :catch_30c

    goto/16 :goto_48c

    :catch_30c
    move-exception v0

    move-object v1, v0

    .line 247
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_48c

    :catch_316
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    :goto_31b
    move-object v10, v4

    :goto_31c
    move-object v2, v0

    .line 2016
    :try_start_31d
    sget-object v3, Lanet/channel/strategy/c$a;->a:Lanet/channel/strategy/c;

    .line 213
    invoke-virtual {v11}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lanet/channel/strategy/c;->b(Ljava/lang/String;)V

    const/16 v3, -0x192

    .line 214
    invoke-static {v11, v9, v1, v3, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "connect SSLException"

    .line 215
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v6, v4

    invoke-virtual {v11}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    const/4 v4, 0x2

    aput-object v2, v6, v4

    invoke-static {v8, v1, v3, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    instance-of v1, v12, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_36c

    .line 217
    move-object v1, v12

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 218
    move-object v2, v12

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 219
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v20, v4, v1

    const/4 v1, 0x3

    aput-object v2, v4, v1

    invoke-static {v8, v10, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_36c
    .catchall {:try_start_31d .. :try_end_36c} :catchall_274

    :cond_36c
    if-eqz v12, :cond_48c

    .line 244
    :try_start_36e
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_36e .. :try_end_371} :catch_373

    goto/16 :goto_48c

    :catch_373
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 247
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_48c

    :catch_37e
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    :goto_383
    move-object v10, v4

    :goto_384
    move-object v2, v0

    .line 1016
    :try_start_385
    sget-object v3, Lanet/channel/strategy/c$a;->a:Lanet/channel/strategy/c;

    .line 203
    invoke-virtual {v11}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lanet/channel/strategy/c;->b(Ljava/lang/String;)V

    const/16 v3, -0x192

    .line 204
    invoke-static {v11, v9, v1, v3, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "HTTP Connect SSLHandshakeException"

    .line 205
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v6, v4

    invoke-virtual {v11}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    const/4 v4, 0x2

    aput-object v2, v6, v4

    invoke-static {v8, v1, v3, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    instance-of v1, v12, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_3d4

    .line 207
    move-object v1, v12

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 208
    move-object v2, v12

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 209
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v20, v4, v1

    const/4 v1, 0x3

    aput-object v2, v4, v1

    invoke-static {v8, v10, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3d4
    .catchall {:try_start_385 .. :try_end_3d4} :catchall_274

    :cond_3d4
    if-eqz v12, :cond_48c

    .line 244
    :try_start_3d6
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3d9
    .catch Ljava/lang/Exception; {:try_start_3d6 .. :try_end_3d9} :catch_3db

    goto/16 :goto_48c

    :catch_3db
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 247
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_48c

    :catch_3e6
    move-exception v0

    move-object v2, v0

    const/16 v3, -0x196

    .line 198
    :try_start_3ea
    invoke-static {v11, v9, v1, v3, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "HTTP Connect Exception"

    .line 199
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v8, v1, v3, v2, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 200
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V
    :try_end_3fc
    .catchall {:try_start_3ea .. :try_end_3fc} :catchall_274

    if-eqz v12, :cond_48c

    .line 244
    :try_start_3fe
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_401
    .catch Ljava/lang/Exception; {:try_start_3fe .. :try_end_401} :catch_403

    goto/16 :goto_48c

    :catch_403
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 247
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_48c

    :catch_40e
    move-exception v0

    move-object v2, v0

    const/16 v3, -0x190

    .line 193
    :try_start_412
    invoke-static {v11, v9, v1, v3, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "HTTP Connect Timeout"

    .line 194
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v8, v1, v3, v2, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V
    :try_end_424
    .catchall {:try_start_412 .. :try_end_424} :catchall_274

    if-eqz v12, :cond_48c

    .line 244
    :try_start_426
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_426 .. :try_end_429} :catch_42a

    goto :goto_48c

    :catch_42a
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 247
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_48c

    :catch_434
    move-exception v0

    move-object v2, v0

    const/16 v3, -0x191

    .line 188
    :try_start_438
    invoke-static {v11, v9, v1, v3, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "HTTP Socket Timeout"

    .line 189
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v8, v1, v3, v2, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 190
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V
    :try_end_44a
    .catchall {:try_start_438 .. :try_end_44a} :catchall_274

    if-eqz v12, :cond_48c

    .line 244
    :try_start_44c
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_44f
    .catch Ljava/lang/Exception; {:try_start_44c .. :try_end_44f} :catch_450

    goto :goto_48c

    :catch_450
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 247
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_48c

    :catch_45a
    move-exception v0

    move-object v2, v0

    const/16 v3, -0x195

    .line 183
    :try_start_45e
    invoke-static {v11, v9, v1, v3, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    const-string v1, "Unknown Host Exception"

    .line 184
    invoke-virtual {v11}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v11}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v8, v1, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->printNetworkDetail()V
    :try_end_47d
    .catchall {:try_start_45e .. :try_end_47d} :catchall_274

    if-eqz v12, :cond_48c

    .line 244
    :try_start_47f
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_482
    .catch Ljava/lang/Exception; {:try_start_47f .. :try_end_482} :catch_483

    goto :goto_48c

    :catch_483
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 247
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_48c
    :goto_48c
    return-object v9

    :goto_48d
    if-eqz v12, :cond_49c

    .line 244
    :try_start_48f
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_492
    .catch Ljava/lang/Exception; {:try_start_48f .. :try_end_492} :catch_493

    goto :goto_49c

    :catch_493
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    .line 247
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8, v7, v4, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 249
    :cond_49c
    :goto_49c
    throw v1

    :cond_49d
    :goto_49d
    move-object v4, v10

    if-eqz v1, :cond_4ae

    const/16 v2, -0x66

    .line 82
    invoke-static {v2}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lanet/channel/statist/RequestStatistic;

    invoke-direct {v5, v4, v4}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface {v1, v2, v3, v5}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_4ae
    return-object v9
.end method

.method private static a(Lanet/channel/request/Request;)Ljava/net/HttpURLConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiProxy()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 287
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 290
    :goto_20
    invoke-static {}, Lanet/channel/util/g;->a()Lanet/channel/util/g;

    move-result-object v0

    .line 291
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_34

    if-eqz v0, :cond_34

    .line 292
    invoke-virtual {v0}, Lanet/channel/util/g;->b()Ljava/net/Proxy;

    move-result-object v1

    .line 296
    :cond_34
    invoke-virtual {p0}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v2

    if-eqz v1, :cond_41

    .line 298
    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    goto :goto_47

    .line 300
    :cond_41
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 303
    :goto_47
    invoke-virtual {p0}, Lanet/channel/request/Request;->getConnectTimeout()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 304
    invoke-virtual {p0}, Lanet/channel/request/Request;->getReadTimeout()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 305
    invoke-virtual {p0}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lanet/channel/request/Request;->containsBody()Z

    move-result v3

    if-eqz v3, :cond_66

    const/4 v3, 0x1

    .line 307
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 310
    :cond_66
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 313
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_72
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 314
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    :cond_8e
    const-string v4, "Host"

    .line 318
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_9c

    .line 320
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 324
    :cond_9c
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lanet/channel/util/HttpUrl;->containsNonDefaultPort()Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 325
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lanet/channel/util/HttpUrl;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-static {v5, v7, v6}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_ba

    :cond_b9
    move-object v6, v5

    .line 327
    :goto_ba
    invoke-virtual {v1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getApn()Ljava/lang/String;

    move-result-object v4

    const-string v7, "cmwap"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    const-string/jumbo v4, "x-online-host"

    .line 329
    invoke-virtual {v1, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cf
    const-string v4, "Accept-Encoding"

    .line 333
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dc

    const-string v3, "gzip"

    .line 334
    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_dc
    if-eqz v0, :cond_e7

    .line 339
    invoke-virtual {v0}, Lanet/channel/util/g;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_e7
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 343
    invoke-static {v1, p0, v5}, Lanet/channel/session/b;->a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Ljava/lang/String;)V

    :cond_f6
    const/4 p0, 0x0

    .line 346
    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object v1
.end method

.method private static a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V
    .registers 10

    .line 258
    invoke-static {p3}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "errorCode"

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v4, "errMsg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "url"

    aput-object v4, v2, v3

    .line 260
    invoke-virtual {p0}, Lanet/channel/request/Request;->getUrlString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    const-string v4, "host"

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string v3, "awcn.HttpConnector"

    const-string v4, "onException"

    .line 259
    invoke-static {v3, v4, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_44

    .line 264
    iput p3, p1, Lanet/channel/session/b$a;->a:I

    .line 267
    :cond_44
    iget-object p1, p0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-object p1, p1, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_70

    .line 268
    iget-object p1, p0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iput p3, p1, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 269
    iget-object p1, p0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iput-object v0, p1, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 270
    iget-object p1, p0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    const/16 p1, -0xcc

    if-eq p3, p1, :cond_70

    .line 273
    new-instance p1, Lanet/channel/statist/ExceptionStatistic;

    iget-object v1, p0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-direct {p1, p3, v0, v1, p4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    .line 274
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p4

    invoke-interface {p4, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_70
    if-eqz p2, :cond_77

    .line 279
    iget-object p0, p0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-interface {p2, p3, v0, p0}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_77
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 416
    :try_start_b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_3f

    :catch_10
    move-exception v4

    .line 418
    instance-of v4, v4, Ljava/io/FileNotFoundException;

    const-string v5, "awcn.HttpConnector"

    if-eqz v4, :cond_2d

    .line 419
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "url"

    aput-object v7, v6, v2

    invoke-virtual {p1}, Lanet/channel/request/Request;->getUrlString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v7, "File not found"

    invoke-static {v5, v7, v4, v6}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_32

    goto :goto_3f

    :catch_32
    move-exception p0

    .line 424
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "get error stream failed."

    invoke-static {v5, v7, v4, p0, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object p0, v3

    :goto_3f
    if-nez p0, :cond_47

    const/16 p0, -0x194

    .line 429
    invoke-static {p1, p2, p3, p0, v3}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    return-void

    :cond_47
    if-nez p3, :cond_60

    .line 436
    iget v4, p2, Lanet/channel/session/b$a;->d:I

    if-gtz v4, :cond_50

    const/16 v1, 0x400

    goto :goto_5a

    :cond_50
    iget-boolean v4, p2, Lanet/channel/session/b$a;->e:Z

    if-eqz v4, :cond_58

    iget v4, p2, Lanet/channel/session/b$a;->d:I

    mul-int/2addr v1, v4

    goto :goto_5a

    :cond_58
    iget v1, p2, Lanet/channel/session/b$a;->d:I

    .line 438
    :goto_5a
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_61

    :cond_60
    move-object v4, v3

    .line 443
    :goto_61
    :try_start_61
    new-instance v1, Lanet/channel/util/a;

    invoke-direct {v1, p0}, Lanet/channel/util/a;-><init>(Ljava/io/InputStream;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_dd

    .line 444
    :try_start_66
    iget-boolean v5, p2, Lanet/channel/session/b$a;->e:Z

    if-eqz v5, :cond_71

    .line 445
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v5

    goto :goto_72

    :cond_71
    move-object p0, v1

    :goto_72
    move-object v5, v3

    .line 453
    :goto_73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_d2

    if-nez v5, :cond_87

    .line 8021
    sget-object v5, Lanet/channel/bytes/a$a;->a:Lanet/channel/bytes/a;

    const/16 v6, 0x800

    .line 457
    invoke-virtual {v5, v6}, Lanet/channel/bytes/a;->a(I)Lanet/channel/bytes/ByteArray;

    move-result-object v5

    .line 459
    :cond_87
    invoke-virtual {v5, p0}, Lanet/channel/bytes/ByteArray;->readFrom(Ljava/io/InputStream;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a8

    if-eqz v4, :cond_94

    .line 462
    invoke-virtual {v5, v4}, Lanet/channel/bytes/ByteArray;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_98

    .line 464
    :cond_94
    invoke-interface {p3, v5, v2}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    move-object v5, v3

    .line 467
    :goto_98
    iget-object v7, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v8, v7, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v7, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 468
    iget-object v6, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v7, v6, Lanet/channel/statist/RequestStatistic;->rspBodyInflateSize:J

    add-long/2addr v7, v10

    iput-wide v7, v6, Lanet/channel/statist/RequestStatistic;->rspBodyInflateSize:J

    goto :goto_73

    :cond_a8
    if-eqz v4, :cond_ae

    .line 471
    invoke-virtual {v5}, Lanet/channel/bytes/ByteArray;->recycle()V

    goto :goto_b1

    .line 473
    :cond_ae
    invoke-interface {p3, v5, v0}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    :goto_b1
    if-eqz v4, :cond_b9

    .line 480
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    iput-object p3, p2, Lanet/channel/session/b$a;->b:[B
    :try_end_b9
    .catchall {:try_start_66 .. :try_end_b9} :catchall_db

    .line 483
    :cond_b9
    iget-object p2, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p3, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, p3, Lanet/channel/statist/RequestStatistic;->rspStart:J

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 484
    iget-object p1, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v1}, Lanet/channel/util/a;->a()J

    move-result-wide p2

    iput-wide p2, p1, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    .line 487
    :try_start_ce
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d1

    :catch_d1
    return-void

    .line 454
    :cond_d2
    :try_start_d2
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string/jumbo p3, "task cancelled"

    invoke-direct {p2, p3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_db
    .catchall {:try_start_d2 .. :try_end_db} :catchall_db

    :catchall_db
    move-exception p2

    goto :goto_df

    :catchall_dd
    move-exception p2

    move-object v1, v3

    .line 483
    :goto_df
    iget-object p3, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v0, Lanet/channel/statist/RequestStatistic;->rspStart:J

    sub-long/2addr v2, v4

    iput-wide v2, p3, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 484
    iget-object p1, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v1}, Lanet/channel/util/a;->a()J

    move-result-wide v0

    iput-wide v0, p1, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    if-eqz p0, :cond_f9

    .line 487
    :try_start_f6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_f9

    .line 490
    :catch_f9
    :cond_f9
    throw p2
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Ljava/lang/String;)V
    .registers 11

    .line 352
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "awcn.HttpConnector"

    const/16 v3, 0x8

    if-ge v0, v3, :cond_18

    .line 353
    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "supportHttps"

    const-string p2, "[supportHttps]Froyo \u4ee5\u4e0b\u7248\u672c\u4e0d\u652f\u6301https"

    invoke-static {v2, p1, p2, p0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 356
    :cond_18
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 359
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "HttpSslUtil"

    const/4 v5, 0x2

    if-eqz v0, :cond_2c

    .line 360
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_4c

    .line 3017
    :cond_2c
    sget-object v0, Lanet/channel/util/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4c

    .line 4017
    sget-object v0, Lanet/channel/util/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 362
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 363
    invoke-static {v5}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 364
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "SslSocketFactory"

    aput-object v7, v6, v1

    .line 5017
    sget-object v7, Lanet/channel/util/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    aput-object v7, v6, v3

    .line 364
    invoke-static {v2, v4, v0, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 369
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_83

    .line 5025
    :cond_5a
    sget-object v0, Lanet/channel/util/b;->b:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_7b

    .line 6025
    sget-object p2, Lanet/channel/util/b;->b:Ljavax/net/ssl/HostnameVerifier;

    .line 371
    invoke-virtual {p0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 372
    invoke-static {v5}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p0

    if-eqz p0, :cond_83

    .line 373
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    const-string p2, "HostnameVerifier"

    aput-object p2, p1, v1

    .line 7025
    sget-object p2, Lanet/channel/util/b;->b:Ljavax/net/ssl/HostnameVerifier;

    aput-object p2, p1, v3

    .line 373
    invoke-static {v2, v4, p0, p1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_83

    .line 376
    :cond_7b
    new-instance p1, Lanet/channel/session/c;

    invoke-direct {p1, p2}, Lanet/channel/session/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_83
    :goto_83
    return-void
.end method
