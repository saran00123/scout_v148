.class Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;
.super Ljava/lang/Object;
.source "HuaweiApiManager.java"

# interfaces
.implements Lcom/huawei/hms/common/internal/AnyClient$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->wrapperRequest(Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirstRsp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

.field final synthetic val$req:Lcom/huawei/hms/common/internal/TaskApiCallWrapper;


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    iput-object p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->val$req:Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->isFirstRsp:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v1, "HuaweiApiManager"

    if-nez v0, :cond_c

    const-string p1, "header is not instance of ResponseHeader"

    .line 2
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_c
    check-cast p1, Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->getResolution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response has resolution: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->getResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_30
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->isFirstRsp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->access$200(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Lcom/huawei/hms/common/HuaweiApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    .line 13
    invoke-static {v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->access$200(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Lcom/huawei/hms/common/HuaweiApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/common/HuaweiApi;->getKitSdkVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v0, p1, v1}, Lcom/huawei/hms/support/hianalytics/b;->a(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;Ljava/lang/String;)V

    .line 18
    :cond_55
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->val$req:Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-static {v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->access$300(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Lcom/huawei/hms/common/internal/AnyClient;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;->val$req:Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskCompletionSource()Lcom/huawei/hmf/tasks/TaskCompletionSource;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/huawei/hms/common/internal/TaskApiCall;->onResponse(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    return-void
.end method
