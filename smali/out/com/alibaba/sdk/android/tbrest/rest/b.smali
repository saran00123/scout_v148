.class public Lcom/alibaba/sdk/android/tbrest/rest/b;
.super Ljava/lang/Object;
.source "RestHttpUtils.java"


# direct methods
.method public static a(ILjava/lang/String;Ljava/util/Map;Z)[B
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)[B"
        }
    .end annotation

    move/from16 v1, p0

    move-object/from16 v2, p2

    const-string/jumbo v3, "write out error!"

    const-string v4, "connection error!"

    const-string v5, "out close error!"

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_13

    return-object v6

    .line 68
    :cond_13
    :try_start_13
    new-instance v0, Ljava/net/URL;

    move-object/from16 v7, p1

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_21
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_21} :catch_242
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_21} :catch_23d

    if-eqz v7, :cond_23b

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v1, v10, :cond_2a

    if-ne v1, v8, :cond_2d

    .line 80
    :cond_2a
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 82
    :cond_2d
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eq v1, v10, :cond_3b

    if-ne v1, v8, :cond_35

    goto :goto_3b

    :cond_35
    :try_start_35
    const-string v0, "GET"

    .line 87
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_40

    :cond_3b
    :goto_3b
    const-string v0, "POST"

    .line 85
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/net/ProtocolException; {:try_start_35 .. :try_end_40} :catch_235

    :goto_40
    const/4 v4, 0x0

    .line 93
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v0, 0x2710

    .line 94
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v0, 0xea60

    .line 95
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "Connection"

    const-string v11, "close"

    .line 96
    invoke-virtual {v7, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5f

    const-string v0, "Accept-Encoding"

    const-string v11, "gzip,deflate"

    .line 98
    invoke-virtual {v7, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_5f
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eq v1, v10, :cond_66

    if-ne v1, v8, :cond_165

    :cond_66
    const-string v0, "Content-Type"

    if-ne v1, v10, :cond_70

    const-string v11, "multipart/form-data; boundary=GJircTeP"

    .line 107
    invoke-virtual {v7, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_70
    if-ne v1, v8, :cond_77

    const-string v11, "application/x-www-form-urlencoded"

    .line 109
    invoke-virtual {v7, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    :goto_77
    if-eqz v2, :cond_156

    .line 113
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_156

    .line 114
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    .line 118
    invoke-interface {v0, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/rest/c;->a()Lcom/alibaba/sdk/android/tbrest/rest/c;

    move-result-object v0

    invoke-virtual {v0, v12, v9}, Lcom/alibaba/sdk/android/tbrest/rest/c;->a([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v12

    .line 122
    array-length v13, v12

    move v14, v4

    :goto_9b
    const-string/jumbo v15, "write lBaos error!"

    if-ge v14, v13, :cond_140

    aget-object v0, v12, v14

    if-ne v1, v10, :cond_e2

    .line 124
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    move-object/from16 v6, v16

    check-cast v6, [B

    if-eqz v6, :cond_df

    :try_start_b0
    const-string v8, "--GJircTeP\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n"
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b2} :catch_d8

    .line 127
    :try_start_b2
    new-array v9, v10, [Ljava/lang/Object;

    aput-object v0, v9, v4
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b6} :catch_d4

    const/16 v16, 0x1

    :try_start_b8
    aput-object v0, v9, v16

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v0, "\r\n"

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_d1} :catch_d2

    goto :goto_137

    :catch_d2
    move-exception v0

    goto :goto_db

    :catch_d4
    move-exception v0

    const/16 v16, 0x1

    goto :goto_db

    :catch_d8
    move-exception v0

    move/from16 v16, v9

    .line 131
    :goto_db
    invoke-static {v15, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_137

    :cond_df
    move/from16 v16, v9

    goto :goto_137

    :cond_e2
    move v6, v8

    move/from16 v16, v9

    if-ne v1, v6, :cond_137

    .line 135
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 136
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    const-string v9, "="

    if-lez v8, :cond_119

    .line 138
    :try_start_f5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_113} :catch_114

    goto :goto_137

    :catch_114
    move-exception v0

    .line 140
    invoke-static {v15, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_137

    .line 144
    :cond_119
    :try_start_119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_132} :catch_133

    goto :goto_137

    :catch_133
    move-exception v0

    .line 146
    invoke-static {v15, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_137
    :goto_137
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v16

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    goto/16 :goto_9b

    :cond_140
    if-ne v1, v10, :cond_150

    :try_start_142
    const-string v0, "--GJircTeP--\r\n"

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_14b} :catch_14c

    goto :goto_150

    :catch_14c
    move-exception v0

    .line 156
    invoke-static {v15, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    :cond_150
    :goto_150
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    move-object v6, v0

    goto :goto_157

    :cond_156
    const/4 v6, 0x0

    :goto_157
    if-eqz v6, :cond_15b

    .line 161
    array-length v4, v6

    goto :goto_15c

    :cond_15b
    const/4 v4, 0x0

    .line 163
    :goto_15c
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Content-Length"

    invoke-virtual {v7, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_165
    :try_start_165
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    if-eq v1, v10, :cond_16d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18c

    :cond_16d
    if-eqz v6, :cond_18c

    .line 171
    array-length v0, v6

    if-lez v0, :cond_18c

    .line 173
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_17b} :catch_213
    .catchall {:try_start_165 .. :try_end_17b} :catchall_20e

    .line 174
    :try_start_17b
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 175
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_181} :catch_188
    .catchall {:try_start_17b .. :try_end_181} :catchall_182

    goto :goto_18d

    :catchall_182
    move-exception v0

    move-object/from16 v17, v1

    move-object v1, v0

    goto/16 :goto_229

    :catch_188
    move-exception v0

    move-object v6, v1

    goto/16 :goto_215

    :cond_18c
    const/4 v1, 0x0

    :goto_18d
    if-eqz v1, :cond_198

    .line 183
    :try_start_18f
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_193

    goto :goto_198

    :catch_193
    move-exception v0

    move-object v1, v0

    .line 185
    invoke-static {v5, v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    :cond_198
    :goto_198
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_1b5

    :try_start_19f
    const-string v0, "gzip"

    .line 195
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 196
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1be

    .line 198
    :cond_1b5
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1be} :catch_1ec
    .catchall {:try_start_19f .. :try_end_1be} :catchall_1e7

    :goto_1be
    move-object v6, v0

    const/16 v0, 0x800

    .line 200
    :try_start_1c1
    new-array v2, v0, [B

    const/4 v4, 0x0

    .line 202
    :goto_1c4
    invoke-virtual {v6, v2, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1cf

    .line 203
    invoke-virtual {v1, v2, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1ce} :catch_1e5
    .catchall {:try_start_1c1 .. :try_end_1ce} :catchall_1fe

    goto :goto_1c4

    .line 211
    :cond_1cf
    :try_start_1cf
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d2} :catch_1d3

    goto :goto_1d8

    :catch_1d3
    move-exception v0

    move-object v2, v0

    .line 213
    invoke-static {v5, v2}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :goto_1d8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_1e3

    .line 219
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_1e3
    const/4 v1, 0x0

    return-object v1

    :catch_1e5
    move-exception v0

    goto :goto_1ee

    :catchall_1e7
    move-exception v0

    move-object v1, v0

    const/16 v17, 0x0

    goto :goto_202

    :catch_1ec
    move-exception v0

    const/4 v6, 0x0

    .line 206
    :goto_1ee
    :try_start_1ee
    invoke-static {v3, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f1
    .catchall {:try_start_1ee .. :try_end_1f1} :catchall_1fe

    if-eqz v6, :cond_1fc

    .line 211
    :try_start_1f3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1f6} :catch_1f7

    goto :goto_1fc

    :catch_1f7
    move-exception v0

    move-object v1, v0

    .line 213
    invoke-static {v5, v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1fc
    :goto_1fc
    const/4 v1, 0x0

    return-object v1

    :catchall_1fe
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v6

    :goto_202
    if-eqz v17, :cond_20d

    .line 211
    :try_start_204
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_207} :catch_208

    goto :goto_20d

    :catch_208
    move-exception v0

    move-object v2, v0

    .line 213
    invoke-static {v5, v2}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    :cond_20d
    :goto_20d
    throw v1

    :catchall_20e
    move-exception v0

    move-object v1, v0

    const/16 v17, 0x0

    goto :goto_229

    :catch_213
    move-exception v0

    const/4 v6, 0x0

    .line 178
    :goto_215
    :try_start_215
    invoke-static {v3, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_218
    .catchall {:try_start_215 .. :try_end_218} :catchall_225

    if-eqz v6, :cond_223

    .line 183
    :try_start_21a
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_21d} :catch_21e

    goto :goto_223

    :catch_21e
    move-exception v0

    move-object v1, v0

    .line 185
    invoke-static {v5, v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_223
    :goto_223
    const/4 v1, 0x0

    return-object v1

    :catchall_225
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v6

    :goto_229
    if-eqz v17, :cond_234

    .line 183
    :try_start_22b
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->close()V
    :try_end_22e
    .catch Ljava/io/IOException; {:try_start_22b .. :try_end_22e} :catch_22f

    goto :goto_234

    :catch_22f
    move-exception v0

    move-object v2, v0

    .line 185
    invoke-static {v5, v2}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :cond_234
    :goto_234
    throw v1

    :catch_235
    move-exception v0

    .line 90
    invoke-static {v4, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_239
    const/4 v1, 0x0

    return-object v1

    :cond_23b
    move-object v1, v6

    return-object v1

    :catch_23d
    move-exception v0

    .line 74
    invoke-static {v4, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_239

    :catch_242
    move-exception v0

    move-object v1, v6

    .line 71
    invoke-static {v4, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
