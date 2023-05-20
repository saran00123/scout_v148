.class public Lcom/taobao/agoo/a/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final SP_AGOO_BIND_FILE_NAME:Ljava/lang/String; = "EMAS_AGOO_BIND"


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/agoo/a/a;->a:Ljava/util/concurrent/ConcurrentMap;

    if-eqz p1, :cond_39

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/agoo/a/a;->c:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_17
    const-string v1, "EMAS_AGOO_BIND"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {p1}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {p1}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/agoo/a/a;->d:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_38} :catch_38

    :catch_38
    return-void

    .line 50
    :cond_39
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Context is null!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .registers 11

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/taobao/agoo/a/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/agoo/a/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bind_status"

    const/4 v3, 0x0

    .line 85
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_86

    const-string v3, "AgooBindCache"

    if-eqz v1, :cond_20

    :try_start_18
    const-string v0, "restoreAgooClients packs null return"

    .line 88
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 91
    :cond_20
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/taobao/agoo/a/a;->b:J

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/taobao/agoo/a/a;->b:J

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-gez v0, :cond_6e

    move v0, v5

    .line 94
    :goto_3c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_5e

    .line 95
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 96
    iget-object v7, p0, Lcom/taobao/agoo/a/a;->a:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "p"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_5e
    const-string v0, "restoreAgooClients"

    .line 98
    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "mAgooBindStatus"

    aput-object v4, v1, v2

    iget-object v2, p0, Lcom/taobao/agoo/a/a;->a:Ljava/util/concurrent/ConcurrentMap;

    aput-object v2, v1, v5

    invoke-static {v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8a

    :cond_6e
    const-string v0, "restoreAgooClients expired"

    .line 100
    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "agooLastFlushTime"

    aput-object v4, v1, v2

    iget-wide v6, p0, Lcom/taobao/agoo/a/a;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcom/taobao/agoo/a/a;->b:J
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8a
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 113
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_24

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, p3, v3

    if-gez v3, :cond_24

    .line 115
    invoke-virtual {v2, p3, p4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_37

    .line 117
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    long-to-double p3, p3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v3, v5

    sub-double/2addr p3, v3

    invoke-virtual {v2, p3, p4}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 119
    :goto_37
    array-length p3, v0

    move p4, v1

    :goto_39
    if-ge p4, p3, :cond_5c

    aget-object v3, v0, p4

    .line 120
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "p"

    .line 121
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "s"

    .line 122
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p4, p4, 0x1

    goto :goto_39

    .line 126
    :cond_5c
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "bind_status"

    .line 128
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_75
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 10

    .line 63
    iget-object v0, p0, Lcom/taobao/agoo/a/a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    if-eqz v0, :cond_11

    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_26

    .line 65
    :cond_11
    iget-object v0, p0, Lcom/taobao/agoo/a/a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v3, p0, Lcom/taobao/agoo/a/a;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/taobao/agoo/a/a;->d:Ljava/lang/String;

    iget-wide v5, p0, Lcom/taobao/agoo/a/a;->b:J

    iget-object v7, p0, Lcom/taobao/agoo/a/a;->a:Ljava/util/concurrent/ConcurrentMap;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/taobao/agoo/a/a;->a(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)V

    :cond_26
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 8

    .line 71
    iget-object v0, p0, Lcom/taobao/agoo/a/a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 72
    invoke-direct {p0}, Lcom/taobao/agoo/a/a;->a()V

    .line 74
    :cond_b
    iget-object v0, p0, Lcom/taobao/agoo/a/a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x6

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "packageName"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 p1, 0x2

    const-string v4, "appStatus"

    aput-object v4, v1, p1

    const/4 v4, 0x3

    aput-object v0, v1, v4

    const/4 v4, 0x4

    const-string v5, "agooBindStatus"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/taobao/agoo/a/a;->a:Ljava/util/concurrent/ConcurrentMap;

    aput-object v5, v1, v4

    const-string v4, "AgooBindCache"

    const-string v5, "isAgooRegistered"

    invoke-static {v4, v5, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lcom/taobao/agoo/a/a;->c:Landroid/content/Context;

    const-string v4, "EMAS_Agoo_AppStore"

    invoke-static {v4, v1}, Lcom/taobao/accs/utl/UtilityImpl;->utdidChanged(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_42

    return v2

    :cond_42
    if-eqz v0, :cond_4b

    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_4b

    move v2, v3

    :cond_4b
    return v2
.end method
