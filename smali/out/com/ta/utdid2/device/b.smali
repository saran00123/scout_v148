.class Lcom/ta/utdid2/device/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field e:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/ta/utdid2/device/b;->e:I

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/ta/utdid2/device/b;
    .registers 9

    const-string v0, "utdid"

    const-string v1, "data"

    const-string v2, "code"

    .line 27
    new-instance v3, Lcom/ta/utdid2/device/b;

    invoke-direct {v3}, Lcom/ta/utdid2/device/b;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 29
    :try_start_d
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 31
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/ta/utdid2/device/b;->e:I

    .line 33
    :cond_1e
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 34
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 36
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 37
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 39
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 41
    invoke-static {v0}, Lcom/ta/a/d/e;->a(Ljava/lang/String;)V

    .line 42
    invoke-static {v1, v0}, Lcom/ta/a/d/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Lcom/ta/a/d/e;->b(Ljava/lang/String;)V

    :cond_4b
    const-string v0, "BizResponse"

    const/4 v1, 0x2

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "content"

    aput-object v2, v1, v4

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_59} :catch_5a

    goto :goto_68

    :catch_5a
    move-exception p0

    .line 51
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, ""

    invoke-static {p0, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_68
    return-object v3
.end method

.method static b(I)Z
    .registers 2

    if-ltz p0, :cond_8

    const/16 v0, 0x271c

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
