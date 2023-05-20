.class public Lcom/alibaba/sdk/android/tbrest/rest/f;
.super Ljava/lang/Object;
.source "RestReqSend.java"


# direct methods
.method public static a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "sendLogByUrl RestAPI start send log!"

    .line 152
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object v2, p0

    move-object/from16 v3, p2

    move-object v4, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    .line 155
    invoke-static/range {v2 .. v13}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/tbrest/rest/d;

    move-result-object v0

    if-eqz v0, :cond_5e

    const-string v2, "sendLogByUrl RestAPI build data succ!"

    .line 158
    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/d;->a()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_31

    const-string v0, "sendLogByUrl postReqData is null!"

    .line 162
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object v1

    .line 166
    :cond_31
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v0, "sendLogByUrl reqUrl is null!"

    .line 168
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object v1

    :cond_41
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 172
    invoke-static {v3, v0, v2, v4}, Lcom/alibaba/sdk/android/tbrest/rest/b;->a(ILjava/lang/String;Ljava/util/Map;Z)[B

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_47} :catch_64

    if-eqz v0, :cond_6a

    .line 177
    :try_start_49
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 178
    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_49 .. :try_end_54} :catch_57
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_54} :catch_64

    if-nez v0, :cond_6a

    return-object v2

    :catch_57
    move-exception v0

    :try_start_58
    const-string v2, "sendLogByUrl result encoding UTF-8 error!"

    .line 182
    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    :cond_5e
    const-string v0, "sendLogByUrl UTRestAPI build data failure!"

    .line 186
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_63} :catch_64

    goto :goto_6a

    :catch_64
    move-exception v0

    const-string v2, "sendLogByUrl system error!"

    .line 189
    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    return-object v1
.end method

.method public static a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v11, p0

    :try_start_1
    const-string v0, "RestAPI start send log!"

    .line 47
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 49
    invoke-static/range {v1 .. v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "RestAPI build data succ!"

    .line 51
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 54
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_32} :catch_5a

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p2

    .line 58
    :try_start_35
    invoke-static {p0, p1, p2, v1}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_3a
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_39} :catch_5a

    goto :goto_43

    :catch_3a
    move-exception v0

    move-object v1, v0

    .line 60
    :try_start_3c
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_43
    if-eqz v2, :cond_61

    const-string v0, "packRequest success!"

    .line 64
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object v1, p3

    .line 65
    invoke-static {p0, p3, v2}, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->sendRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->isSuccess()Z

    move-result v0

    return v0

    :cond_54
    const-string v0, "UTRestAPI build data failure!"

    .line 69
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_59} :catch_5a

    goto :goto_61

    :catch_5a
    move-exception v0

    const-string/jumbo v1, "system error!"

    .line 72
    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v11, p0

    move-object v12, p1

    :try_start_2
    const-string v0, "RestAPI start send log by url!"

    .line 94
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 96
    invoke-static/range {v1 .. v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "RestAPI build data succ by url!"

    .line 98
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 101
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_33} :catch_5b

    const/4 v2, 0x0

    move-object v0, p2

    .line 105
    :try_start_35
    invoke-static {p0, p1, p2, v1}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_3a
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_39} :catch_5b

    goto :goto_43

    :catch_3a
    move-exception v0

    move-object v1, v0

    .line 107
    :try_start_3c
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_43
    if-eqz v2, :cond_62

    const-string v0, "packRequest success by url!"

    .line 111
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 112
    invoke-static {p0, p1, v1, v2}, Lcom/alibaba/sdk/android/tbrest/request/UrlWrapper;->sendRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;[B)Lcom/alibaba/sdk/android/tbrest/request/BizResponse;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->isSuccess()Z

    move-result v0

    return v0

    :cond_55
    const-string v0, "UTRestAPI build data failure by url!"

    .line 116
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_5a} :catch_5b

    goto :goto_62

    :catch_5b
    move-exception v0

    const-string/jumbo v1, "system error by url!"

    .line 119
    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    const/4 v0, 0x0

    return v0
.end method
