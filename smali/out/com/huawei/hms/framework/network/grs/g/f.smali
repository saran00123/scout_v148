.class public Lcom/huawei/hms/framework/network/grs/g/f;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static synthetic a(Lcom/huawei/hms/framework/network/grs/g/e;)Ljava/util/LinkedHashMap;
    .registers 1

    invoke-static {p0}, Lcom/huawei/hms/framework/network/grs/g/f;->b(Lcom/huawei/hms/framework/network/grs/g/e;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;JLorg/json/JSONArray;Landroid/content/Context;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/framework/network/grs/g/e;",
            ">;J",
            "Lorg/json/JSONArray;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_29

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    invoke-static {}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getInstance()Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnableReportNoSeed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getInstance()Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getReportExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/huawei/hms/framework/network/grs/g/f$a;

    move-object v1, v7

    move-wide v2, p1

    move-object v4, p4

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/huawei/hms/framework/network/grs/g/f$a;-><init>(JLandroid/content/Context;Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_29
    return-void
.end method

.method private static b(Lcom/huawei/hms/framework/network/grs/g/e;)Ljava/util/LinkedHashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/framework/network/grs/g/e;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-direct {v0}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->d()Ljava/lang/Exception;

    move-result-object v1

    const-string v2, "exception_name"

    const-string v3, "error_code"

    if-eqz v1, :cond_30

    invoke-static {v1}, Lcom/huawei/hms/framework/common/ExceptionCode;->getErrorCodeFromException(Ljava/lang/Exception;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    goto :goto_40

    :cond_30
    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->b()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->c()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    :goto_40
    const-string v1, "domain"

    :try_start_42
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;
    :try_end_52
    .catch Ljava/net/MalformedURLException; {:try_start_42 .. :try_end_52} :catch_53

    goto :goto_5b

    :catch_53
    move-exception v1

    const-string v2, "HaReportHelper"

    const-string v3, "report host MalformedURLException"

    invoke-static {v2, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5b
    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->g()J

    move-result-wide v1

    const-string v3, "req_start_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->f()J

    move-result-wide v1

    const-string v3, "req_end_time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/g/e;->h()J

    move-result-wide v1

    const-string p0, "req_total_time"

    invoke-virtual {v0, p0, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->put(Ljava/lang/String;J)Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/common/hianalytics/LinkedHashMapPack;->getAll()Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method
