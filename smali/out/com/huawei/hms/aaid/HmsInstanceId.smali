.class public Lcom/huawei/hms/aaid/HmsInstanceId;
.super Ljava/lang/Object;
.source "HmsInstanceId.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HmsInstanceId"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/huawei/hms/aaid/utils/PushPreferences;

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

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/huawei/hms/aaid/utils/PushPreferences;

    const-string v1, "aaid"

    invoke-direct {v0, p1, v1}, Lcom/huawei/hms/aaid/utils/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->b:Lcom/huawei/hms/aaid/utils/PushPreferences;

    .line 4
    new-instance v0, Lcom/huawei/hms/api/Api;

    const-string v1, "HuaweiPush.API"

    invoke-direct {v0, v1}, Lcom/huawei/hms/api/Api;-><init>(Ljava/lang/String;)V

    .line 5
    instance-of v1, p1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 6
    new-instance v1, Lcom/huawei/hms/common/HuaweiApi;

    check-cast p1, Landroid/app/Activity;

    new-instance v3, Lcom/huawei/hms/aaid/task/PushClientBuilder;

    invoke-direct {v3}, Lcom/huawei/hms/aaid/task/PushClientBuilder;-><init>()V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    iput-object v1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->c:Lcom/huawei/hms/common/HuaweiApi;

    goto :goto_39

    .line 7
    :cond_2d
    new-instance v1, Lcom/huawei/hms/common/HuaweiApi;

    new-instance v3, Lcom/huawei/hms/aaid/task/PushClientBuilder;

    invoke-direct {v3}, Lcom/huawei/hms/aaid/task/PushClientBuilder;-><init>()V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    iput-object v1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->c:Lcom/huawei/hms/common/HuaweiApi;

    .line 8
    :goto_39
    iget-object p1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->c:Lcom/huawei/hms/common/HuaweiApi;

    const v0, 0x2fc7c3a

    invoke-virtual {p1, v0}, Lcom/huawei/hms/common/HuaweiApi;->setKitSdkVersion(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/huawei/hms/opendevice/c;->d(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/huawei/hms/aaid/HmsInstanceId;

    invoke-direct {v0, p0}, Lcom/huawei/hms/aaid/HmsInstanceId;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/huawei/hms/aaid/entity/TokenReq;I)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/huawei/hms/aaid/plugin/ProxyCenter;->getProxy()Lcom/huawei/hms/aaid/plugin/PushProxy;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 11
    sget-object p2, Lcom/huawei/hms/aaid/HmsInstanceId;->TAG:Ljava/lang/String;

    const-string v0, "use proxy get token, please check HmsMessageService.onNewToken receive result."

    invoke-static {p2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/huawei/hms/aaid/plugin/ProxyCenter;->getProxy()Lcom/huawei/hms/aaid/plugin/PushProxy;

    move-result-object p2

    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/huawei/hms/aaid/entity/TokenReq;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Lcom/huawei/hms/aaid/plugin/PushProxy;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 13
    :cond_1c
    invoke-virtual {p1}, Lcom/huawei/hms/aaid/entity/TokenReq;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/hms/aaid/HmsInstanceId;->a(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    const-string v1, "push.gettoken"

    invoke-static {v0, v1}, Lcom/huawei/hms/opendevice/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    :try_start_2b
    sget-object v2, Lcom/huawei/hms/aaid/HmsInstanceId;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_60

    const-string v4, "getToken req :"

    :try_start_34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/aaid/entity/TokenReq;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v2, Lcom/huawei/hms/opendevice/l;

    iget-object v3, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-direct {v2, v1, p1, v3, v0}, Lcom/huawei/hms/opendevice/l;-><init>(Ljava/lang/String;Lcom/huawei/hms/aaid/entity/TokenReq;Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, p2}, Lcom/huawei/hms/common/internal/TaskApiCall;->setApiLevel(I)V

    .line 18
    iget-object p1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->c:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/huawei/hmf/tasks/Tasks;->await(Lcom/huawei/hmf/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/aaid/entity/TokenResult;

    .line 20
    invoke-virtual {p1}, Lcom/huawei/hms/aaid/entity/TokenResult;->getToken()Ljava/lang/String;

    move-result-object p1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5f} :catch_60

    return-object p1

    :catch_60
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/huawei/hms/common/ApiException;

    if-eqz p2, :cond_79

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/common/ApiException;

    .line 23
    iget-object p2, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v2

    invoke-static {p2, v1, v0, v2}, Lcom/huawei/hms/opendevice/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    throw p1

    .line 25
    :cond_79
    iget-object p1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    sget-object p2, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_INTERNAL_ERROR:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-static {p1, v1, v0, p2}, Lcom/huawei/hms/opendevice/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/aaid/constant/ErrorEnum;)V

    .line 26
    sget-object p1, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_INTERNAL_ERROR:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p1}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p1

    throw p1
.end method

.method public final a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/aaid/utils/BaseUtils;->getProxyInit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/huawei/hms/aaid/plugin/ProxyCenter;->getProxy()Lcom/huawei/hms/aaid/plugin/PushProxy;

    move-result-object v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/aaid/utils/BaseUtils;->isMainProc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_25

    .line 50
    :cond_17
    sget-object v0, Lcom/huawei/hms/aaid/HmsInstanceId;->TAG:Ljava/lang/String;

    const-string v1, "Operations in child processes are not supported."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_OPER_IN_CHILD_PROCESS:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v0}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object v0

    throw v0

    :cond_25
    :goto_25
    return-void
