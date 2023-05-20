.class public Lcom/huawei/hms/push/HmsProfile;
.super Ljava/lang/Object;
.source "HmsProfile.java"


# static fields
.field public static final CUSTOM_PROFILE:I = 0x2

.field public static final HUAWEI_PROFILE:I = 0x1

.field public static final a:Ljava/lang/String; = "HmsProfile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/huawei/hms/common/HuaweiApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/common/HuaweiApi<",
            "Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/push/HmsProfile;->b:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/push/HmsProfile;->b:Landroid/content/Context;

    .line 5
    new-instance v1, Lcom/huawei/hms/api/Api;

    const-string v2, "HuaweiPush.API"

    invoke-direct {v1, v2}, Lcom/huawei/hms/api/Api;-><init>(Ljava/lang/String;)V

    .line 6
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_25

    .line 7
    new-instance v2, Lcom/huawei/hms/common/HuaweiApi;

    check-cast p1, Landroid/app/Activity;

    new-instance v3, Lcom/huawei/hms/aaid/task/PushClientBuilder;

    invoke-direct {v3}, Lcom/huawei/hms/aaid/task/PushClientBuilder;-><init>()V

    invoke-direct {v2, p1, v1, v0, v3}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    iput-object v2, p0, Lcom/huawei/hms/push/HmsProfile;->c:Lcom/huawei/hms/common/HuaweiApi;

    goto :goto_31

    .line 8
    :cond_25
    new-instance v2, Lcom/huawei/hms/common/HuaweiApi;

    new-instance v3, Lcom/huawei/hms/aaid/task/PushClientBuilder;

    invoke-direct {v3}, Lcom/huawei/hms/aaid/task/PushClientBuilder;-><init>()V

    invoke-direct {v2, p1, v1, v0, v3}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    iput-object v2, p0, Lcom/huawei/hms/push/HmsProfile;->c:Lcom/huawei/hms/common/HuaweiApi;

    .line 9
    :goto_31
    iget-object p1, p0, Lcom/huawei/hms/push/HmsProfile;->c:Lcom/huawei/hms/common/HuaweiApi;

    const v0, 0x2ff8590

    invoke-virtual {p1, v0}, Lcom/huawei/hms/common/HuaweiApi;->setKitSdkVersion(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 34
    invoke-static {p0}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->fromContext(Landroid/content/Context;)Lcom/huawei/agconnect/config/AGConnectServicesConfig;

    move-result-object p0

    const-string v0, "client/project_id"

    .line 35
    invoke-virtual {p0, v0}, Lcom/huawei/agconnect/config/AGConnectServicesConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/hms/push/HmsProfile;
    .registers 2

    .line 1
    new-instance v0, Lcom/huawei/hms/push/HmsProfile;

    invoke-direct {v0, p0}, Lcom/huawei/hms/push/HmsProfile;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;ILjava/lang/String;)Lcom/huawei/hmf/tasks/Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/push/HmsProfile;->isSupportProfile()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2
    new-instance p1, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 3
    sget-object p2, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_OPERATION_NOT_SUPPORTED:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p2}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    .line 5
    :cond_19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/push/HmsProfile;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/push/HmsProfile;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 8
    sget-object p1, Lcom/huawei/hms/push/HmsProfile;->a:Ljava/lang/String;

    const-string p2, "agc connect services config missing project id."

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 10
    sget-object p2, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_MISSING_PROJECT_ID:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p2}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 11
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    .line 12
    :cond_45
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p2, ""

    .line 13
    :cond_4d
    new-instance v0, Lcom/huawei/hms/support/api/entity/push/ProfileReq;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/push/ProfileReq;-><init>()V

    if-nez p1, :cond_5c

    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/api/entity/push/ProfileReq;->setOperation(I)V

    .line 15
    invoke-virtual {v0, p3}, Lcom/huawei/hms/support/api/entity/push/ProfileReq;->setType(I)V

    goto :goto_60

    :cond_5c
    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/api/entity/push/ProfileReq;->setOperation(I)V

    .line 17
    :goto_60
    iget-object p1, p0, Lcom/huawei/hms/push/HmsProfile;->b:Landroid/content/Context;

    const-string p3, "push.profile"

    invoke-static {p1, p3}, Lcom/huawei/hms/push/utils/PushBiUtil;->reportEntry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    :try_start_68
    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/push/ProfileReq;->setSubjectId(Ljava/lang/String;)V

    .line 19
    invoke-static {p4}, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->sha256Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/push/ProfileReq;->setProfileId(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/huawei/hms/push/HmsProfile;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/entity/push/ProfileReq;->setPkgName(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/huawei/hms/push/HmsProfile;->c:Lcom/huawei/hms/common/HuaweiApi;

    new-instance p4, Lcom/huawei/hms/push/task/ProfileTask;

    .line 22
    invoke-static {v0}, Lcom/huawei/hms/utils/JsonUtil;->createJsonString(Lcom/huawei/hms/core/aidl/IMessageEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p3, v0, p1}, Lcom/huawei/hms/push/task/ProfileTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2, p4}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_8a} :catch_8b

    return-object p1

    :catch_8b
    move-exception p2

    .line 24
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    instance-of p4, p4, Lcom/huawei/hms/common/ApiException;

    if-eqz p4, :cond_b0

    .line 25
    new-instance p4, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p4}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 26
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Lcom/huawei/hms/common/ApiException;

    .line 27
    invoke-virtual {p4, p2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 28
    iget-object v0, p0, Lcom/huawei/hms/push/HmsProfile;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result p2

    invoke-static {v0, p3, p1, p2}, Lcom/huawei/hms/push/utils/PushBiUtil;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    invoke-virtual {p4}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    .line 30
    :cond_b0
    new-instance p2, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 31
    iget-object p4, p0, Lcom/huawei/hms/push/HmsProfile;->b:Landroid/content/Context;

    sget-object v0, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_INTERNAL_ERROR:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-static {p4, p3, p1, v0}, Lcom/huawei/hms/push/utils/PushBiUtil;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/aaid/constant/ErrorEnum;)V

    .line 32
    sget-object p1, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_INTERNAL_ERROR:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p1}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 33
    invoke-virtual {p2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public addProfile(ILjava/lang/String;)Lcom/huawei/hmf/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/huawei/hms/push/HmsProfile;->addProfile(Ljava/lang/String;ILjava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public addProfile(Ljava/lang/String;ILjava/lang/String;)Lcom/huawei/hmf/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_20

    const/4 v0, 0x2

    if-eq p2, v0, :cond_20

    .line 2
    sget-object p1, Lcom/huawei/hms/push/HmsProfile;->a:Ljava/lang/String;

    const-string p2, "add profile type undefined."

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 4
    sget-object p2, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_PUSH_ARGUMENTS_INVALID:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p2}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 5
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    .line 6
    :cond_20
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 7
    sget-object p1, Lcom/huawei/hms/push/HmsProfile;->a:Ljava/lang/String;

    const-string p2, "add profile params is empty."

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 9
    sget-object p2, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_PUSH_ARGUMENTS_INVALID:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p2}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 10
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_40
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/huawei/hms/push/HmsProfile;->a(ILjava/lang/String;ILjava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Z
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/push/s;->b(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x68e7cf8

    cmp-long p1, v0, v2

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method public deleteProfile(Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/push/HmsProfile;->deleteProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public deleteProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3
    sget-object p1, Lcom/huawei/hms/push/HmsProfile;->a:Ljava/lang/String;

    const-string p2, "del profile params is empty."

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 5
    sget-object p2, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_PUSH_ARGUMENTS_INVALID:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p2}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_20
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 7
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/huawei/hms/push/HmsProfile;->a(ILjava/lang/String;ILjava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public isSupportProfile()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/push/HmsProfile;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/push/s;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2
    invoke-static {}, Lcom/huawei/hms/push/s;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 3
    sget-object v0, Lcom/huawei/hms/push/HmsProfile;->a:Ljava/lang/String;

    const-string v2, "current EMUI version below 9.1, not support profile operation."

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_17
    iget-object v0, p0, Lcom/huawei/hms/push/HmsProfile;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/push/HmsProfile;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 5
    sget-object v0, Lcom/huawei/hms/push/HmsProfile;->a:Ljava/lang/String;

    const-string v2, "current HwPushService.apk version below 11.0.1.400,please upgrade your HwPushService.apk version."

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_27
    const/4 v0, 0x1

    return v0
.end method
