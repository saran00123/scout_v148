.class public final Lcom/huawei/hms/hatool/g1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lcom/huawei/hms/hatool/g1;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/hatool/g1;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/huawei/hms/hatool/g1;
    .registers 1

    sget-object v0, Lcom/huawei/hms/hatool/g1;->c:Lcom/huawei/hms/hatool/g1;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/huawei/hms/hatool/g1;->b()V

    :cond_7
    sget-object v0, Lcom/huawei/hms/hatool/g1;->c:Lcom/huawei/hms/hatool/g1;

    return-object v0
.end method

.method public static declared-synchronized b()V
    .registers 2

    const-class v0, Lcom/huawei/hms/hatool/g1;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/huawei/hms/hatool/g1;->c:Lcom/huawei/hms/hatool/g1;

    if-nez v1, :cond_e

    new-instance v1, Lcom/huawei/hms/hatool/g1;

    invoke-direct {v1}, Lcom/huawei/hms/hatool/g1;-><init>()V

    sput-object v1, Lcom/huawei/hms/hatool/g1;->c:Lcom/huawei/hms/hatool/g1;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_30

    :try_start_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_28} :catch_29

    goto :goto_f

    :catch_29
    const-string p1, "hmsSdk"

    const-string v1, "Exception occured when transferring bundle to json"

    invoke-static {p1, v1}, Lcom/huawei/hms/hatool/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/hms/hatool/g1;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/hatool/g1;->a:Landroid/content/Context;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iput-object p1, p0, Lcom/huawei/hms/hatool/g1;->a:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/hms/hatool/h0;->a()Lcom/huawei/hms/hatool/h0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/hms/hatool/h0;->a(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    invoke-static {}, Lcom/huawei/hms/hatool/h0;->a()Lcom/huawei/hms/hatool/h0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/hatool/h0;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p4}, Lcom/huawei/hms/hatool/g1;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-static {}, Lcom/huawei/hms/hatool/h0;->a()Lcom/huawei/hms/hatool/h0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hms/hatool/h0;->a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "_constants"

    invoke-virtual {p2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_13

    invoke-static {}, Lcom/huawei/hms/hatool/h0;->a()Lcom/huawei/hms/hatool/h0;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0, p3, p2}, Lcom/huawei/hms/hatool/h0;->a(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_13
    const-string p1, "hmsSdk"

    const-string p2, "onEvent():JSON structure Exception!"

    invoke-static {p1, p2}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
