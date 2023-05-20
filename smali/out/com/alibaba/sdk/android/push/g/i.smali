.class public Lcom/alibaba/sdk/android/push/g/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/push/common/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    sget-object v0, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/f;->a:Lcom/alibaba/sdk/android/push/common/a/f;

    const-string v2, "OK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/f;->b:Lcom/alibaba/sdk/android/push/common/a/f;

    const-string v2, "MissingParam"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/f;->c:Lcom/alibaba/sdk/android/push/common/a/f;

    const-string v2, "InvalidParam"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/f;->d:Lcom/alibaba/sdk/android/push/common/a/f;

    const-string v2, "SignNotMatch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/f;->e:Lcom/alibaba/sdk/android/push/common/a/f;

    const-string v2, "TagError"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/f;->f:Lcom/alibaba/sdk/android/push/common/a/f;

    const-string v2, "AliasError"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/f;->g:Lcom/alibaba/sdk/android/push/common/a/f;

    const-string v2, "InternalError"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(IILjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "data"

    const/16 v1, 0xc8

    const-string v2, "null"

    const/4 v3, 0x1

    if-ne p1, v1, :cond_93

    :try_start_9
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "OK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/push/g/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    const-string p0, ""

    return-object p0

    :cond_2e
    const-string p0, "message"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    new-instance p1, Lcom/alibaba/sdk/android/push/b/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alibaba/sdk/android/push/common/a/f;->s:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_58

    move-object p0, v2

    :cond_58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->s:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    invoke-direct {p1, p0, v0, v3}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw p1

    :cond_69
    sget-object p1, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/push/common/a/f;

    new-instance v0, Lcom/alibaba/sdk/android/push/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result p1

    invoke-direct {v0, p0, p1, v3}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw v0

    :cond_93
    new-instance p0, Lcom/alibaba/sdk/android/push/b/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got http error return, with http errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    invoke-direct {p0, p1, v0, v3}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw p0
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_b0} :catch_b0

    :catch_b0
    new-instance p0, Lcom/alibaba/sdk/android/push/b/e;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u7ed3\u679c\u89e3\u6790\u51fa\u9519: content="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_c0

    move-object p2, v2

    :cond_c0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/f;->i:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result p2

    invoke-direct {p0, p1, p2, v3}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw p0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "null"

    const-string/jumbo v1, "\u7ed3\u679c\u89e3\u6790\u51fa\u9519: content="

    const/4 v2, 0x1

    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alibaba/sdk/android/push/common/util/a/d;->m:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v4

    if-ne p0, v4, :cond_1b

    const-string/jumbo p0, "tags"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    sget-object v4, Lcom/alibaba/sdk/android/push/common/util/a/d;->n:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v4

    if-ne p0, v4, :cond_2a

    const-string p0, "alias"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    sget-object v4, Lcom/alibaba/sdk/android/push/common/util/a/d;->b:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v4

    if-ne p0, v4, :cond_39

    const-string p0, "deviceId"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    sget-object v4, Lcom/alibaba/sdk/android/push/common/util/a/d;->q:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v4

    if-ne p0, v4, :cond_50

    const-string/jumbo p0, "status"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const-string p0, "on"

    return-object p0

    :cond_4d
    const-string p0, "off"

    return-object p0

    :cond_50
    new-instance p0, Lcom/alibaba/sdk/android/push/b/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5e

    move-object v4, v0

    goto :goto_5f

    :cond_5e
    move-object v4, p1

    :goto_5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/sdk/android/push/common/a/f;->i:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw p0
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_70} :catch_70

    :catch_70
    new-instance p0, Lcom/alibaba/sdk/android/push/b/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_7d

    move-object p1, v0

    :cond_7d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->i:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw p0
.end method

.method public static a(ILjava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 8

    const-string v0, "data"

    const-string v1, "null"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_9c

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/g/i;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_df
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_12} :catch_bd

    :try_start_12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/push/g/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    const-string p0, ""

    return-object p0

    :cond_37
    const-string p0, "message"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    new-instance v0, Lcom/alibaba/sdk/android/push/b/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/alibaba/sdk/android/push/common/a/f;->r:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "code: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " errorMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_61

    move-object p0, v1

    :cond_61
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/f;->r:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v3

    invoke-direct {v0, p0, v3, v2}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw v0

    :cond_72
    sget-object v0, Lcom/alibaba/sdk/android/push/g/i;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/push/common/a/f;

    new-instance v3, Lcom/alibaba/sdk/android/push/b/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    invoke-direct {v3, p0, v0, v2}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw v3
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_9c} :catch_df
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_9c} :catch_be

    :cond_9c
    :try_start_9c
    new-instance p0, Lcom/alibaba/sdk/android/push/b/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got http error return, with http errorCode:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw p0
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_bd} :catch_df
    .catch Lorg/json/JSONException; {:try_start_9c .. :try_end_bd} :catch_bd

    :catch_bd
    move-object p1, v3

    :catch_be
    new-instance p0, Lcom/alibaba/sdk/android/push/b/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7ed3\u679c\u89e3\u6790\u51fa\u9519: content="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_ce

    move-object p1, v1

    :cond_ce
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->i:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw p0

    :catch_df
    new-instance p0, Lcom/alibaba/sdk/android/push/b/e;

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/f;->h:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result p1

    const-string v0, "network Io error"

    invoke-direct {p0, v0, p1, v2}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw p0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const/16 v0, 0x400

    new-array v1, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1b

    goto :goto_20

    :cond_1b
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_d

    :cond_20
    :goto_20
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method
