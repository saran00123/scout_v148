.class public Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;
.super Lanetwork/channel/aidl/ParcelableFuture$Stub;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.ParcelableFutureResponse"


# instance fields
.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lanetwork/channel/Response;",
            ">;"
        }
    .end annotation
.end field

.field response:Lanetwork/channel/aidl/NetworkResponse;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lanetwork/channel/Response;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableFuture$Stub;-><init>()V

    .line 19
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->future:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->future:Ljava/util/concurrent/Future;

    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 27
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public get(J)Lanetwork/channel/aidl/NetworkResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->future:Ljava/util/concurrent/Future;

    const/16 v1, -0xc9

    if-nez v0, :cond_11

    .line 49
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->response:Lanetwork/channel/aidl/NetworkResponse;

    if-eqz p1, :cond_b

    return-object p1

    .line 52
    :cond_b
    new-instance p1, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {p1, v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    return-object p1

    .line 56
    :cond_11
    :try_start_11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanetwork/channel/aidl/NetworkResponse;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NO SUPPORT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_32

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "anet.ParcelableFutureResponse"

    const-string v3, "[get]\u6709listener\u5c06\u4e0d\u652f\u6301future.get()\u65b9\u6cd5\uff0c\u5982\u6709\u9700\u8981\u8bf7listener\u4f20\u5165null"

    invoke-static {v2, v3, p2, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 61
    :cond_32
    new-instance p1, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {p1, v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    return-object p1
.end method

.method public isCancelled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->future:Ljava/util/concurrent/Future;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 35
    :cond_6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->future:Ljava/util/concurrent/Future;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 43
    :cond_6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
