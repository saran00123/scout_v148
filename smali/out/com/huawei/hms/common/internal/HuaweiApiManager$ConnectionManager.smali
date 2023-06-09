.class public Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;
.super Ljava/lang/Object;
.source "HuaweiApiManager.java"

# interfaces
.implements Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;
.implements Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OptionsT::",
        "Lcom/huawei/hms/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;",
        "Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field private final callbackQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mApi:Lcom/huawei/hms/common/HuaweiApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/common/HuaweiApi<",
            "TOptionsT;>;"
        }
    .end annotation
.end field

.field private final mClient:Lcom/huawei/hms/common/internal/AnyClient;

.field private final mConnectionManagerKey:Lcom/huawei/hms/common/internal/ConnectionManagerKey;

.field private mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

.field private mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

.field final synthetic this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager;Lcom/huawei/hms/common/HuaweiApi;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "TOptionsT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->callbackQueue:Ljava/util/Queue;

    .line 20
    iput-object p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    .line 21
    invoke-static {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/huawei/hms/common/HuaweiApi;->getClient(Landroid/os/Looper;Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Lcom/huawei/hms/common/internal/AnyClient;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

    .line 23
    invoke-virtual {p2}, Lcom/huawei/hms/common/HuaweiApi;->getConnectionManagerKey()Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionManagerKey:Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Lcom/huawei/hms/common/HuaweiApi;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Lcom/huawei/hms/common/internal/AnyClient;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;Lcom/huawei/hms/api/ConnectionResult;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->innerConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->innerConnected()V

    return-void
.end method

.method static synthetic access$700(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->innerConnectionSuspended(I)V

    return-void
.end method

.method private errorReason(Lcom/huawei/hms/api/ConnectionResult;)Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, -0x1

    if-eqz v0, :cond_3c

    .line 2
    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p1

    if-eq p1, v3, :cond_4f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_39

    if-eq p1, v2, :cond_4c

    if-eq p1, v1, :cond_49

    const/16 v0, 0xd

    if-eq p1, v0, :cond_36

    const/16 v0, 0x15

    if-eq p1, v0, :cond_33

    packed-switch p1, :pswitch_data_52

    goto :goto_46

    :pswitch_2a
    const-string p1, "there is already an update popup at the front desk, but it hasn\'t been clicked or it is not effective for a while"

    goto :goto_51

    :pswitch_2d
    const-string p1, "update failed, because no activity incoming, can\'t pop update page"

    goto :goto_51

    :pswitch_30
    const-string p1, "failed to get update result"

    goto :goto_51

    :cond_33
    const-string p1, "device is too old to be support"

    goto :goto_51

    :cond_36
    const-string p1, "update cancelled"

    goto :goto_51

    :cond_39
    const-string p1, "HuaWei Mobile Service is disabled"

    goto :goto_51

    .line 34
    :cond_3c
    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p1

    if-eq p1, v3, :cond_4f

    if-eq p1, v2, :cond_4c

    if-eq p1, v1, :cond_49

    :goto_46
    const-string p1, "unknown errorReason"

    goto :goto_51

    :cond_49
    const-string p1, "application configuration error, please developer check configuration"

    goto :goto_51

    :cond_4c
    const-string p1, "internal error"

    goto :goto_51

    :cond_4f
    const-string p1, "get update result, but has other error codes"

    :goto_51
    return-object p1

    :pswitch_data_52
    .packed-switch 0x19
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
    .end packed-switch
.end method

.method private getTransactionId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {p1}, Lcom/huawei/hms/common/HuaweiApi;->getAppID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/huawei/hms/common/internal/TransactionIdCreater;->getId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method private innerConnected()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->callbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;

    .line 4
    invoke-direct {p0, v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->postMessage(Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;)V

    goto :goto_12

    .line 6
    :cond_22
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->callbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method private innerConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->callbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;

    .line 5
    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;->getApiCallWrapper()Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    move-result-object v3

    .line 6
    new-instance v5, Lcom/huawei/hms/common/internal/ResponseHeader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection Failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->errorReason(Lcom/huawei/hms/api/ConnectionResult;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x3611c81b

    invoke-direct {v5, v1, v7, v6}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/hms/common/internal/ResponseHeader;->setTransactionId(Ljava/lang/String;)V

    .line 10
    iget-object v6, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v6}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    .line 11
    invoke-virtual {v7}, Lcom/huawei/hms/common/HuaweiApi;->getKitSdkVersion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {v6, v5, v7}, Lcom/huawei/hms/support/hianalytics/b;->a(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;Ljava/lang/String;)V

    .line 14
    iget-object v6, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

    invoke-virtual {v6}, Lcom/huawei/hms/api/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_9f

    if-eqz v2, :cond_9f

    .line 15
    iget-object v2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

    invoke-virtual {v2}, Lcom/huawei/hms/api/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setParcelable(Landroid/os/Parcelable;)V

    const/4 v2, 0x0

    .line 17
    iget-object v6, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v6}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9f

    iget-object v6, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

    .line 18
    invoke-virtual {v6}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result v6

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_9f

    const-string v6, "hasContextResolution"

    .line 20
    invoke-virtual {v5, v6}, Lcom/huawei/hms/common/internal/ResponseHeader;->setResolution(Ljava/lang/String;)V

    .line 23
    :cond_9f
    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskCompletionSource()Lcom/huawei/hmf/tasks/TaskCompletionSource;

    move-result-object v3

    invoke-virtual {v6, v7, v5, v4, v3}, Lcom/huawei/hms/common/internal/TaskApiCall;->onResponse(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    goto/16 :goto_13

    .line 26
    :cond_ae
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->callbackQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 27
    iput-object v4, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

    .line 28
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {p1}, Lcom/huawei/hms/common/internal/AnyClient;->disconnect()V

    .line 29
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$400(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionManagerKey:Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private innerConnectionSuspended(I)V
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->callbackQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;->getApiCallWrapper()Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/huawei/hms/common/internal/ResponseHeader;

    const/4 v3, 0x1

    const v4, 0x3611c81b

    const-string v5, "Connection Suspended"

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/hms/common/internal/ResponseHeader;->setTransactionId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskCompletionSource()Lcom/huawei/hmf/tasks/TaskCompletionSource;

    move-result-object v0

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/huawei/hms/common/internal/TaskApiCall;->onResponse(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    goto :goto_f

    .line 9
    :cond_44
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->callbackQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 10
    iput-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

    .line 11
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {p1}, Lcom/huawei/hms/common/internal/AnyClient;->disconnect()V

    .line 12
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$400(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionManagerKey:Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private postMessage(Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;->getApiCallWrapper()Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-direct {v1}, Lcom/huawei/hms/common/internal/RequestHeader;-><init>()V

    const-string v2, "\\."

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/huawei/hms/common/internal/RequestHeader;->setSrvName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/huawei/hms/common/internal/RequestHeader;->setApiName(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v3}, Lcom/huawei/hms/common/HuaweiApi;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v3}, Lcom/huawei/hms/common/HuaweiApi;->getSubAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/common/internal/RequestHeader;->setAppID(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v2}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/common/internal/RequestHeader;->setPkgName(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v2}, Lcom/huawei/hms/common/internal/AnyClient;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/common/internal/RequestHeader;->setSessionId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;->getApiCallWrapper()Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->getTransactionId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/huawei/hms/common/internal/RequestHeader;->setTransactionId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/TaskApiCall;->getParcelable()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/huawei/hms/common/internal/RequestHeader;->setParcelable(Landroid/os/Parcelable;)V

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v0}, Lcom/huawei/hms/common/HuaweiApi;->getKitSdkVersion()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/huawei/hms/common/internal/RequestHeader;->setKitSdkVersion(I)V

    .line 13
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v0}, Lcom/huawei/hms/common/HuaweiApi;->getApiLevel()I

    move-result v0

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/TaskApiCall;->getApiLevel()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 14
    invoke-virtual {v1, v0}, Lcom/huawei/hms/common/internal/RequestHeader;->setApiLevel(I)V

    .line 15
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/TaskApiCall;->getRequestJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;->getCallBack()Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/huawei/hms/common/internal/AnyClient;->post(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;Lcom/huawei/hms/common/internal/AnyClient$CallBack;)V

    return-void
.end method

.method private wrapperRequest(Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;
    .registers 4

    .line 1
    new-instance v0, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;

    new-instance v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)V

    invoke-direct {v0, p1, v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;-><init>(Lcom/huawei/hms/common/internal/TaskApiCallWrapper;Lcom/huawei/hms/common/internal/AnyClient$CallBack;)V

    return-object v0
.end method


# virtual methods
.method declared-synchronized connect(I)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v0}, Lcom/huawei/hms/common/internal/AnyClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p1, "HuaweiApiManager"

    const-string v0, "client is connected"

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_66

    monitor-exit p0

    return-void

    .line 6
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v0}, Lcom/huawei/hms/common/internal/AnyClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p1, "HuaweiApiManager"

    const-string v0, "client is isConnecting"

    .line 7
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_66

    monitor-exit p0

    return-void

    .line 10
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v0}, Lcom/huawei/hms/common/HuaweiApi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

    if-nez v0, :cond_41

    .line 13
    new-instance v0, Lcom/huawei/hms/common/internal/ResolveClientBean;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-direct {v0, v1, p1}, Lcom/huawei/hms/common/internal/ResolveClientBean;-><init>(Lcom/huawei/hms/common/internal/AnyClient;I)V

    iput-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

    .line 15
    :cond_41
    invoke-static {}, Lcom/huawei/hms/common/internal/BindResolveClients;->getInstance()Lcom/huawei/hms/common/internal/BindResolveClients;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/BindResolveClients;->isClientRegistered(Lcom/huawei/hms/common/internal/ResolveClientBean;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string p1, "HuaweiApiManager"

    const-string v0, "mResolveClientBean has already register, return!"

    .line 16
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_66

    monitor-exit p0

    return-void

    .line 19
    :cond_56
    :try_start_56
    invoke-static {}, Lcom/huawei/hms/common/internal/BindResolveClients;->getInstance()Lcom/huawei/hms/common/internal/BindResolveClients;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/BindResolveClients;->register(Lcom/huawei/hms/common/internal/ResolveClientBean;)V

    .line 21
    :cond_5f
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v0, p1}, Lcom/huawei/hms/common/internal/AnyClient;->connect(I)V
    :try_end_64
    .catchall {:try_start_56 .. :try_end_64} :catchall_66

    monitor-exit p0

    return-void

    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method disconnect()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v0}, Lcom/huawei/hms/common/internal/AnyClient;->disconnect()V

    const/4 v0, 0x1

    return v0
.end method

.method public onConnected()V
    .registers 3

    const-string v0, "HuaweiApiManager"

    const-string v1, "onConnected"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hms/common/internal/BindResolveClients;->getInstance()Lcom/huawei/hms/common/internal/BindResolveClients;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/BindResolveClients;->unRegister(Lcom/huawei/hms/common/internal/ResolveClientBean;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 5
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->innerConnected()V

    goto :goto_35

    .line 7
    :cond_27
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3;

    invoke-direct {v1, p0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_35
    return-void
.end method

.method public onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V
    .registers 4

    const-string v0, "HuaweiApiManager"

    const-string v1, "onConnectionFailed"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hms/common/internal/BindResolveClients;->getInstance()Lcom/huawei/hms/common/internal/BindResolveClients;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/BindResolveClients;->unRegister(Lcom/huawei/hms/common/internal/ResolveClientBean;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 5
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->innerConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    goto :goto_35

    .line 7
    :cond_27
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;Lcom/huawei/hms/api/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_35
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 4

    const-string v0, "HuaweiApiManager"

    const-string v1, "onConnectionSuspended"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/huawei/hms/common/internal/BindResolveClients;->getInstance()Lcom/huawei/hms/common/internal/BindResolveClients;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/BindResolveClients;->unRegister(Lcom/huawei/hms/common/internal/ResolveClientBean;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mResolveClientBean:Lcom/huawei/hms/common/internal/ResolveClientBean;

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 5
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->innerConnectionSuspended(I)V

    goto :goto_35

    .line 7
    :cond_27
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_35
    return-void
.end method

.method sendRequest(Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)V
    .registers 4

    const-string v0, "HuaweiApiManager"

    const-string v1, "sendRequest"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->wrapperRequest(Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->getMinApkVersion()I

    move-result p1

    .line 8
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mClient:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v1}, Lcom/huawei/hms/common/internal/AnyClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 9
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v1}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/hms/utils/HMSPackageManager;->hmsVerHigherThan(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 10
    invoke-direct {p0, v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->postMessage(Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;)V

    goto :goto_5c

    .line 13
    :cond_38
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->disconnect()Z

    .line 14
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->callbackQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->connect(I)V

    goto :goto_5c

    .line 18
    :cond_44
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->callbackQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_59

    .line 20
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->mConnectionResult:Lcom/huawei/hms/api/ConnectionResult;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    goto :goto_5c

    .line 22
    :cond_59
    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->connect(I)V

    :goto_5c
    return-void
.end method
