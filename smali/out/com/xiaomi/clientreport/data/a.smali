.class public Lcom/xiaomi/clientreport/data/a;
.super Ljava/lang/Object;


# instance fields
.field public clientInterfaceId:Ljava/lang/String;

.field private miuiVersion:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field public production:I

.field public reportType:I

.field private sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/bs;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/clientreport/data/a;->os:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/push/l;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/clientreport/data/a;->miuiVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/clientreport/data/a;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/clientreport/data/a;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/clientreport/data/a;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "production"

    iget v2, p0, Lcom/xiaomi/clientreport/data/a;->production:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "reportType"

    iget v2, p0, Lcom/xiaomi/clientreport/data/a;->reportType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "clientInterfaceId"

    iget-object v2, p0, Lcom/xiaomi/clientreport/data/a;->clientInterfaceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    iget-object v2, p0, Lcom/xiaomi/clientreport/data/a;->os:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "miuiVersion"

    iget-object v2, p0, Lcom/xiaomi/clientreport/data/a;->miuiVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pkgName"

    iget-object v2, p0, Lcom/xiaomi/clientreport/data/a;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/xiaomi/clientreport/data/a;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_36} :catch_37

    return-object v0

    :catch_37
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/clientreport/data/a;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method
