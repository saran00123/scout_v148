.class public Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;
.super Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.ParcelableNetworkListenerWrapper"


# instance fields
.field private handler:Landroid/os/Handler;

.field private listener:Lanetwork/channel/NetworkListener;

.field private mContext:Ljava/lang/Object;

.field private state:B


# direct methods
.method public constructor <init>(Lanetwork/channel/NetworkListener;Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 6

    .line 36
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    .line 37
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->listener:Lanetwork/channel/NetworkListener;

    if-eqz p1, :cond_56

    .line 39
    const-class v0, Lanetwork/channel/NetworkCallBack$FinishListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 40
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    .line 42
    :cond_1d
    const-class v0, Lanetwork/channel/NetworkCallBack$ProgressListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 43
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    .line 45
    :cond_30
    const-class v0, Lanetwork/channel/NetworkCallBack$ResponseCodeListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 46
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    .line 48
    :cond_43
    const-class v0, Lanetwork/channel/NetworkCallBack$InputStreamListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 49
    iget-byte p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    .line 52
    :cond_56
    iput-object p2, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->handler:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->mContext:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;BLjava/lang/Object;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->dispatchCallback(BLjava/lang/Object;)V

    return-void
.end method

.method private dispatch(BLjava/lang/Object;)V
    .registers 5

    .line 57
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->handler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 58
    invoke-direct {p0, p1, p2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->dispatchCallback(BLjava/lang/Object;)V

    goto :goto_10

    .line 60
    :cond_8
    new-instance v1, Lanetwork/channel/aidl/adapter/c;

    invoke-direct {v1, p0, p1, p2}, Lanetwork/channel/aidl/adapter/c;-><init>(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_10
    return-void
.end method

.method private dispatchCallback(BLjava/lang/Object;)V
    .registers 10

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "anet.ParcelableNetworkListenerWrapper"

    const/4 v4, 0x1

    if-ne p1, v0, :cond_39

    .line 72
    :try_start_8
    check-cast p2, Lanetwork/channel/aidl/ParcelableHeader;

    .line 73
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->listener:Lanetwork/channel/NetworkListener;

    check-cast p1, Lanetwork/channel/NetworkCallBack$ResponseCodeListener;

    invoke-virtual {p2}, Lanetwork/channel/aidl/ParcelableHeader;->getResponseCode()I

    move-result v0

    invoke-virtual {p2}, Lanetwork/channel/aidl/ParcelableHeader;->getHeader()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->mContext:Ljava/lang/Object;

    invoke-interface {p1, v0, v5, v6}, Lanetwork/channel/NetworkCallBack$ResponseCodeListener;->onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z

    .line 74
    invoke-static {v4}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onResponseCode]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v2, p2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c0

    :cond_39
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6b

    .line 78
    check-cast p2, Lanetwork/channel/aidl/DefaultProgressEvent;

    if-eqz p2, :cond_45

    .line 80
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->mContext:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lanetwork/channel/aidl/DefaultProgressEvent;->setContext(Ljava/lang/Object;)V

    .line 82
    :cond_45
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->listener:Lanetwork/channel/NetworkListener;

    check-cast p1, Lanetwork/channel/NetworkCallBack$ProgressListener;

    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->mContext:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lanetwork/channel/NetworkCallBack$ProgressListener;->onDataReceived(Lanetwork/channel/NetworkEvent$ProgressEvent;Ljava/lang/Object;)V

    .line 83
    invoke-static {v4}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onDataReceived]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v2, p2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c0

    :cond_6b
    if-ne p1, v4, :cond_9c

    .line 87
    check-cast p2, Lanetwork/channel/aidl/DefaultFinishEvent;

    if-eqz p2, :cond_76

    .line 89
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->mContext:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lanetwork/channel/aidl/DefaultFinishEvent;->setContext(Ljava/lang/Object;)V

    .line 91
    :cond_76
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->listener:Lanetwork/channel/NetworkListener;

    check-cast p1, Lanetwork/channel/NetworkCallBack$FinishListener;

    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->mContext:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lanetwork/channel/NetworkCallBack$FinishListener;->onFinished(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V

    .line 92
    invoke-static {v4}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onFinished]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v2, p2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c0

    :cond_9c
    const/16 v0, 0x8

    if-ne p1, v0, :cond_c0

    .line 96
    check-cast p2, Lanetwork/channel/aidl/ParcelableInputStream;

    .line 97
    iget-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->listener:Lanetwork/channel/NetworkListener;

    check-cast p1, Lanetwork/channel/NetworkCallBack$InputStreamListener;

    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->mContext:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lanetwork/channel/NetworkCallBack$InputStreamListener;->onInputStreamGet(Lanetwork/channel/aidl/ParcelableInputStream;Ljava/lang/Object;)V

    .line 98
    invoke-static {v4}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_c0

    const-string p1, "[onInputStreamReceived]"

    .line 99
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v2, p2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b8} :catch_b9

    goto :goto_c0

    .line 103
    :catch_b9
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "dispatchCallback error"

    invoke-static {v3, p2, v2, p1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c0
    :goto_c0
    return-void
.end method


# virtual methods
.method public getListener()Lanetwork/channel/NetworkListener;
    .registers 2

    .line 32
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->listener:Lanetwork/channel/NetworkListener;

    return-object v0
.end method

.method public getListenerState()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    return v0
.end method

.method public onDataReceived(Lanetwork/channel/aidl/DefaultProgressEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 110
    invoke-direct {p0, v1, p1}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->dispatch(BLjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public onFinished(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 118
    invoke-direct {p0, v1, p1}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->dispatch(BLjava/lang/Object;)V

    :cond_9
    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->listener:Lanetwork/channel/NetworkListener;

    .line 121
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->mContext:Ljava/lang/Object;

    .line 122
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onInputStreamGet(Lanetwork/channel/aidl/ParcelableInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-byte v0, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 137
    invoke-direct {p0, v1, p1}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->dispatch(BLjava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public onResponseCode(ILanetwork/channel/aidl/ParcelableHeader;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    iget-byte p1, p0, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->state:B

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    .line 129
    invoke-direct {p0, v0, p2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->dispatch(BLjava/lang/Object;)V

    :cond_9
    const/4 p1, 0x0

    return p1
.end method
