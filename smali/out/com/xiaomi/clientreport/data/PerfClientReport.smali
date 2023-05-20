.class public Lcom/xiaomi/clientreport/data/PerfClientReport;
.super Lcom/xiaomi/clientreport/data/a;


# static fields
.field private static final DEFAULT_VALUE:J = -0x1L


# instance fields
.field public code:I

.field public perfCounts:J

.field public perfLatencies:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/clientreport/data/a;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    iput-wide v0, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    return-void
.end method

.method public static getBlankInstance()Lcom/xiaomi/clientreport/data/PerfClientReport;
    .registers 1

    new-instance v0, Lcom/xiaomi/clientreport/data/PerfClientReport;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/data/PerfClientReport;-><init>()V

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
    const-string v2, "code"

    iget v3, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->code:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "perfCounts"

    iget-wide v3, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "perfLatencies"

    iget-wide v3, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1e

    return-object v1

    :catch_1e
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
