.class public Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/utl/JsonUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonObjectBuilder"
.end annotation


# instance fields
.field jObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public build()Lorg/json/JSONObject;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .registers 4

    if-nez p2, :cond_3

    return-object p0

    .line 100
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8} :catch_8

    :catch_8
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .registers 4

    if-nez p2, :cond_3

    return-object p0

    .line 89
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8} :catch_8

    :catch_8
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .registers 4

    if-nez p2, :cond_3

    return-object p0

    .line 111
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8} :catch_8

    :catch_8
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .registers 4

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 77
    :try_start_4
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-object p0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;
    .registers 4

    if-nez p2, :cond_3

    return-object p0

    .line 123
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->jObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8} :catch_8

    :catch_8
    return-object p0
.end method
