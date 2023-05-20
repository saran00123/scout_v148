.class public Lcom/pilotlab/rollereye/Manager/MyReconnectManager;
.super Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;
.source "MyReconnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;
    }
.end annotation


# static fields
.field private static final MAX_CONNECTION_FAILED_TIMES:I = 0x7fffffff


# instance fields
.field private mConnectionFailedTimes:I

.field private volatile mReconnectTestingThread:Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionFailedTimes:I

    .line 24
    new-instance v0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;-><init>(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;Lcom/pilotlab/rollereye/Manager/MyReconnectManager$1;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mReconnectTestingThread:Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Z
    .registers 1

    .line 11
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mDetach:Z

    return p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Z
    .registers 1

    .line 11
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mDetach:Z

    return p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    return-object p0
.end method

.method private isNeedReconnect(Ljava/lang/Exception;)Z
    .registers 7

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 76
    :try_start_6
    instance-of v2, p1, Lcom/xuhao/didi/socket/client/impl/exceptions/ManuallyDisconnectException;

    if-nez v2, :cond_2b

    .line 77
    iget-object v2, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 78
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 81
    monitor-exit v0

    return v1

    :cond_28
    const/4 p1, 0x1

    .line 84
    monitor-exit v0

    return p1

    .line 86
    :cond_2b
    monitor-exit v0

    return v1

    :catchall_2d
    move-exception p1

    .line 87
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private reconnectDelay()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mReconnectTestingThread:Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object v1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mReconnectTestingThread:Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 106
    iget-object v1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mReconnectTestingThread:Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->start()V

    .line 108
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private declared-synchronized resetThread()V
    .registers 2

    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mReconnectTestingThread:Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;

    if-eqz v0, :cond_a

    .line 96
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mReconnectTestingThread:Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->shutdown()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 98
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public detach()V
    .registers 1

    .line 113
    invoke-super {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->detach()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_12

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq v1, p1, :cond_11

    goto :goto_12

    :cond_11
    return v0

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method public onSocketConnectionFailed(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    if-eqz p3, :cond_4d

    .line 44
    iget p1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionFailedTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionFailedTimes:I

    .line 45
    iget p1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionFailedTimes:I

    const p2, 0x7fffffff

    if-le p1, p2, :cond_4a

    .line 46
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->resetThread()V

    .line 48
    iget-object p1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getRemoteConnectionInfo()Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->getBackupInfo()Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    move-result-object p2

    if-eqz p2, :cond_46

    .line 51
    new-instance p3, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    invoke-virtual {p1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->getPort()I

    move-result p1

    invoke-direct {p3, v0, p1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;-><init>(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p2, p3}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->setBackupInfo(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;)V

    .line 53
    iget-object p1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->isConnect()Z

    move-result p1

    if-nez p1, :cond_4d

    .line 54
    iget-object p1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    monitor-enter p1

    .line 55
    :try_start_39
    iget-object p3, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p3, p2}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->switchConnectionInfo(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;)V

    .line 56
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_43

    .line 57
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->reconnectDelay()V

    goto :goto_4d

    :catchall_43
    move-exception p2

    .line 56
    :try_start_44
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p2

    .line 60
    :cond_46
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->reconnectDelay()V

    goto :goto_4d

    .line 63
    :cond_4a
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->reconnectDelay()V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public onSocketConnectionSuccess(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->resetThread()V

    return-void
.end method

.method public onSocketDisconnection(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 29
    invoke-direct {p0, p3}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->isNeedReconnect(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 30
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->reconnectDelay()V

    goto :goto_d

    .line 32
    :cond_a
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->resetThread()V

    :goto_d
    return-void
.end method
