.class Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;
.super Ljava/lang/Object;
.source "HianalyticsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->reportException(Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

.field final synthetic val$e:Ljava/lang/Throwable;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$threadName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    .line 290
    iput-object p1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;->this$0:Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    iput-object p2, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;->val$threadName:Ljava/lang/String;

    iput-object p3, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;->val$e:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;->val$eventId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 294
    new-instance v0, Lcom/huawei/hms/framework/common/hianalytics/CrashHianalyticsData;

    invoke-direct {v0}, Lcom/huawei/hms/framework/common/hianalytics/CrashHianalyticsData;-><init>()V

    const-string v1, "sdk_version"

    const-string v2, "5.0.3.300"

    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/CrashHianalyticsData;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    const-string v1, "crash_type"

    const-string v2, "exception"

    .line 298
    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/framework/common/hianalytics/CrashHianalyticsData;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    .line 300
    iget-object v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;->val$threadName:Ljava/lang/String;

    const-string v2, "thread_name"

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/framework/common/hianalytics/CrashHianalyticsData;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    .line 302
    iget-object v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception_name"

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/framework/common/hianalytics/CrashHianalyticsData;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    .line 304
    iget-object v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/framework/common/hianalytics/CrashHianalyticsData;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    .line 306
    iget-object v1, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;->val$e:Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/huawei/hms/framework/common/StringUtils;->getTraceInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stack_trace"

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/framework/common/hianalytics/CrashHianalyticsData;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/framework/common/hianalytics/HianalyticsBaseData;

    .line 308
    invoke-static {}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->getInstance()Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/hms/framework/common/hianalytics/CrashHianalyticsData;->get()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper$1;->val$eventId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/framework/common/hianalytics/HianalyticsHelper;->onEvent(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    return-void
.end method
