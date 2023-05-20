.class Lanet/channel/e/a$b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/e/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/e/a$b;->a:Ljava/util/Map;

    .line 287
    invoke-direct {p0}, Lanet/channel/e/a$b;->a()V

    return-void
.end method

.method private a()V
    .registers 9

    .line 290
    invoke-static {}, Lanet/channel/e/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "networksdk_http3_history_records"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-void

    .line 295
    :cond_12
    :try_start_12
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 296
    :goto_18
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_58

    .line 297
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 298
    new-instance v4, Lanet/channel/e/a$a;

    invoke-direct {v4, v1}, Lanet/channel/e/a$a;-><init>(Lanet/channel/e/b;)V

    const-string v5, "networkUniqueId"

    .line 299
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "time"

    .line 300
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lanet/channel/e/a$a;->a:J

    const-string v6, "enable"

    .line 301
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v4, Lanet/channel/e/a$a;->b:Z

    .line 302
    iget-wide v6, v4, Lanet/channel/e/a$a;->a:J

    invoke-direct {p0, v6, v7}, Lanet/channel/e/a$b;->a(J)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 303
    iget-object v3, p0, Lanet/channel/e/a$b;->a:Ljava/util/Map;

    monitor-enter v3
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_4b} :catch_58

    .line 304
    :try_start_4b
    iget-object v6, p0, Lanet/channel/e/a$b;->a:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    monitor-exit v3

    goto :goto_55

    :catchall_52
    move-exception v0

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_52

    :try_start_54
    throw v0
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_55} :catch_58

    :cond_55
    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :catch_58
    :cond_58
    return-void
.end method

.method private a(J)Z
    .registers 5

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {}, Lanet/channel/e/a;->g()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a(Ljava/lang/String;Z)V
    .registers 9

    .line 329
    new-instance v0, Lanet/channel/e/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/e/a$a;-><init>(Lanet/channel/e/b;)V

    .line 330
    iput-boolean p2, v0, Lanet/channel/e/a$a;->b:Z

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/e/a$a;->a:J

    .line 332
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 333
    iget-object v1, p0, Lanet/channel/e/a$b;->a:Ljava/util/Map;

    monitor-enter v1

    .line 334
    :try_start_16
    iget-object v2, p0, Lanet/channel/e/a$b;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object p1, p0, Lanet/channel/e/a$b;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 337
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/e/a$a;
    :try_end_3d
    .catchall {:try_start_16 .. :try_end_3d} :catchall_76

    .line 340
    :try_start_3d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "networkUniqueId"

    .line 341
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "time"

    .line 342
    iget-wide v4, v0, Lanet/channel/e/a$a;->a:J

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "enable"

    .line 343
    iget-boolean v0, v0, Lanet/channel/e/a$a;->b:Z

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 344
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_59} :catch_5a
    .catchall {:try_start_3d .. :try_end_59} :catchall_76

    goto :goto_25

    :catch_5a
    move-exception v0

    .line 346
    :try_start_5b
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_25

    .line 349
    :cond_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_76

    .line 350
    invoke-static {}, Lanet/channel/e/a;->d()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "networksdk_http3_history_records"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catchall_76
    move-exception p1

    .line 349
    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw p1
.end method

.method a(Ljava/lang/String;)Z
    .registers 6

    .line 312
    iget-object v0, p0, Lanet/channel/e/a$b;->a:Ljava/util/Map;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-object v1, p0, Lanet/channel/e/a$b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/e/a$a;

    const/4 v1, 0x1

    if-nez p1, :cond_10

    .line 315
    monitor-exit v0

    return v1

    .line 317
    :cond_10
    iget-wide v2, p1, Lanet/channel/e/a$a;->a:J

    invoke-direct {p0, v2, v3}, Lanet/channel/e/a$b;->a(J)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    monitor-exit v0

    return v1

    :catchall_1c
    move-exception p1

    .line 318
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method b(Ljava/lang/String;)Z
    .registers 4

    .line 354
    iget-object v0, p0, Lanet/channel/e/a$b;->a:Ljava/util/Map;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lanet/channel/e/a$b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/e/a$a;

    if-eqz p1, :cond_11

    .line 357
    iget-boolean p1, p1, Lanet/channel/e/a$a;->b:Z

    monitor-exit v0

    return p1

    .line 359
    :cond_11
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method