.end method

.method public final a(Lcom/huawei/hms/aaid/entity/DeleteTokenReq;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/huawei/hms/aaid/entity/DeleteTokenReq;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/huawei/hms/aaid/plugin/ProxyCenter;->getProxy()Lcom/huawei/hms/aaid/plugin/PushProxy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 29
    sget-object p1, Lcom/huawei/hms/aaid/HmsInstanceId;->TAG:Ljava/lang/String;

    const-string p2, "use proxy delete token"

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/huawei/hms/aaid/plugin/ProxyCenter;->getProxy()Lcom/huawei/hms/aaid/plugin/PushProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-interface {p1, p2, v0, v2}, Lcom/huawei/hms/aaid/plugin/PushProxy;->deleteToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_1c
    iget-object v1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    const-string v3, "push.deletetoken"

    invoke-static {v1, v3}, Lcom/huawei/hms/opendevice/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    :try_start_24
    iget-object v4, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hms/opendevice/i;->a(Landroid/content/Context;)Lcom/huawei/hms/opendevice/i;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/huawei/hms/opendevice/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p1}, Lcom/huawei/hms/aaid/entity/DeleteTokenReq;->isMultiSender()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    iget-object v5, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/hms/opendevice/i;->a(Landroid/content/Context;)Lcom/huawei/hms/opendevice/i;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/huawei/hms/opendevice/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 35
    :cond_4a
    iget-object p1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/opendevice/i;->a(Landroid/content/Context;)Lcom/huawei/hms/opendevice/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/huawei/hms/aaid/utils/PushPreferences;->removeKey(Ljava/lang/String;)Z

    .line 36
    sget-object p1, Lcom/huawei/hms/aaid/HmsInstanceId;->TAG:Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_55} :catch_79

    const-string p2, "The local subject token is null"

    :try_start_57
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_5b
    invoke-virtual {p1, v4}, Lcom/huawei/hms/aaid/entity/DeleteTokenReq;->setToken(Ljava/lang/String;)V

    .line 38
    new-instance v2, Lcom/huawei/hms/opendevice/k;

    invoke-direct {v2, v3, p1, v1}, Lcom/huawei/hms/opendevice/k;-><init>(Ljava/lang/String;Lcom/huawei/hms/aaid/entity/DeleteTokenReq;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, p2}, Lcom/huawei/hms/common/internal/TaskApiCall;->setApiLevel(I)V

    .line 40
    iget-object p1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->c:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/huawei/hmf/tasks/Tasks;->await(Lcom/huawei/hmf/tasks/Task;)Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/opendevice/i;->a(Landroid/content/Context;)Lcom/huawei/hms/opendevice/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/huawei/hms/opendevice/i;->c(Ljava/lang/String;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_78} :catch_79

    return-void

    :catch_79
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/huawei/hms/common/ApiException;

    if-eqz p2, :cond_92

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/common/ApiException;

    .line 45
    iget-object p2, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v0

    invoke-static {p2, v3, v1, v0}, Lcom/huawei/hms/opendevice/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    throw p1

    .line 47
    :cond_92
    iget-object p1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    sget-object p2, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_INTERNAL_ERROR:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-static {p1, v3, v1, p2}, Lcom/huawei/hms/opendevice/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/aaid/constant/ErrorEnum;)V

    .line 48
    sget-object p1, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_INTERNAL_ERROR:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p1}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/p;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "subjectId"

    if-eqz v0, :cond_4f

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/i;->a(Landroid/content/Context;)Lcom/huawei/hms/opendevice/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/huawei/hms/aaid/utils/PushPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/i;->a(Landroid/content/Context;)Lcom/huawei/hms/opendevice/i;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/huawei/hms/aaid/utils/PushPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_58

    .line 6
    :cond_2b
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 7
    iget-object v2, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/hms/opendevice/i;->a(Landroid/content/Context;)Lcom/huawei/hms/opendevice/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v2, v1, p1}, Lcom/huawei/hms/aaid/utils/PushPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_58

    .line 9
    :cond_4f
    iget-object p1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/opendevice/i;->a(Landroid/content/Context;)Lcom/huawei/hms/opendevice/i;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/aaid/utils/PushPreferences;->removeKey(Ljava/lang/String;)Z

    :cond_58
    :goto_58
    return-void
