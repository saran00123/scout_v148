.class public Lcom/taobao/accs/AccsState;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/AccsState$b;,
        Lcom/taobao/accs/AccsState$c;,
        Lcom/taobao/accs/AccsState$a;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "all"

.field public static final BIND_APP_FROM_CACHE:Ljava/lang/String; = "bfc"

.field public static final CONNECTION_CHANGE:Ljava/lang/String; = "cc"

.field public static final LAST_MSG_RECEIVE_TIME:Ljava/lang/String; = "lmrt"

.field public static final LAST_MSG_SEND_TIME:Ljava/lang/String; = "lmst"

.field public static final RECENT_ERRORS:Ljava/lang/String; = "re"

.field public static final SDK_VERSION:Ljava/lang/String; = "sv"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsState$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/AccsState;->a:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    .line 54
    iput-wide v0, p0, Lcom/taobao/accs/AccsState;->b:J

    .line 55
    iput-wide v0, p0, Lcom/taobao/accs/AccsState;->c:J

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/taobao/accs/AccsState$c;
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/taobao/accs/AccsState;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/AccsState$c;

    if-nez v0, :cond_15

    .line 150
    new-instance v0, Lcom/taobao/accs/AccsState$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/accs/AccsState$c;-><init>(Lcom/taobao/accs/b;)V

    .line 151
    iget-object v1, p0, Lcom/taobao/accs/AccsState;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method private a()V
    .registers 5

    .line 157
    iget-wide v0, p0, Lcom/taobao/accs/AccsState;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    iget-wide v0, p0, Lcom/taobao/accs/AccsState;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 158
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/AccsState;->c:J

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/AccsState;->b:J

    :cond_1a
    return-void
.end method

.method private a(Ljava/util/HashMap;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsState$c;",
            ">;)Z"
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsState$c;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/AccsState$c;

    .line 176
    invoke-virtual {v0, p2}, Lcom/taobao/accs/AccsState$c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method private b()J
    .registers 5

    .line 164
    invoke-direct {p0}, Lcom/taobao/accs/AccsState;->a()V

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/accs/AccsState;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getInstance()Lcom/taobao/accs/AccsState;
    .registers 1

    .line 35
    invoke-static {}, Lcom/taobao/accs/AccsState$a;->a()Lcom/taobao/accs/AccsState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "all"

    .line 65
    invoke-direct {p0, v0}, Lcom/taobao/accs/AccsState;->a(Ljava/lang/String;)Lcom/taobao/accs/AccsState$c;

    move-result-object v0

    .line 66
    invoke-direct {p0}, Lcom/taobao/accs/AccsState;->b()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/taobao/accs/AccsState$c;->a(Ljava/lang/String;Ljava/lang/Object;J)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 67
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    .line 130
    :try_start_1
    invoke-direct {p0, p1}, Lcom/taobao/accs/AccsState;->a(Ljava/lang/String;)Lcom/taobao/accs/AccsState$c;

    move-result-object p1

    .line 131
    invoke-direct {p0}, Lcom/taobao/accs/AccsState;->b()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/taobao/accs/AccsState$c;->a(Ljava/lang/String;Ljava/lang/Object;J)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 132
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "all"

    .line 76
    invoke-direct {p0, v0}, Lcom/taobao/accs/AccsState;->a(Ljava/lang/String;)Lcom/taobao/accs/AccsState$c;

    move-result-object v0

    .line 77
    invoke-direct {p0}, Lcom/taobao/accs/AccsState;->b()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/taobao/accs/AccsState$c;->b(Ljava/lang/String;Ljava/lang/Object;J)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 78
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    .line 142
    :try_start_1
    invoke-direct {p0, p1}, Lcom/taobao/accs/AccsState;->a(Ljava/lang/String;)Lcom/taobao/accs/AccsState$c;

    move-result-object p1

    .line 143
    invoke-direct {p0}, Lcom/taobao/accs/AccsState;->b()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/taobao/accs/AccsState$c;->b(Ljava/lang/String;Ljava/lang/Object;J)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 144
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getState()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/AccsState;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/taobao/accs/AccsState;->a(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "{}"
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_52

    .line 87
    monitor-exit p0

    return-object v0

    .line 89
    :cond_d
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_52

    :try_start_12
    const-string v1, "t"

    .line 91
    iget-wide v2, p0, Lcom/taobao/accs/AccsState;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/taobao/accs/AccsState;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/AccsState$c;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsState$c;->a()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_47} :catch_48
    .catchall {:try_start_12 .. :try_end_47} :catchall_52

    goto :goto_28

    :catch_48
    move-exception v1

    .line 97
    :try_start_49
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    :cond_4c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_52

    monitor-exit p0

    return-object v0

    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStateByKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    .line 103
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/AccsState;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1}, Lcom/taobao/accs/AccsState;->a(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string p1, "{}"
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_5e

    .line 104
    monitor-exit p0

    return-object p1

    .line 106
    :cond_d
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_5e

    :try_start_12
    const-string v1, "t"

    .line 108
    iget-wide v2, p0, Lcom/taobao/accs/AccsState;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/taobao/accs/AccsState;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/AccsState$c;

    invoke-virtual {v3, p1}, Lcom/taobao/accs/AccsState$c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/AccsState$c;

    invoke-virtual {v2, p1}, Lcom/taobao/accs/AccsState$c;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_53} :catch_54
    .catchall {:try_start_12 .. :try_end_53} :catchall_5e

    goto :goto_28

    :catch_54
    move-exception p1

    .line 116
    :try_start_55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    :cond_58
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-object p1

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
