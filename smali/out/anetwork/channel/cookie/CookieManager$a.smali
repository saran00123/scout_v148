.class Lanetwork/channel/cookie/CookieManager$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/cookie/CookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 9

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lanetwork/channel/cookie/CookieManager$a;->a:Ljava/lang/String;

    .line 235
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->c()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "networksdk_cookie_monitor"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 238
    :try_start_16
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lanetwork/channel/cookie/CookieManager$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p1, p0, Lanetwork/channel/cookie/CookieManager$a;->a:Ljava/lang/String;

    const-string v3, "cookieName"

    .line 240
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    const-string/jumbo p1, "time"

    .line 241
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lanetwork/channel/cookie/CookieManager$a;->e:J

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lanetwork/channel/cookie/CookieManager$a;->e:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    cmp-long p1, v3, v5

    if-gez p1, :cond_61

    const-string p1, "cookieText"

    .line 243
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/cookie/CookieManager$a;->b:Ljava/lang/String;

    const-string p1, "setCookie"

    .line 244
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/cookie/CookieManager$a;->c:Ljava/lang/String;

    const-string p1, "domain"

    .line 245
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/cookie/CookieManager$a;->d:Ljava/lang/String;

    goto :goto_80

    :cond_61
    const-wide/16 v2, 0x0

    .line 247
    iput-wide v2, p0, Lanetwork/channel/cookie/CookieManager$a;->e:J

    .line 248
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->c()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_74} :catch_75

    goto :goto_80

    :catch_75
    move-exception p1

    const/4 v1, 0x0

    .line 252
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "anet.CookieManager"

    const-string v3, "cookie json parse error."

    invoke-static {v2, v3, v0, p1, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_80
    :goto_80
    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    .line 259
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cookieName"

    .line 260
    iget-object v2, p0, Lanetwork/channel/cookie/CookieManager$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cookieText"

    .line 261
    iget-object v2, p0, Lanetwork/channel/cookie/CookieManager$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "setCookie"

    .line 262
    iget-object v2, p0, Lanetwork/channel/cookie/CookieManager$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lanetwork/channel/cookie/CookieManager$a;->e:J

    const-string/jumbo v1, "time"

    .line 264
    iget-wide v2, p0, Lanetwork/channel/cookie/CookieManager$a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "domain"

    .line 265
    iget-object v2, p0, Lanetwork/channel/cookie/CookieManager$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "networksdk_cookie_monitor"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_51

    :catch_45
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 268
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.CookieManager"

    const-string v4, "cookie json save error."

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_51
    return-void
.end method