.end method

.method public final b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_b

    return-void

    .line 2
    :cond_b
    sget-object v0, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_MAIN_THREAD:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v0}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object v0

    throw v0
.end method

.method public deleteAAID()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    const-string v0, "aaid"

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->b()V

    .line 2
    :try_start_5
    iget-object v1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->b:Lcom/huawei/hms/aaid/utils/PushPreferences;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/aaid/utils/PushPreferences;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 3
    :cond_e
    iget-object v1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->b:Lcom/huawei/hms/aaid/utils/PushPreferences;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/aaid/utils/PushPreferences;->removeKey(Ljava/lang/String;)Z

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->b:Lcom/huawei/hms/aaid/utils/PushPreferences;
    :try_end_15
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_5 .. :try_end_15} :catch_58
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_51

    const-string v1, "creationTime"

    :try_start_17
    invoke-virtual {v0, v1}, Lcom/huawei/hms/aaid/utils/PushPreferences;->removeKey(Ljava/lang/String;)Z

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/o;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    .line 6
    :cond_23
    invoke-static {}, Lcom/huawei/hms/aaid/plugin/ProxyCenter;->getProxy()Lcom/huawei/hms/aaid/plugin/PushProxy;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 7
    sget-object v0, Lcom/huawei/hms/aaid/HmsInstanceId;->TAG:Ljava/lang/String;
    :try_end_2b
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_17 .. :try_end_2b} :catch_58
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_51

    const-string v1, "use proxy delete all token after delete AaId."

    :try_start_2d
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/huawei/hms/aaid/plugin/ProxyCenter;->getProxy()Lcom/huawei/hms/aaid/plugin/PushProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/huawei/hms/aaid/plugin/PushProxy;->deleteAllToken(Landroid/content/Context;)V

    return-void

    .line 9
    :cond_3a
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/o;->b(Landroid/content/Context;)Lcom/huawei/hms/aaid/entity/DeleteTokenReq;

    move-result-object v0

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/huawei/hms/aaid/entity/DeleteTokenReq;->setDeleteType(I)V

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Lcom/huawei/hms/aaid/entity/DeleteTokenReq;->setMultiSender(Z)V

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/huawei/hms/aaid/HmsInstanceId;->a(Lcom/huawei/hms/aaid/entity/DeleteTokenReq;I)V

    .line 13
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/aaid/utils/BaseUtils;->deleteAllTokenCache(Landroid/content/Context;)V
    :try_end_50
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_2d .. :try_end_50} :catch_58
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    return-void

    .line 14
    :catch_51
    sget-object v0, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_INTERNAL_ERROR:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v0}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object v0

    throw v0

    :catch_58
    move-exception v0

    .line 15
    throw v0
