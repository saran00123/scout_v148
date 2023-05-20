.class public Lanetwork/channel/aidl/adapter/ConnectionDelegate;
.super Lanetwork/channel/aidl/Connection$Stub;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/NetworkCallBack$FinishListener;
.implements Lanetwork/channel/NetworkCallBack$InputStreamListener;
.implements Lanetwork/channel/NetworkCallBack$ResponseCodeListener;


# instance fields
.field private config:Lanetwork/channel/entity/g;

.field private desc:Ljava/lang/String;

.field private future:Lanetwork/channel/aidl/ParcelableFuture;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private inputStream:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

.field private statisticData:Lanetwork/channel/statist/StatisticData;

.field private statusCode:I

.field private statusLatch:Ljava/util/concurrent/CountDownLatch;

.field private streamLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 39
    invoke-direct {p0}, Lanetwork/channel/aidl/Connection$Stub;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->streamLatch:Ljava/util/concurrent/CountDownLatch;

    .line 40
    iput p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusCode:I

    .line 41
    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lanetwork/channel/entity/g;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Lanetwork/channel/aidl/Connection$Stub;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->streamLatch:Ljava/util/concurrent/CountDownLatch;

    .line 45
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->config:Lanetwork/channel/entity/g;

    return-void
.end method

.method private buildRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;
    .registers 4

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_c

    .line 133
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 135
    :cond_c
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    return-object p1
.end method

.method private waitCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->config:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 121
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->future:Lanetwork/channel/aidl/ParcelableFuture;

    if-eqz p1, :cond_1b

    .line 122
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->future:Lanetwork/channel/aidl/ParcelableFuture;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lanetwork/channel/aidl/ParcelableFuture;->cancel(Z)Z

    :cond_1b
    const-string/jumbo p1, "wait time out"

    .line 124
    invoke-direct {p0, p1}, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->buildRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;

    move-result-object p1

    throw p1
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_23} :catch_24

    :cond_23
    return-void

    :catch_24
    const-string/jumbo p1, "thread interrupt"

    .line 127
    invoke-direct {p0, p1}, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->buildRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public cancel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->future:Lanetwork/channel/aidl/ParcelableFuture;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 96
    invoke-interface {v0, v1}, Lanetwork/channel/aidl/ParcelableFuture;->cancel(Z)Z

    :cond_8
    return-void
.end method

.method public getConnHeadFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->waitCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 90
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->header:Ljava/util/Map;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->waitCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 56
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Lanetwork/channel/aidl/ParcelableInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->streamLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->waitCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 72
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->inputStream:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    return-object v0
.end method

.method public getStatisticData()Lanetwork/channel/statist/StatisticData;
    .registers 2

    .line 63
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statisticData:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->waitCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 81
    iget v0, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusCode:I

    return v0
.end method

.method public onFinished(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V
    .registers 3

    .line 105
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getHttpCode()I

    move-result p2

    iput p2, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusCode:I

    .line 106
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getDesc()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getDesc()Ljava/lang/String;

    move-result-object p2

    goto :goto_17

    :cond_11
    iget p2, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusCode:I

    invoke-static {p2}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p2

    :goto_17
    iput-object p2, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->desc:Ljava/lang/String;

    .line 107
    invoke-interface {p1}, Lanetwork/channel/NetworkEvent$FinishEvent;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statisticData:Lanetwork/channel/statist/StatisticData;

    .line 109
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->inputStream:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    if-eqz p1, :cond_26

    .line 110
    invoke-virtual {p1}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->writeEnd()V

    .line 112
    :cond_26
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->streamLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 113
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onInputStreamGet(Lanetwork/channel/aidl/ParcelableInputStream;Ljava/lang/Object;)V
    .registers 3

    .line 148
    check-cast p1, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->inputStream:Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    .line 149
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->streamLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 140
    iput p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusCode:I

    .line 141
    iget p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusCode:I

    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->desc:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->header:Ljava/util/Map;

    .line 143
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->statusLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    return p1
.end method

.method public setFuture(Lanetwork/channel/aidl/ParcelableFuture;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ConnectionDelegate;->future:Lanetwork/channel/aidl/ParcelableFuture;

    return-void
.end method
