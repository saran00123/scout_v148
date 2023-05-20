.class public Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;
.super Ljava/lang/Object;
.source "HiAnalyticsUtils.java"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static e:Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a:I

    .line 22
    invoke-static {}, Lcom/huawei/hms/stats/c;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method public static getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;
    .registers 2

    .line 1
    sget-object v0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->e:Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;

    if-nez v1, :cond_e

    .line 3
    new-instance v1, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;

    invoke-direct {v1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;-><init>()V

    sput-object v1, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->e:Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;

    .line 5
    :cond_e
    sget-object v1, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->e:Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static versionCodeToName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "."

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_81

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_81

    .line 3
    :cond_1a
    :try_start_1a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_80} :catch_81

    return-object p0

    :catch_81
    :cond_81
    return-object v2
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 6

    .line 4
    sget-object v0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_3
    iget v1, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a:I

    const/16 v2, 0x3c

    const/4 v3, 0x1

    if-ge v1, v2, :cond_10

    .line 6
    iget p1, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a:I

    goto :goto_21

    :cond_10
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a:I

    .line 9
    iget-boolean v2, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    if-nez v2, :cond_1b

    .line 10
    invoke-static {}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onReport()V

    goto :goto_21

    .line 12
    :cond_1b
    invoke-static {p1, v1}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;I)V

    .line 13
    invoke-static {p1, v3}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;I)V

    .line 16
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public enableLog()V
    .registers 3

    const-string v0, "HiAnalyticsUtils"

    const-string v1, "Enable Log"

    .line 6
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    if-nez v1, :cond_f

    .line 8
    invoke-static {}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->enableLog()V

    goto :goto_14

    :cond_f
    const-string v1, "cp needs to pass in the context, this method is not supported"

    .line 10
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method public enableLog(Landroid/content/Context;)V
    .registers 4

    const-string v0, "HiAnalyticsUtils"

    const-string v1, "Enable Log"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    if-nez v0, :cond_f

    .line 3
    invoke-static {}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->enableLog()V

    goto :goto_12

    .line 5
    :cond_f
    invoke-static {p1}, Lcom/huawei/hianalytics/util/HiAnalyticTools;->enableLog(Landroid/content/Context;)V

    :goto_12
    return-void
.end method

.method public getInitFlag()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    if-nez v0, :cond_9

    .line 2
    invoke-static {}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->getInitFlag()Z

    move-result v0

    return v0

    :cond_9
    const-string v0, "hms_config_tag"

    .line 4
    invoke-static {v0}, Lcom/huawei/hianalytics/process/HiAnalyticsManager;->getInitFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasError(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/stats/a;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public onBuoyEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->hasError(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_c

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->onEvent2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->hasError(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p3, :cond_3e

    .line 4
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->getInitFlag()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_3e

    .line 7
    :cond_18
    iget-boolean v0, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2d

    .line 8
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 9
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {v1, p2, p3}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    goto :goto_3b

    .line 11
    :cond_2d
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1, v2, p2, v0}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 12
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {p1, v1, p2, p3}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 14
    :goto_3b
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Landroid/content/Context;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onEvent2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->hasError(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_1b

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->getInitFlag()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1b

    .line 7
    :cond_10
    iget-boolean v0, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    if-nez v0, :cond_18

    .line 8
    invoke-static {p1, p2, p3}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 10
    :cond_18
    invoke-static {p1, p2, p3}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->hasError(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p3, :cond_3e

    .line 4
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->getInitFlag()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_3e

    .line 7
    :cond_18
    iget-boolean v0, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2d

    .line 9
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 11
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {v1, p2, p3}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    goto :goto_3b

    .line 14
    :cond_2d
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1, v2, p2, v0}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 16
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {p1, v1, p2, p3}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 18
    :goto_3b
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Landroid/content/Context;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    .registers 6

    .line 19
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->hasError(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p4, :cond_14

    const/4 v0, 0x1

    if-eq p4, v0, :cond_14

    const-string p1, "HiAnalyticsUtils"

    const-string p2, "Data reporting type is not supported"

    .line 23
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    if-eqz p3, :cond_3b

    .line 26
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->getInitFlag()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_3b

    .line 29
    :cond_25
    iget-boolean v0, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    if-nez v0, :cond_31

    .line 30
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {p4, p2, p3}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    goto :goto_38

    .line 32
    :cond_31
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {p1, p4, p2, p3}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 34
    :goto_38
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Landroid/content/Context;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public onReport(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->hasError(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p3, :cond_44

    .line 4
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->getInitFlag()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_44

    .line 7
    :cond_18
    iget-boolean v0, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_30

    .line 8
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {v2, p2, p1}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 10
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 11
    invoke-static {}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onReport()V

    goto :goto_44

    .line 13
    :cond_30
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1, v2, p2, v0}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 15
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {p1, v1, p2, p3}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 16
    invoke-static {p1, v2}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;I)V

    .line 17
    invoke-static {p1, v1}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;I)V

    :cond_44
    :goto_44
    return-void
.end method

.method public onReport(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    .registers 6

    .line 18
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->hasError(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p4, :cond_14

    const/4 v0, 0x1

    if-eq p4, v0, :cond_14

    const-string p1, "HiAnalyticsUtils"

    const-string p2, "Data reporting type is not supported"

    .line 22
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    if-eqz p3, :cond_3e

    .line 25
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->getInitFlag()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_3e

    .line 28
    :cond_25
    iget-boolean v0, p0, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->b:Z

    if-nez v0, :cond_34

    .line 29
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {p4, p2, p1}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 30
    invoke-static {}, Lcom/huawei/hms/hatool/HmsHiAnalyticsUtils;->onReport()V

    goto :goto_3e

    .line 32
    :cond_34
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-static {p1, p4, p2, p3}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 33
    invoke-static {p1, p4}, Lcom/huawei/hms/stats/b;->a(Landroid/content/Context;I)V

    :cond_3e
    :goto_3e
    return-void
.end method
