.class public Lcom/huawei/hms/stats/b;
.super Ljava/lang/Object;
.source "HiAnalyticsOfCpUtils.java"


# static fields
.field public static a:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/huawei/hms/utils/HMSBIInitializer;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSBIInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/huawei/hms/utils/HMSBIInitializer;->getAnalyticsInstance()Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    move-result-object p0

    sput-object p0, Lcom/huawei/hms/stats/b;->a:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    .line 2
    sget-object p0, Lcom/huawei/hms/stats/b;->a:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 2

    .line 7
    invoke-static {p0}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 8
    sget-object p0, Lcom/huawei/hms/stats/b;->a:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    invoke-interface {p0, p1}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance;->onReport(I)V

    :cond_b
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {p0}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 6
    sget-object p0, Lcom/huawei/hms/stats/b;->a:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    invoke-interface {p0, p1, p2, p3}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_b
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3
    invoke-static {p0}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4
    sget-object v0, Lcom/huawei/hms/stats/b;->a:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    invoke-interface {v0, p0, p1, p2}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
