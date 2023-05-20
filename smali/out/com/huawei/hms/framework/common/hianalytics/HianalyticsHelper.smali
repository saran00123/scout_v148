.class public Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;
.super Ljava/lang/Object;
.source "HianalyticsHelper.java"


# static fields
.field private static final HWID_HA_SERVICE_TAG:Ljava/lang/String; = "hms_hwid"

.field private static final TAG:Ljava/lang/String; = "HianalyticsHelper"

.field private static final TYPE_MAINTF:I = 0x1

.field private static final USER_EXPERIENCE_INVOLVED:Ljava/lang/String; = "user_experience_involved"

.field private static final USER_EXPERIENCE_ON:I = 0x1

.field private static volatile instance:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

.field private haTag:Ljava/lang/String;

.field private hasHMSBI:Z

.field private hasHianalytics:Z

.field private isEnablePrivacyPolicy:Z

.field private reportExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 6

    const-string v0, "HianalyticsHelper"

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "hms_hwid"

    .line 55
    iput-object v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->haTag:Ljava/lang/String;

    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnablePrivacyPolicy:Z

    const-string v2, "report_ha"

    .line 61
    invoke-static {v2}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->reportExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    .line 66
    :try_start_18
    invoke-static {}, Lcom/huawei/hianalytics/v2/HiAnalytics;->getInitFlag()Z

    .line 67
    iput-boolean v2, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    const-string v3, "Hianalytics sdk not found"

    .line 69
    invoke-static {v0, v3}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    iput-boolean v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    .line 72
    :goto_25
    iget-boolean v3, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    if-nez v3, :cond_30

    .line 73
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->tryHMSBIInit(Landroid/content/Context;)V

    :cond_30
    const/4 v3, 0x2

    .line 75
    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    iget-boolean v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHMSBI:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "this time the ha %s, mini %s"

    invoke-static {v0, v1, v3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;
    .registers 2

    .line 117
    sget-object v0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->instance:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    if-nez v0, :cond_17

    .line 118
    const-class v0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    monitor-enter v0

    .line 119
    :try_start_7
    sget-object v1, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->instance:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    if-nez v1, :cond_12

    .line 120
    new-instance v1, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    invoke-direct {v1}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;-><init>()V

    sput-object v1, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->instance:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    .line 122
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 124
    :cond_17
    :goto_17
    sget-object v0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->instance:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    return-object v0
.end method

.method private isHianalyticsOk()Z
    .registers 3

    .line 184
    invoke-static {}, Lcom/huawei/hianalytics/v2/HiAnalytics;->getInitFlag()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 189
    :cond_8
    iget-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    if-nez v0, :cond_14

    .line 190
    iget-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->haTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/hianalytics/process/HiAnalyticsManager;->getInstanceByTag(Ljava/lang/String;)Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    .line 192
    :cond_14
    iget-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method private onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    .registers 8

    if-eqz p1, :cond_25

    if-nez p3, :cond_5

    goto :goto_25

    :cond_5
    const/4 v0, 0x1

    .line 249
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string v1, "HianalyticsHelper"

    const-string v2, "data = %s"

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :try_start_12
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtils;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    :try_end_19
    .catch Ljava/lang/NoSuchMethodError; {:try_start_12 .. :try_end_19} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_25

    :catch_1a
    const-string p1, "the stats has other error,pls check it"

    .line 261
    invoke-static {v1, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_25

    :catch_20
    const-string p1, "may be you need upgrade stats sdk"

    .line 259
    invoke-static {v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-void
.end method

.method private tryHMSBIInit(Landroid/content/Context;)V
    .registers 3

    const-string v0, "HianalyticsHelper"

    if-nez p1, :cond_a

    const-string p1, "the appContext hasn\'t init"

    .line 80
    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_a
    :try_start_a
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSBIInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->initBI()V

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHMSBI:Z
    :try_end_14
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_14} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_20

    :catch_15
    const-string p1, "the hms base has other error!"

    .line 89
    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_20

    :catch_1b
    const-string p1, "maybe you need add base sdk!"

    .line 87
    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_20
    return-void
.end method


# virtual methods
.method public enablePrivacyPolicy(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnablePrivacyPolicy:Z

    return-void
.end method

.method public getReportExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->reportExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public isEnableReport(Landroid/content/Context;)Z
    .registers 3

    .line 135
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHMSBI:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_6
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 142
    :cond_c
    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnableReportNoSeed(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isEnableReportNoSeed(Landroid/content/Context;)Z
    .registers 7

    .line 153
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHMSBI:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 156
    :cond_6
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    const/4 v2, 0x0

    const-string v3, "HianalyticsHelper"

    if-nez v0, :cond_13

    const-string p1, "Hianalytics sdk need to be initialized"

    .line 157
    invoke-static {v3, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_13
    if-nez p1, :cond_1b

    const-string p1, "HianalyticsHelper context can\'t be null"

    .line 161
    invoke-static {v3, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 167
    :cond_1b
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnablePrivacyPolicy:Z

    if-eqz v0, :cond_24

    .line 168
    invoke-direct {p0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isHianalyticsOk()Z

    move-result p1

    return p1

    .line 170
    :cond_24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x1

    const-string v4, "user_experience_involved"

    .line 172
    invoke-static {p1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_36

    .line 173
    invoke-direct {p0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isHianalyticsOk()Z

    move-result p1

    return p1

    :cond_36
    const-string p1, "user experience involved needs to be opened"

    .line 176
    invoke-static {v3, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method public onEvent(Ljava/util/LinkedHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url_request"

    .line 271
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;I)V

    return-void
.end method

.method public onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 206
    iget-boolean v0, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHMSBI:Z

    const/4 v1, 0x0

    const-string v2, "HianalyticsHelper"

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    .line 208
    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_20

    :cond_10
    if-nez p3, :cond_20

    .line 210
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "the base sdk isn\'t exsit, and reportType is %s"

    invoke-static {v2, p2, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 213
    :cond_20
    :goto_20
    iget-boolean p3, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hasHianalytics:Z

    if-nez p3, :cond_25

    return-void

    :cond_25
    if-nez p1, :cond_28

    return-void

    .line 219
    :cond_28
    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string v0, "data = %s"

    invoke-static {v2, v0, p3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Lcom/huawei/hianalytics/v2/HiAnalytics;->getInitFlag()Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 223
    invoke-static {v3, p2, p1}, Lcom/huawei/hianalytics/v2/HiAnalytics;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    goto :goto_42

    .line 228
    :cond_3b
    iget-object p3, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->hInstance:Lcom/huawei/hianalytics/process/HiAnalyticsInstance;

    if-eqz p3, :cond_42

    .line 229
    invoke-interface {p3, v3, p2, p1}, Lcom/huawei/hianalytics/process/HiAnalyticsInstance;->onEvent(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public reportException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7

    const-string v0, "HianalyticsHelper"

    .line 284
    invoke-static {}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getInstance()Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    move-result-object v1

    invoke-static {}, Lcom/huawei/hms/framework/common/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->isEnableReport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    .line 287
    :cond_11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 290
    :try_start_19
    iget-object v2, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->reportExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;-><init>(Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_23
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_19 .. :try_end_23} :catch_30
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_24

    goto :goto_35

    :catch_24
    const/4 p2, 0x1

    .line 316
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const-string p1, "reportException error!"

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_35

    :catch_30
    const-string p1, "reportException error RejectedExecutionException"

    .line 313
    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_35
    return-void
.end method

.method public setHaTag(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->haTag:Ljava/lang/String;

    return-void
.end method
