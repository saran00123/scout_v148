.class public Lcom/taobao/accs/client/c;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "ClientManager_"

    .line 35
    iput-object v0, p0, Lcom/taobao/accs/client/c;->d:Ljava/lang/String;

    const-string v0, "EMAS_ACCS_BIND"

    .line 41
    iput-object v0, p0, Lcom/taobao/accs/client/c;->e:Ljava/lang/String;

    if-eqz p1, :cond_45

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/client/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/client/c;->d:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/client/c;->a:Landroid/content/Context;

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/client/c;->e:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/taobao/accs/client/c;->b()V

    return-void

    .line 45
    :cond_45
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Context is null!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)V
    .registers 12
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

    .line 145
    :try_start_0
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 146
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_24

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-gez v3, :cond_24

    .line 148
    invoke-virtual {v2, p2, p3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_37

    .line 150
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    long-to-double p2, p2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v3, v5

    sub-double/2addr p2, v3

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 152
    :goto_37
    array-length p2, v0

    move p3, v1

    :goto_39
    if-ge p3, p2, :cond_5c

    aget-object v3, v0, p3

    .line 153
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "p"

    .line 154
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "s"

    .line 155
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p3, p3, 0x1

    goto :goto_39

    .line 159
    :cond_5c
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 160
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "bind_status"

    .line 161
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_75
    return-void
.end method

.method private b()V
    .registers 10

    const/4 v0, 0x0

    .line 114
    :try_start_1
    iget-object v1, p0, Lcom/taobao/accs/client/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/client/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "bind_status"

    const/4 v3, 0x0

    .line 115
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 117
    iget-object v1, p0, Lcom/taobao/accs/client/c;->d:Ljava/lang/String;

    const-string v2, "restoreClients break as packages null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 120
    :cond_20
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/taobao/accs/client/c;->c:J

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/taobao/accs/client/c;->c:J

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    cmp-long v1, v3, v5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-gez v1, :cond_76

    move v1, v4

    .line 123
    :goto_3c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_64

    .line 124
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "s"

    .line 125
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v4, :cond_51

    const/4 v7, 0x3

    if-ne v6, v7, :cond_52

    :cond_51
    move v6, v0

    .line 130
    :cond_52
    iget-object v7, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "p"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 132
    :cond_64
    iget-object v1, p0, Lcom/taobao/accs/client/c;->d:Ljava/lang/String;

    const-string v2, "restoreClients success"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "mBindStatus"

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9a

    .line 134
    :cond_76
    iget-object v1, p0, Lcom/taobao/accs/client/c;->d:Ljava/lang/String;

    const-string v2, "restoreClients expired"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "lastFlushTime"

    aput-object v5, v3, v0

    iget-wide v5, p0, Lcom/taobao/accs/client/c;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    .line 135
    iput-wide v1, p0, Lcom/taobao/accs/client/c;->c:J
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8f} :catch_90

    goto :goto_9a

    :catch_90
    move-exception v1

    .line 138
    iget-object v2, p0, Lcom/taobao/accs/client/c;->d:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "restoreClients"

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_9a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/client/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/client/c;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    if-eqz v0, :cond_11

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_25

    .line 61
    :cond_11
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/taobao/accs/client/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/accs/client/c;->e:Ljava/lang/String;

    iget-wide v1, p0, Lcom/taobao/accs/client/c;->c:J

    iget-object v3, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/taobao/accs/client/c;->a(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)V

    :cond_25
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .line 67
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    if-eqz v0, :cond_11

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_25

    .line 69
    :cond_11
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/taobao/accs/client/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/accs/client/c;->e:Ljava/lang/String;

    iget-wide v1, p0, Lcom/taobao/accs/client/c;->c:J

    iget-object v3, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/taobao/accs/client/c;->a(Landroid/content/Context;Ljava/lang/String;JLjava/util/Map;)V

    :cond_25
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1a

    .line 77
    :cond_11
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .registers 9

    .line 89
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 90
    invoke-direct {p0}, Lcom/taobao/accs/client/c;->b()V

    .line 92
    :cond_b
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 93
    iget-object v0, p0, Lcom/taobao/accs/client/c;->d:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "appStatus"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 v4, 0x2

    const-string v5, "mBindStatus"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    aput-object v6, v1, v5

    const-string v5, "isAppBinded"

    invoke-static {v0, v5, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_38

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_38

    move v2, v3

    :cond_38
    return v2
.end method

.method public e(Ljava/lang/String;)Z
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_13

    .line 99
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public f(Ljava/lang/String;)Z
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/taobao/accs/client/c;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    .line 104
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