.end method

.method public deleteToken(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->b()V

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->a()V

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 9
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, p1}, Lcom/huawei/hms/aaid/HmsInstanceId;->deleteToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_23
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/huawei/hms/opendevice/o;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hms/aaid/entity/DeleteTokenReq;

    move-result-object p1

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/huawei/hms/aaid/entity/DeleteTokenReq;->setMultiSender(Z)V

    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/aaid/HmsInstanceId;->a(Lcom/huawei/hms/aaid/entity/DeleteTokenReq;I)V

    return-void

    .line 16
    :cond_32
    sget-object p1, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_MISSING_PROJECT_ID:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p1}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p1

    throw p1

    .line 17
    :cond_39
    sget-object p1, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_ARGUMENTS_INVALID:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p1}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p1

    throw p1
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->a()V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/opendevice/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/aaid/entity/DeleteTokenReq;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/huawei/hms/aaid/entity/DeleteTokenReq;->setMultiSender(Z)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/aaid/HmsInstanceId;->a(Lcom/huawei/hms/aaid/entity/DeleteTokenReq;I)V

    return-void
.end method

.method public getAAID()Lcom/huawei/hmf/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Lcom/huawei/hms/aaid/entity/AAIDResult;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/huawei/hms/opendevice/j;

    iget-object v1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hms/opendevice/j;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/huawei/hmf/tasks/Tasks;->callInBackground(Ljava/util/concurrent/Callable;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 2
    :catch_10
    new-instance v0, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 3
    sget-object v1, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_INTERNAL_ERROR:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v1}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 4
    invoke-virtual {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    const-string v0, "creationTime"

    .line 1
    :try_start_2
    iget-object v1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->b:Lcom/huawei/hms/aaid/utils/PushPreferences;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/aaid/utils/PushPreferences;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->getAAID()Lcom/huawei/hmf/tasks/Task;

    .line 3
    :cond_d
    iget-object v1, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->b:Lcom/huawei/hms/aaid/utils/PushPreferences;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/aaid/utils/PushPreferences;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    return-wide v0

    :catch_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0, v0, v0}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_5

    :catch_5
    return-object v0
.end method

.method public getToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->b()V

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->a()V

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/opendevice/o;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, p1}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :cond_24
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/huawei/hms/opendevice/o;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/hms/aaid/entity/TokenReq;

    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/aaid/entity/TokenReq;->setAaid(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lcom/huawei/hms/aaid/entity/TokenReq;->setMultiSender(Z)V

    const/4 v0, 0x2

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/aaid/HmsInstanceId;->a(Lcom/huawei/hms/aaid/entity/TokenReq;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_3b
    sget-object p1, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_MISSING_PROJECT_ID:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p1}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p1

    throw p1

    .line 21
    :cond_42
    sget-object p1, Lcom/huawei/hms/aaid/constant/ErrorEnum;->ERROR_ARGUMENTS_INVALID:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {p1}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->toApiException()Lcom/huawei/hms/common/ApiException;

    move-result-object p1

    throw p1
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->a()V

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/opendevice/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/aaid/entity/TokenReq;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/aaid/HmsInstanceId;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hms/aaid/entity/TokenReq;->setAaid(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/huawei/hms/aaid/entity/TokenReq;->setMultiSender(Z)V

    .line 7
    iget-object p2, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/huawei/hms/opendevice/i;->a(Landroid/content/Context;)Lcom/huawei/hms/opendevice/i;

    move-result-object p2

    iget-object v0, p0, Lcom/huawei/hms/aaid/HmsInstanceId;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Lcom/huawei/hms/aaid/utils/PushPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/aaid/HmsInstanceId;->a(Lcom/huawei/hms/aaid/entity/TokenReq;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
