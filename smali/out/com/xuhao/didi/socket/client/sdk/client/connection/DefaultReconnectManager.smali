.class public Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;
.super Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;
.source "DefaultReconnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;
    }
.end annotation


# static fields
.field private static final MAX_CONNECTION_FAILED_TIMES:I = 0xc


# instance fields
.field private mConnectionFailedTimes:I

.field private volatile mReconnectTestingThread:Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mConnectionFailedTimes:I

    .line 30
    new-instance v0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;-><init>(Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$1;)V

    iput-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mReconnectTestingThread:Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;

    return-void
.end method

.method private isNeedReconnect(Ljava/lang/Exception;)Z
    .registers 7

    .line 82
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 83
    :try_start_6
    instance-of v2, p1, Lcom/xuhao/didi/socket/client/impl/exceptions/ManuallyDisconnectException;

    if-nez v2, :cond_2b

    .line 84
    iget-object v2, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 85
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 88
    monitor-exit v0

    return v1

    :cond_28
    const/4 p1, 0x1

    .line 91
    monitor-exit v0

    return p1

    .line 93
    :cond_2b
    monitor-exit v0

    return v1

    :catchall_2d
    move-exception p1

    .line 94
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private reconnectDelay()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mReconnectTestingThread:Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mReconnectTestingThread:Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;

    invoke-virtual {v1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 113
    iget-object v1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mReconnectTestingThread:Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;

    invoke-virtual {v1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;->start()V

    .line 115
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

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mReconnectTestingThread:Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;

    if-eqz v0, :cond_a

    .line 103
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mReconnectTestingThread:Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;

    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager$ReconnectTestingThread;->shutdown()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 105
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

    .line 120
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

    .line 187
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

    if-eqz p3, :cond_75

    .line 50
    iget p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mConnectionFailedTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mConnectionFailedTimes:I

    .line 51
    iget p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mConnectionFailedTimes:I

    const/16 p2, 0xc

    if-le p1, p2, :cond_72

    .line 52
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->resetThread()V

    .line 54
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getRemoteConnectionInfo()Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->getBackupInfo()Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    move-result-object p2

    if-eqz p2, :cond_6e

    .line 57
    new-instance p3, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    invoke-virtual {p1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->getPort()I

    move-result p1

    invoke-direct {p3, v0, p1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;-><init>(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {p2, p3}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->setBackupInfo(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;)V

    .line 59
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->isConnect()Z

    move-result p1

    if-nez p1, :cond_75

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prepare switch to the backup line "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->getIp()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->getPort()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ..."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xuhao/didi/core/utils/SLog;->i(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    monitor-enter p1

    .line 62
    :try_start_61
    iget-object p3, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p3, p2}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->switchConnectionInfo(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;)V

    .line 63
    monitor-exit p1
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_6b

    .line 64
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->reconnectDelay()V

    goto :goto_75

    :catchall_6b
    move-exception p2

    .line 63
    :try_start_6c
    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p2

    .line 67
    :cond_6e
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->reconnectDelay()V

    goto :goto_75

    .line 70
    :cond_72
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->reconnectDelay()V

    :cond_75
    :goto_75
    return-void
.end method

.method public onSocketConnectionSuccess(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->resetThread()V

    return-void
.end method

.method public onSocketDisconnection(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 35
    invoke-direct {p0, p3}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->isNeedReconnect(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 36
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->reconnectDelay()V

    goto :goto_d

    .line 38
    :cond_a
    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/DefaultReconnectManager;->resetThread()V

    :goto_d
    return-void
.end method
