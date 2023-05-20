.class public Lcom/xiaomi/clientreport/data/EventClientReport;
.super Lcom/xiaomi/clientreport/data/a;


# instance fields
.field public eventContent:Ljava/lang/String;

.field public eventId:Ljava/lang/String;

.field public eventTime:J

.field public eventType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/clientreport/data/a;-><init>()V

    return-void
.end method

.method public static getBlankInstance()Lcom/xiaomi/clientreport/data/EventClientReport;
    .registers 1

    new-instance v0, Lcom/xiaomi/clientreport/data/EventClientReport;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/data/EventClientReport;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Lcom/xiaomi/clientreport/data/a;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    const-string v2, "eventId"

    iget-object v3, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventType"

    iget v3, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "eventTime"

    iget-wide v3, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "eventContent"

    iget-object v3, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventContent:Ljava/lang/String;

    if-nez v3, :cond_26

    const-string v3, ""

    goto :goto_28

    :cond_26
    iget-object v3, p0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventContent:Ljava/lang/String;

    :goto_28
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_2b} :catch_2c

    return-object v1

    :catch_2c
    move-exception v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/xiaomi/clientreport/data/a;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
