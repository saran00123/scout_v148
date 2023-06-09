.class public Lcom/huawei/hms/common/internal/HuaweiApiManager;
.super Ljava/lang/Object;
.source "HuaweiApiManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;,
        Lcom/huawei/hms/common/internal/HuaweiApiManager$TaskApiCallbackWrapper;
    }
.end annotation


# static fields
.field private static final HANDLER_NAME:Ljava/lang/String; = "HuaweiApiHandler"

.field private static final LOCK_OBJECT:Ljava/lang/Object;

.field private static final MSG_RECEIVE_SEND_REQ:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HuaweiApiManager"

.field private static mInstance:Lcom/huawei/hms/common/internal/HuaweiApiManager;


# instance fields
.field private final mConnectionCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/hms/common/internal/ConnectionManagerKey<",
            "*>;",
            "Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mSerial:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->LOCK_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/huawei/hms/api/HuaweiApiAvailability;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p3, 0x5

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p1, p3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mConnectionCache:Ljava/util/Map;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/hms/common/internal/HuaweiApiManager;Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->innerDisconnect(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mConnectionCache:Ljava/util/Map;

    return-object p0
.end method

.method private connectAndSendRequest(Lcom/huawei/hms/common/internal/HandlerMessageWrapper;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/huawei/hms/common/internal/HandlerMessageWrapper;->mApi:Lcom/huawei/hms/common/HuaweiApi;

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mConnectionCache:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/huawei/hms/common/HuaweiApi;->getConnectionManagerKey()Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    if-nez v1, :cond_1e

    .line 4
    new-instance v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager;Lcom/huawei/hms/common/HuaweiApi;)V

    .line 5
    iget-object v2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mConnectionCache:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/huawei/hms/common/HuaweiApi;->getConnectionManagerKey()Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1e
    iget-object p1, p1, Lcom/huawei/hms/common/internal/HandlerMessageWrapper;->mContentWrapper:Lcom/huawei/hms/common/internal/BaseContentWrapper;

    check-cast p1, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    invoke-virtual {v1, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->sendRequest(Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/hms/common/internal/HuaweiApiManager;
    .registers 5

    .line 1
    sget-object v0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->LOCK_OBJECT:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mInstance:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    if-nez v1, :cond_24

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HuaweiApiManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v2, Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/huawei/hms/common/internal/HuaweiApiManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/huawei/hms/api/HuaweiApiAvailability;)V

    sput-object v2, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mInstance:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    .line 8
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_28

    .line 9
    sget-object p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mInstance:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    return-object p0

    :catchall_28
    move-exception p0

    .line 10
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private innerDisconnect(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "*>;",
            "Lcom/huawei/hmf/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mConnectionCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/huawei/hms/common/HuaweiApi;->getConnectionManagerKey()Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    if-nez p1, :cond_17

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_22

    .line 6
    :cond_17
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->disconnect()Z

    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_22
    return-void
.end method


# virtual methods
.method public disconnectService(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "*>;",
            "Lcom/huawei/hmf/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->innerDisconnect(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    goto :goto_1a

    .line 4
    :cond_10
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager;Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiApiManager"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/huawei/hms/common/internal/HandlerMessageWrapper;

    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->connectAndSendRequest(Lcom/huawei/hms/common/internal/HandlerMessageWrapper;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final sendRequest(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hms/common/internal/TaskApiCall;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOption::",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "TTOption;>;",
            "Lcom/huawei/hms/common/internal/TaskApiCall<",
            "+",
            "Lcom/huawei/hms/common/internal/AnyClient;",
            "TTResult;>;",
            "Lcom/huawei/hmf/tasks/TaskCompletionSource<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    invoke-direct {v0, p2, p3}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;-><init>(Lcom/huawei/hms/common/internal/TaskApiCall;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    .line 2
    iget-object p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/huawei/hms/common/internal/HandlerMessageWrapper;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager;->mSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {p3, v0, v1, p1}, Lcom/huawei/hms/common/internal/HandlerMessageWrapper;-><init>(Lcom/huawei/hms/common/internal/BaseContentWrapper;ILcom/huawei/hms/common/HuaweiApi;)V

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
