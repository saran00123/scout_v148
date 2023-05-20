.class public Lcom/huawei/hms/framework/network/grs/g/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final n:Ljava/lang/String; = "e"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:[B

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/Exception;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/Map;[BJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[BJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->h:I

    const/16 v0, 0x2329

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->j:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->k:J

    iput p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->c:I

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/g/e;->a:Ljava/util/Map;

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->b:[B

    iput-wide p4, p0, Lcom/huawei/hms/framework/network/grs/g/e;->d:J

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->q()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->h:I

    const/16 v0, 0x2329

    iput v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->j:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->k:J

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->l:Ljava/lang/Exception;

    iput-wide p2, p0, Lcom/huawei/hms/framework/network/grs/g/e;->d:J

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto/16 :goto_e5

    :cond_a
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_57

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b9

    const-string v0, "max-age="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b9

    :try_start_2c
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_3a} :catch_4d

    :try_start_3a
    sget-object p1, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3c} :catch_4b

    const-string v8, "Cache-Control value{%s}"

    :try_start_3e
    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {p1, v8, v9}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_49} :catch_4b

    goto/16 :goto_ba

    :catch_4b
    move-exception p1

    goto :goto_4f

    :catch_4d
    move-exception p1

    move-wide v0, v4

    :goto_4f
    sget-object v8, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v9, "getExpireTime addHeadersToResult NumberFormatException"

    invoke-static {v8, v9, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ba

    :cond_57
    const-string v0, "Expires"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v0, v8, v6

    const-string v9, "expires is{%s}"

    invoke-static {v1, v9, v8}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "EEE, d MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v1, v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v8, 0x0

    const-string v9, "Date"

    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_89

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    :cond_89
    :try_start_89
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_99

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_9d

    :cond_99
    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :goto_9d
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v8, v0

    div-long v0, v8, v2
    :try_end_a8
    .catch Ljava/text/ParseException; {:try_start_89 .. :try_end_a8} :catch_a9

    goto :goto_ba

    :catch_a9
    move-exception p1

    sget-object v0, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v1, "getExpireTime ParseException."

    invoke-static {v0, v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b9

    :cond_b2
    sget-object p1, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v0, "response headers neither contains Cache-Control nor Expires."

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b9
    :goto_b9
    move-wide v0, v4

    :goto_ba
    cmp-long p1, v0, v4

    if-lez p1, :cond_c5

    const-wide/32 v4, 0x278d00

    cmp-long p1, v0, v4

    if-lez p1, :cond_c8

    :cond_c5
    const-wide/32 v0, 0x15180

    :cond_c8
    mul-long/2addr v0, v2

    sget-object p1, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "convert expireTime{%s}"

    invoke-static {p1, v3, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/g/e;->b(Ljava/lang/String;)V

    return-void

    :cond_e5
    :goto_e5
    sget-object p1, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v0, "getExpireTime {headers == null} or {headers.size() <= 0}"

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->i:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->j:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_44

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_44

    :cond_9
    const-wide/16 v0, 0x0

    const-string v2, "Retry-After"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    :try_start_1f
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception p1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v3, "getRetryAfter addHeadersToResult NumberFormatException"

    invoke-static {v2, v3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-object p1, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "convert retry-afterTime{%s}"

    invoke-static {p1, v3, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/huawei/hms/framework/network/grs/g/e;->c(J)V

    return-void

    :cond_44
    :goto_44
    sget-object p1, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v0, "getExpireTime {headers == null} or {headers.size() <= 0}"

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private c(I)V
    .registers 2

    iput p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->h:I

    return-void
.end method

.method private c(J)V
    .registers 3

    iput-wide p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->k:J

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->g:Ljava/lang/String;

    return-void
.end method

.method private n()V
    .registers 11

    const-string v0, "errorDesc"

    const-string v1, "errorList"

    const-string v2, "errorCode"

    const-string v3, "resultCode"

    const-string v4, "isSuccess"

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->m()Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_1c

    sget-object v0, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v1, "GRSSDK parse server body all failed."

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v6}, Lcom/huawei/hms/framework/network/grs/g/e;->c(I)V

    return-void

    :cond_1c
    :try_start_1c
    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/g/e;->b:[B

    invoke-static {v5}, Lcom/huawei/hms/framework/common/StringUtils;->byte2Str([B)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v8, -0x1

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    :goto_32
    move v8, v3

    goto :goto_46

    :cond_34
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_32

    :cond_3f
    sget-object v3, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v4, "sth. wrong because server errorcode\'s key."

    invoke-static {v3, v4}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_46
    invoke-direct {p0, v8}, Lcom/huawei/hms/framework/network/grs/g/e;->c(I)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_49} :catch_9a

    const/4 v3, 0x1

    const-string v4, "services"

    if-nez v8, :cond_56

    :try_start_4e
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_52} :catch_9a

    if-eqz v5, :cond_56

    move v5, v3

    goto :goto_57

    :cond_56
    const/4 v5, 0x0

    :goto_57
    const-string v9, ""

    if-eq v8, v3, :cond_7f

    if-eqz v5, :cond_5e

    goto :goto_7f

    :cond_5e
    :try_start_5e
    invoke-direct {p0, v6}, Lcom/huawei/hms/framework/network/grs/g/e;->c(I)V

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_6e

    :cond_6c
    const/16 v1, 0x2329

    :goto_6e
    invoke-direct {p0, v1}, Lcom/huawei/hms/framework/network/grs/g/e;->b(I)V

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_7b
    invoke-direct {p0, v9}, Lcom/huawei/hms/framework/network/grs/g/e;->c(Ljava/lang/String;)V

    goto :goto_a5

    :cond_7f
    :goto_7f
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/framework/network/grs/g/e;->e(Ljava/lang/String;)V

    if-eqz v5, :cond_a5

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_96
    invoke-direct {p0, v9}, Lcom/huawei/hms/framework/network/grs/g/e;->d(Ljava/lang/String;)V
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_99} :catch_9a

    goto :goto_a5

    :catch_9a
    move-exception v0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v2, "GrsResponse GrsResponse(String result) JSONException"

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v6}, Lcom/huawei/hms/framework/network/grs/g/e;->c(I)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method private o()V
    .registers 4

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->m()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->l()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->p()Ljava/util/Map;

    move-result-object v0

    :try_start_11
    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->m()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0, v0}, Lcom/huawei/hms/framework/network/grs/g/e;->a(Ljava/util/Map;)V

    :cond_1a
    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->l()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0, v0}, Lcom/huawei/hms/framework/network/grs/g/e;->b(Ljava/util/Map;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception v0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v2, "parseHeader catch JSONException"

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private p()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->a:Ljava/util/Map;

    if-eqz v1, :cond_3e

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_12

    goto :goto_3e

    :cond_12
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_3d
    return-object v0

    :cond_3e
    :goto_3e
    sget-object v1, Lcom/huawei/hms/framework/network/grs/g/e;->n:Ljava/lang/String;

    const-string v2, "parseRespHeaders {respHeaders == null} or {respHeaders.size() <= 0}"

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private q()V
    .registers 1

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->o()V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->n()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->f:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->m:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->c:I

    return v0
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/huawei/hms/framework/network/grs/g/e;->e:J

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->i:I

    return v0
.end method

.method public d()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->l:Ljava/lang/Exception;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->h:I

    return v0
.end method

.method public f()J
    .registers 3

    iget-wide v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->f:J

    return-wide v0
.end method

.method public g()J
    .registers 3

    iget-wide v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->e:J

    return-wide v0
.end method

.method public h()J
    .registers 3

    iget-wide v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->d:J

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()J
    .registers 3

    iget-wide v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->k:J

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .registers 3

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->c:I

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public m()Z
    .registers 3

    iget v0, p0, Lcom/huawei/hms/framework/network/grs/g/e;->c:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
