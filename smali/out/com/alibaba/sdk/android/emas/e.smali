.class public Lcom/alibaba/sdk/android/emas/e;
.super Ljava/lang/Object;
.source "EmasSingleLog.java"


# instance fields
.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/e;->e:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/alibaba/sdk/android/emas/e;->d:Ljava/lang/String;

    .line 18
    iput-wide p3, p0, Lcom/alibaba/sdk/android/emas/e;->timestamp:J

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/alibaba/sdk/android/emas/e;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "eventId"

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rawLog"

    .line 51
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    .line 52
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_30

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_30

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_2a

    goto :goto_30

    .line 58
    :cond_2a
    new-instance p0, Lcom/alibaba/sdk/android/emas/e;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/alibaba/sdk/android/emas/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p0

    :cond_30
    :goto_30
    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 5

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "eventId"

    .line 36
    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rawLog"

    .line 37
    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "timestamp"

    .line 38
    iget-wide v2, p0, Lcom/alibaba/sdk/android/emas/e;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public length()I
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/e;->d:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method
