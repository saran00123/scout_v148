.class Lanet/channel/strategy/dispatch/b;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field static b:Ljavax/net/ssl/HostnameVerifier;

.field static c:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lanet/channel/strategy/dispatch/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lanet/channel/strategy/dispatch/c;

    invoke-direct {v0}, Lanet/channel/strategy/dispatch/c;-><init>()V

    sput-object v0, Lanet/channel/strategy/dispatch/b;->b:Ljavax/net/ssl/HostnameVerifier;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lanet/channel/strategy/dispatch/b;->c:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;I)I
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "gzip"

    const-string v4, "http disconnect failed"

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AMDC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lanet/channel/strategy/dispatch/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 183
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "url"

    aput-object v9, v7, v8

    const/4 v9, 0x1

    aput-object v0, v7, v9

    const/4 v10, 0x2

    const-string v11, "\nhost"

    aput-object v11, v7, v10

    const-string v11, "domain"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v7, v12

    const-string v11, "awcn.DispatchCore"

    const-string v13, "send amdc request"

    invoke-static {v11, v13, v5, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "Env"

    .line 184
    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanet/channel/entity/ENV;

    .line 188
    :try_start_52
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_57} :catch_2aa
    .catchall {:try_start_52 .. :try_end_57} :catchall_2a5

    .line 189
    :try_start_57
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5d} :catch_2a1
    .catchall {:try_start_57 .. :try_end_5d} :catchall_2a5

    const/16 v12, 0x4e20

    .line 190
    :try_start_5f
    invoke-virtual {v15, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 191
    invoke-virtual {v15, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v12, "POST"

    .line 192
    invoke-virtual {v15, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v15, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 194
    invoke-virtual {v15, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v12, "Connection"

    const-string v6, "close"

    .line 195
    invoke-virtual {v15, v12, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept-Encoding"

    .line 196
    invoke-virtual {v15, v6, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Host"

    .line 197
    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v6, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v15, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 199
    invoke-virtual {v14}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v12, "https"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_92} :catch_29c
    .catchall {:try_start_5f .. :try_end_92} :catchall_298

    if-eqz v6, :cond_a2

    .line 200
    :try_start_94
    move-object v6, v15

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v12, Lanet/channel/strategy/dispatch/b;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v6, v12}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_9c} :catch_29c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_9d

    goto :goto_a2

    :catchall_9d
    move-exception v0

    move-object v1, v0

    move-object v8, v11

    goto/16 :goto_2db

    .line 202
    :cond_a2
    :goto_a2
    :try_start_a2
    invoke-static {v9}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v6
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a6} :catch_29c
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_298

    if-eqz v6, :cond_bd

    :try_start_a8
    const-string v6, "amdc request."

    .line 203
    new-array v12, v10, [Ljava/lang/Object;

    const-string v16, "headers"

    aput-object v16, v12, v8

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v9

    invoke-static {v11, v6, v5, v12}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_bd} :catch_29c
    .catchall {:try_start_a8 .. :try_end_bd} :catchall_9d

    .line 206
    :cond_bd
    :try_start_bd
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const-string/jumbo v12, "utf-8"

    .line 207
    invoke-static {v1, v12}, Lanet/channel/strategy/utils/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 208
    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V

    .line 210
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 212
    invoke-static {v9}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v12
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_d7} :catch_29c
    .catchall {:try_start_bd .. :try_end_d7} :catchall_298

    if-eqz v12, :cond_f9

    .line 213
    :try_start_d9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "amdc response. code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/Object;

    const-string v17, "\nheaders"

    aput-object v17, v13, v8

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v17

    aput-object v17, v13, v9

    invoke-static {v11, v12, v5, v13}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f9
    const/16 v12, 0xc8

    if-eq v6, v12, :cond_11f

    const/16 v0, 0x12e

    if-eq v6, v0, :cond_107

    const/16 v0, 0x133

    if-ne v6, v0, :cond_106

    goto :goto_107

    :cond_106
    move v10, v9

    .line 219
    :cond_107
    :goto_107
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "response code not 200"

    invoke-static {v0, v1, v14, v2, v10}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_110} :catch_29c
    .catchall {:try_start_d9 .. :try_end_110} :catchall_9d

    if-eqz v15, :cond_11e

    .line 292
    :try_start_112
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_115} :catch_116

    goto :goto_11e

    :catch_116
    move-exception v0

    move-object v1, v0

    .line 295
    new-array v0, v8, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v11, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_11e
    :goto_11e
    return v10

    :cond_11f
    :try_start_11f
    const-string/jumbo v6, "x-am-code"

    .line 224
    invoke-virtual {v15, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "1000"

    .line 225
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_12c
    .catch Ljava/lang/Throwable; {:try_start_11f .. :try_end_12c} :catch_29c
    .catchall {:try_start_11f .. :try_end_12c} :catchall_298

    if-nez v12, :cond_163

    :try_start_12e
    const-string v0, "1007"

    .line 226
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_140

    const-string v0, "1008"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    goto :goto_140

    :cond_13f
    move v10, v9

    .line 227
    :cond_140
    :goto_140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v14, v2, v10}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_154
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_154} :catch_29c
    .catchall {:try_start_12e .. :try_end_154} :catchall_9d

    if-eqz v15, :cond_162

    .line 292
    :try_start_156
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_159} :catch_15a

    goto :goto_162

    :catch_15a
    move-exception v0

    move-object v1, v0

    .line 295
    new-array v0, v8, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v11, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_162
    :goto_162
    return v10

    :cond_163
    :try_start_163
    const-string/jumbo v12, "x-am-sign"

    .line 232
    invoke-virtual {v15, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 233
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_16e
    .catch Ljava/lang/Throwable; {:try_start_163 .. :try_end_16e} :catch_29c
    .catchall {:try_start_163 .. :try_end_16e} :catchall_298

    if-eqz v13, :cond_186

    :try_start_170
    const-string v0, "-1001"

    const-string v1, "response sign is empty"

    .line 234
    invoke-static {v0, v1, v14, v2, v9}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_177
    .catch Ljava/lang/Throwable; {:try_start_170 .. :try_end_177} :catch_29c
    .catchall {:try_start_170 .. :try_end_177} :catchall_9d

    if-eqz v15, :cond_185

    .line 292
    :try_start_179
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_17c} :catch_17d

    goto :goto_185

    :catch_17d
    move-exception v0

    move-object v1, v0

    .line 295
    new-array v0, v8, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v11, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_185
    :goto_185
    return v9

    .line 238
    :cond_186
    :try_start_186
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 239
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 238
    invoke-static {v13, v3}, Lanet/channel/strategy/dispatch/b;->a(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-static {v9}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v8
    :try_end_19a
    .catch Ljava/lang/Throwable; {:try_start_186 .. :try_end_19a} :catch_29c
    .catchall {:try_start_186 .. :try_end_19a} :catchall_298

    if-eqz v8, :cond_1ab

    :try_start_19c
    const-string v8, "amdc response body"

    .line 241
    new-array v13, v10, [Ljava/lang/Object;

    const-string v18, "\nbody"

    const/16 v17, 0x0

    aput-object v18, v13, v17

    aput-object v3, v13, v9

    invoke-static {v11, v8, v5, v13}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1ab
    .catch Ljava/lang/Throwable; {:try_start_19c .. :try_end_1ab} :catch_29c
    .catchall {:try_start_19c .. :try_end_1ab} :catchall_9d

    .line 244
    :cond_1ab
    :try_start_1ab
    array-length v1, v1
    :try_end_1ac
    .catch Ljava/lang/Throwable; {:try_start_1ab .. :try_end_1ac} :catch_29c
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_298

    move-object v8, v11

    int-to-long v10, v1

    :try_start_1ae
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1
    :try_end_1b2
    .catch Ljava/lang/Throwable; {:try_start_1ae .. :try_end_1b2} :catch_296
    .catchall {:try_start_1ae .. :try_end_1b2} :catchall_294

    move-object/from16 v18, v14

    int-to-long v13, v1

    :try_start_1b5
    invoke-static {v0, v10, v11, v13, v14}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;JJ)V

    .line 246
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    const-string v0, "-1002"

    const-string v1, "read answer error"
    :try_end_1c2
    .catch Ljava/lang/Throwable; {:try_start_1b5 .. :try_end_1c2} :catch_290
    .catchall {:try_start_1b5 .. :try_end_1c2} :catchall_294

    move-object/from16 v10, v18

    .line 247
    :try_start_1c4
    invoke-static {v0, v1, v10, v2, v9}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_1c7
    .catch Ljava/lang/Throwable; {:try_start_1c4 .. :try_end_1c7} :catch_28e
    .catchall {:try_start_1c4 .. :try_end_1c7} :catchall_294

    if-eqz v15, :cond_1d6

    .line 292
    :try_start_1c9
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1cc} :catch_1cd

    goto :goto_1d6

    :catch_1cd
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 295
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1d6
    :goto_1d6
    return v9

    :cond_1d7
    move-object/from16 v10, v18

    .line 253
    :try_start_1d9
    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->getSign()Lanet/channel/strategy/dispatch/IAmdcSign;

    move-result-object v0

    if-eqz v0, :cond_1e4

    .line 255
    invoke-interface {v0, v3}, Lanet/channel/strategy/dispatch/IAmdcSign;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1e5

    :cond_1e4
    const/4 v13, 0x0

    .line 257
    :goto_1e5
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_219

    const-string v0, "check ret sign failed"

    const/4 v1, 0x4

    .line 258
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "retSign"

    const/4 v6, 0x0

    aput-object v3, v1, v6

    aput-object v12, v1, v9

    const-string v3, "checkSign"

    const/4 v6, 0x2

    aput-object v3, v1, v6

    const/4 v3, 0x3

    aput-object v13, v1, v3

    invoke-static {v8, v0, v5, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "-1003"

    const-string v1, "check sign failed"

    .line 259
    invoke-static {v0, v1, v10, v2, v9}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_209
    .catch Ljava/lang/Throwable; {:try_start_1d9 .. :try_end_209} :catch_28e
    .catchall {:try_start_1d9 .. :try_end_209} :catchall_294

    if-eqz v15, :cond_218

    .line 292
    :try_start_20b
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_20e} :catch_20f

    goto :goto_218

    :catch_20f
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 295
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_218
    :goto_218
    return v9

    .line 264
    :cond_219
    :try_start_219
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 267
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v1

    if-eq v1, v7, :cond_241

    const-string v0, "env change, do not notify result"

    const/4 v1, 0x0

    .line 268
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v5, v3}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_232
    .catch Lorg/json/JSONException; {:try_start_219 .. :try_end_232} :catch_262
    .catch Ljava/lang/Throwable; {:try_start_219 .. :try_end_232} :catch_28e
    .catchall {:try_start_219 .. :try_end_232} :catchall_294

    if-eqz v15, :cond_240

    .line 292
    :try_start_234
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_237} :catch_238

    goto :goto_240

    :catch_238
    move-exception v0

    move-object v2, v0

    .line 295
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v4, v3, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_240
    :goto_240
    return v1

    .line 271
    :cond_241
    :try_start_241
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v1

    new-instance v3, Lanet/channel/strategy/dispatch/DispatchEvent;

    invoke-direct {v3, v9, v0}, Lanet/channel/strategy/dispatch/DispatchEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Lanet/channel/strategy/dispatch/HttpDispatcher;->a(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    :try_end_24d
    .catch Lorg/json/JSONException; {:try_start_241 .. :try_end_24d} :catch_262
    .catch Ljava/lang/Throwable; {:try_start_241 .. :try_end_24d} :catch_28e
    .catchall {:try_start_241 .. :try_end_24d} :catchall_294

    :try_start_24d
    const-string v0, "request success"

    const/4 v1, 0x0

    .line 279
    invoke-static {v6, v0, v10, v2, v1}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_253
    .catch Ljava/lang/Throwable; {:try_start_24d .. :try_end_253} :catch_28e
    .catchall {:try_start_24d .. :try_end_253} :catchall_294

    if-eqz v15, :cond_261

    .line 292
    :try_start_255
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_258
    .catch Ljava/lang/Exception; {:try_start_255 .. :try_end_258} :catch_259

    goto :goto_261

    :catch_259
    move-exception v0

    move-object v2, v0

    .line 295
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v4, v3, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_261
    :goto_261
    return v1

    .line 273
    :catch_262
    :try_start_262
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    new-instance v1, Lanet/channel/strategy/dispatch/DispatchEvent;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v6, v3}, Lanet/channel/strategy/dispatch/DispatchEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->a(Lanet/channel/strategy/dispatch/DispatchEvent;)V

    const-string v0, "resolve amdc anser failed"

    .line 274
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v5, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "-1004"

    const-string v1, "resolve answer failed"

    .line 275
    invoke-static {v0, v1, v10, v2, v9}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_27e
    .catch Ljava/lang/Throwable; {:try_start_262 .. :try_end_27e} :catch_28e
    .catchall {:try_start_262 .. :try_end_27e} :catchall_294

    if-eqz v15, :cond_28d

    .line 292
    :try_start_280
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_280 .. :try_end_283} :catch_284

    goto :goto_28d

    :catch_284
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    .line 295
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_28d
    :goto_28d
    return v9

    :catch_28e
    move-exception v0

    goto :goto_29f

    :catch_290
    move-exception v0

    move-object/from16 v10, v18

    goto :goto_29f

    :catchall_294
    move-exception v0

    goto :goto_29a

    :catch_296
    move-exception v0

    goto :goto_29e

    :catchall_298
    move-exception v0

    move-object v8, v11

    :goto_29a
    move-object v1, v0

    goto :goto_2db

    :catch_29c
    move-exception v0

    move-object v8, v11

    :goto_29e
    move-object v10, v14

    :goto_29f
    move-object v13, v15

    goto :goto_2ae

    :catch_2a1
    move-exception v0

    move-object v8, v11

    move-object v10, v14

    goto :goto_2ad

    :catchall_2a5
    move-exception v0

    move-object v8, v11

    move-object v1, v0

    const/4 v15, 0x0

    goto :goto_2db

    :catch_2aa
    move-exception v0

    move-object v8, v11

    const/4 v10, 0x0

    :goto_2ad
    const/4 v13, 0x0

    .line 282
    :goto_2ae
    :try_start_2ae
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2bc

    .line 284
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2bc
    const-string v3, "-1000"

    .line 286
    invoke-static {v3, v1, v10, v2, v9}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V

    const-string v1, "amdc request fail"

    const/4 v2, 0x0

    .line 287
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v8, v1, v5, v0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2c9
    .catchall {:try_start_2ae .. :try_end_2c9} :catchall_2d8

    if-eqz v13, :cond_2d7

    .line 292
    :try_start_2cb
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2ce
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_2ce} :catch_2cf

    goto :goto_2d7

    :catch_2cf
    move-exception v0

    move-object v1, v0

    .line 295
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8, v4, v2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2d7
    :goto_2d7
    return v9

    :catchall_2d8
    move-exception v0

    move-object v1, v0

    move-object v15, v13

    :goto_2db
    if-eqz v15, :cond_2ea

    .line 292
    :try_start_2dd
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2e0
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2e0} :catch_2e1

    goto :goto_2ea

    :catch_2e1
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    .line 295
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v4, v3, v2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 297
    :cond_2ea
    :goto_2ea
    throw v1
