.class final Lcom/huawei/hms/framework/network/grs/g/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/g/f;->a(Ljava/util/ArrayList;JLorg/json/JSONArray;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/util/ArrayList;Lorg/json/JSONArray;)V
    .registers 6

    iput-wide p1, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->a:J

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->d:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    new-instance v0, Lcom/huawei/hms/framework/network/grs/g/l/a;

    invoke-direct {v0}, Lcom/huawei/hms/framework/network/grs/g/l/a;-><init>()V

    iget-wide v1, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->a:J

    const-string v3, "total_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/framework/common/NetworkUtil;->netWork(Landroid/content/Context;)I

    move-result v1

    int-to-long v1, v1

    const-string v3, "network_type"

    invoke-virtual {v0, v3, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-virtual {v2}, Lcom/huawei/hms/framework/network/grs/g/e;->m()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static {v2}, Lcom/huawei/hms/framework/network/grs/g/f;->a(Lcom/huawei/hms/framework/network/grs/g/e;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;->put(Ljava/util/LinkedHashMap;)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v1, v4

    goto :goto_3f

    :cond_3e
    move v1, v3

    :goto_3f
    if-nez v1, :cond_62

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_62

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/framework/network/grs/g/e;

    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/g/f;->a(Lcom/huawei/hms/framework/network/grs/g/e;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;->put(Ljava/util/LinkedHashMap;)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_62
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8b

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/framework/network/grs/g/e;

    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/huawei/hms/framework/network/grs/g/f;->a(Lcom/huawei/hms/framework/network/grs/g/e;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_70

    :cond_8b
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->d:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9e

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/f$a;->d:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed_info"

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    :cond_9e
    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;->get()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v3

    const-string v2, "HaReportHelper"

    const-string v3, "grssdk report data to aiops is: %s"

    invoke-static {v2, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getInstance()Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;->get()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v2, "grs_request"

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    return-void
.end method
