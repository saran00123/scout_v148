.class public abstract Lcom/huawei/hms/common/internal/TaskApiCall;
.super Ljava/lang/Object;
.source "TaskApiCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ClientT::",
        "Lcom/huawei/hms/common/internal/AnyClient;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskApiCall"


# instance fields
.field private apiLevel:I

.field private final mRequestJson:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private parcelable:Landroid/os/Parcelable;

.field private token:Lcom/huawei/hmf/tasks/CancellationToken;

.field private transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    .line 12
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mUri:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mRequestJson:Ljava/lang/String;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->parcelable:Landroid/os/Parcelable;

    .line 15
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    .line 41
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mUri:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mRequestJson:Ljava/lang/String;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->parcelable:Landroid/os/Parcelable;

    .line 44
    iput-object p3, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    .line 85
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mUri:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mRequestJson:Ljava/lang/String;

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->parcelable:Landroid/os/Parcelable;

    .line 88
    iput-object p3, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    .line 89
    iput p4, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    return-void
.end method


# virtual methods
.method protected abstract doExecute(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClientT;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lcom/huawei/hmf/tasks/TaskCompletionSource<",
            "TResultT;>;)V"
        }
    .end annotation
.end method

.method public getApiLevel()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    return v0
.end method

.method public getMinApkVersion()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1c9c380

    return v0
.end method

.method public getParcelable()Landroid/os/Parcelable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->parcelable:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRequestJson()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mRequestJson:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Lcom/huawei/hmf/tasks/CancellationToken;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->token:Lcom/huawei/hmf/tasks/CancellationToken;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public final onResponse(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClientT;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lcom/huawei/hmf/tasks/TaskCompletionSource<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->token:Lcom/huawei/hmf/tasks/CancellationToken;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/huawei/hmf/tasks/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This Task has been canceled, uri:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", transactionId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskApiCall"

    invoke-static {p2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/hms/common/internal/TaskApiCall;->doExecute(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public setApiLevel(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    return-void
.end method

.method public setParcelable(Landroid/os/Parcelable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->parcelable:Landroid/os/Parcelable;

    return-void
.end method

.method public setToken(Lcom/huawei/hmf/tasks/CancellationToken;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->token:Lcom/huawei/hmf/tasks/CancellationToken;

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    return-void
.end method