.end method

.method static a(Ljava/io/InputStream;Z)Ljava/lang/String;
    .registers 6

    .line 301
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 302
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {p0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    if-eqz p1, :cond_15

    .line 305
    :try_start_f
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p1

    .line 307
    :cond_15
    new-instance p1, Landroid/util/Base64InputStream;

    invoke-direct {p1, v0, v2}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_3f
    .catchall {:try_start_f .. :try_end_1a} :catchall_3d

    .line 308
    :try_start_1a
    new-array v0, v1, [B

    .line 310
    :goto_1c
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_27

    .line 311
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1c

    .line 313
    :cond_27
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_33} :catch_3a
    .catchall {:try_start_1a .. :try_end_33} :catchall_37

    .line 317
    :try_start_33
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_36

    :catch_36
    return-object v0

    :catchall_37
    move-exception p0

    move-object v0, p1

    goto :goto_4e

    :catch_3a
    move-exception p0

    move-object v0, p1

    goto :goto_40

    :catchall_3d
    move-exception p0

    goto :goto_4e

    :catch_3f
    move-exception p0

    :goto_40
    :try_start_40
    const-string p1, "awcn.DispatchCore"

    const-string v1, ""

    .line 315
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, p0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_3d

    .line 317
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4d

    :catch_4d
    return-object v3

    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_51

    .line 318
    :catch_51
    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 140
    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->isForceHttps()Z

    move-result v1

    const-string v2, "https"

    if-nez v1, :cond_22

    const/4 v1, 0x2

    if-ne p4, v1, :cond_22

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_22

    sget-object p4, Lanet/channel/strategy/dispatch/b;->c:Ljava/util/Random;

    invoke-virtual {p4}, Ljava/util/Random;->nextBoolean()Z

    move-result p4

    if-eqz p4, :cond_22

    const-string p0, "http"

    .line 144
    :cond_22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "://"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6a

    .line 146
    invoke-static {}, Lanet/channel/util/c;->a()Z

    move-result p4

    if-eqz p4, :cond_3c

    invoke-static {p1}, Lanet/channel/strategy/utils/c;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3c

    .line 148
    :try_start_38
    invoke-static {p1}, Lanet/channel/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_3c

    .line 153
    :catch_3c
    :cond_3c
    invoke-static {p1}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_50

    const/16 p4, 0x5b

    .line 155
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 157
    :cond_50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_53
    if-nez p2, :cond_61

    .line 161
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5e

    const/16 p0, 0x1bb

    goto :goto_60

    :cond_5e
    const/16 p0, 0x50

    :goto_60
    move p2, p0

    :cond_61
    const-string p0, ":"

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 166
    :cond_6a
    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_71
    const-string p0, "/amdc/mobileDispatch"

    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    const-string p1, "appkey"

    .line 171
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "v"

    .line 172
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "platform"

    .line 173
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3f

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "utf-8"

    .line 176
    invoke-static {p0, p1}, Lanet/channel/strategy/utils/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 70
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isProxy()Z

    move-result v1

    if-nez v1, :cond_34

    .line 71
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 74
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 75
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/IConnStrategy;

    .line 76
    invoke-interface {v2}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    iget-object v2, v2, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 77
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_18

    :cond_34
    return-object v0
.end method

.method static a(Ljava/lang/String;JJ)V
    .registers 7

    .line 343
    :try_start_0
    new-instance v0, Lanet/channel/flow/FlowStat;

    invoke-direct {v0}, Lanet/channel/flow/FlowStat;-><init>()V

    const-string v1, "amdc"

    .line 344
    iput-object v1, v0, Lanet/channel/flow/FlowStat;->refer:Ljava/lang/String;

    const-string v1, "http"

    .line 345
    iput-object v1, v0, Lanet/channel/flow/FlowStat;->protocoltype:Ljava/lang/String;

    .line 346
    iput-object p0, v0, Lanet/channel/flow/FlowStat;->req_identifier:Ljava/lang/String;

    .line 347
    iput-wide p1, v0, Lanet/channel/flow/FlowStat;->upstream:J

    .line 348
    iput-wide p3, v0, Lanet/channel/flow/FlowStat;->downstream:J

    .line 349
    invoke-static {}, Lanet/channel/flow/NetworkAnalysis;->getInstance()Lanet/channel/flow/INetworkAnalysis;

    move-result-object p0

    invoke-interface {p0, v0}, Lanet/channel/flow/INetworkAnalysis;->commitFlow(Lanet/channel/flow/FlowStat;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_27

    :catch_1b
    move-exception p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 351
    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "awcn.DispatchCore"

    const-string p4, "commit flow info failed!"

    invoke-static {p3, p4, p1, p0, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_27
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    .registers 6

    const/4 v0, 0x1

    if-ne p4, v0, :cond_6

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2c

    .line 324
    :cond_6
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result p4

    if-eqz p4, :cond_2c

    .line 326
    :try_start_c
    new-instance p4, Lanet/channel/statist/AmdcStatistic;

    invoke-direct {p4}, Lanet/channel/statist/AmdcStatistic;-><init>()V

    .line 327
    iput-object p0, p4, Lanet/channel/statist/AmdcStatistic;->errorCode:Ljava/lang/String;

    .line 328
    iput-object p1, p4, Lanet/channel/statist/AmdcStatistic;->errorMsg:Ljava/lang/String;

    if-eqz p2, :cond_23

    .line 330
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lanet/channel/statist/AmdcStatistic;->host:Ljava/lang/String;

    .line 331
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lanet/channel/statist/AmdcStatistic;->url:Ljava/lang/String;

    .line 333
    :cond_23
    iput p3, p4, Lanet/channel/statist/AmdcStatistic;->retryTimes:I

    .line 334
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p0

    invoke-interface {p0, p4}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .registers 12

    if-nez p0, :cond_3

    return-void

    .line 90
    :cond_3
    invoke-static {}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->isForceHttps()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "https"

    goto :goto_1a

    .line 93
    :cond_c
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-interface {v0, v1, v2}, Lanet/channel/strategy/IStrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_1a
    invoke-static {v0}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    const/4 v4, 0x3

    if-ge v3, v4, :cond_91

    .line 99
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v5, :cond_4e

    .line 104
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_39

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lanet/channel/strategy/IConnStrategy;

    goto :goto_3a

    :cond_39
    move-object v7, v6

    :goto_3a
    if-eqz v7, :cond_49

    .line 109
    invoke-interface {v7}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v8

    invoke-static {v0, v6, v8, v4, v3}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6c

    .line 111
    :cond_49
    invoke-static {v0, v6, v2, v4, v3}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6c

    .line 114
    :cond_4e
    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerFixIp()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_65

    .line 115
    array-length v8, v7

    if-lez v8, :cond_65

    .line 116
    sget-object v8, Lanet/channel/strategy/dispatch/b;->c:Ljava/util/Random;

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v0, v7, v2, v4, v3}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_69

    .line 118
    :cond_65
    invoke-static {v0, v6, v2, v4, v3}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v7

    :goto_69
    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    .line 122
    :goto_6c
    invoke-static {v6, v4, v3}, Lanet/channel/strategy/dispatch/b;->a(Ljava/lang/String;Ljava/util/Map;I)I

    move-result v4

    if-eqz v7, :cond_89

    .line 125
    new-instance v6, Lanet/channel/strategy/ConnEvent;

    invoke-direct {v6}, Lanet/channel/strategy/ConnEvent;-><init>()V

    if-nez v4, :cond_7b

    const/4 v8, 0x1

    goto :goto_7c

    :cond_7b
    move v8, v2

    .line 126
    :goto_7c
    iput-boolean v8, v6, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 127
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v8

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7, v6}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    :cond_89
    if-eqz v4, :cond_91

    if-ne v4, v5, :cond_8e

    goto :goto_91

    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_91
    :goto_91
    return-void
.end method
