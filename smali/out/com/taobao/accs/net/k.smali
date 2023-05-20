.class Lcom/taobao/accs/net/k;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/j;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/j;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/taobao/accs/net/k;->a:Lcom/taobao/accs/net/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 79
    iget-object v0, p0, Lcom/taobao/accs/net/k;->a:Lcom/taobao/accs/net/j;

    invoke-static {v0}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    const-string v1, "sendAccsHeartbeatMessage"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_10
    const-string v1, "dataType"

    const-string v2, "pingreq"

    .line 82
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timeInterval"

    .line 83
    iget-object v2, p0, Lcom/taobao/accs/net/k;->a:Lcom/taobao/accs/net/j;

    invoke-static {v2}, Lcom/taobao/accs/net/j;->b(Lcom/taobao/accs/net/j;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v1

    .line 85
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 87
    :goto_27
    new-instance v6, Lcom/taobao/accs/ACCSManager$AccsRequest;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v6, v2, v2, v0, v1}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    const-string v0, "accs-iot"

    .line 88
    invoke-virtual {v6, v0}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTarget(Ljava/lang/String;)V

    const-string v0, "sal"

    .line 89
    invoke-virtual {v6, v0}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTargetServiceName(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/taobao/accs/net/k;->a:Lcom/taobao/accs/net/j;

    iget-object v3, v2, Lcom/taobao/accs/net/j;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/accs/net/k;->a:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->d:Landroid/content/Context;

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/taobao/accs/net/k;->a:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    const/4 v7, 0x1

    const-string v5, "4|"

    .line 90
    invoke-static/range {v2 .. v7}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/taobao/accs/net/k;->a:Lcom/taobao/accs/net/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/data/Message;Z)V

    return-void
.end method
