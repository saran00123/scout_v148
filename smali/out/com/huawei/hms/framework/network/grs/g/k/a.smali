.class public Lcom/huawei/hms/framework/network/grs/g/k/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:Lcom/huawei/hms/framework/network/grs/g/l/d;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/huawei/hms/framework/network/grs/g/l/d;
    .registers 6

    const-class v0, Lcom/huawei/hms/framework/network/grs/g/k/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/huawei/hms/framework/network/grs/g/k/a;->b:Lcom/huawei/hms/framework/network/grs/g/l/d;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9e

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "grs_sdk_server_config.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/huawei/hms/framework/network/grs/h/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_9e

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    monitor-exit v0

    return-object v2

    :cond_31
    :try_start_31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "grs_server"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "grs_base_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_64

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_64

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_50
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_64

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_64
    new-instance v1, Lcom/huawei/hms/framework/network/grs/g/l/d;

    invoke-direct {v1}, Lcom/huawei/hms/framework/network/grs/g/l/d;-><init>()V

    sput-object v1, Lcom/huawei/hms/framework/network/grs/g/k/a;->b:Lcom/huawei/hms/framework/network/grs/g/l/d;

    sget-object v1, Lcom/huawei/hms/framework/network/grs/g/k/a;->b:Lcom/huawei/hms/framework/network/grs/g/l/d;

    invoke-virtual {v1, v2}, Lcom/huawei/hms/framework/network/grs/g/l/d;->a(Ljava/util/List;)V

    const-string v1, "grs_query_endpoint_1.0"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/g/k/a;->b:Lcom/huawei/hms/framework/network/grs/g/l/d;

    invoke-virtual {v2, v1}, Lcom/huawei/hms/framework/network/grs/g/l/d;->b(Ljava/lang/String;)V

    const-string v1, "grs_query_endpoint_2.0"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/g/k/a;->b:Lcom/huawei/hms/framework/network/grs/g/l/d;

    invoke-virtual {v2, v1}, Lcom/huawei/hms/framework/network/grs/g/l/d;->a(Ljava/lang/String;)V

    const-string v1, "grs_query_timeout"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/g/k/a;->b:Lcom/huawei/hms/framework/network/grs/g/l/d;

    invoke-virtual {v1, p0}, Lcom/huawei/hms/framework/network/grs/g/l/d;->a(I)V
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_91} :catch_92
    .catchall {:try_start_31 .. :try_end_91} :catchall_9e

    goto :goto_9a

    :catch_92
    move-exception p0

    :try_start_93
    sget-object v1, Lcom/huawei/hms/framework/network/grs/g/k/a;->a:Ljava/lang/String;

    const-string v2, "getGrsServerBean catch JSONException"

    invoke-static {v1, v2, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9a
    sget-object p0, Lcom/huawei/hms/framework/network/grs/g/k/a;->b:Lcom/huawei/hms/framework/network/grs/g/l/d;
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_9e

    monitor-exit v0

    return-object p0

    :catchall_9e
    move-exception p0

    monitor-exit v0

    throw p0
.end method
