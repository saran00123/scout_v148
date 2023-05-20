.class public abstract Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;
.super Ljava/lang/Object;
.source "AbsReconnectionManager.java"

# interfaces
.implements Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;


# instance fields
.field protected volatile mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

.field protected volatile mDetach:Z

.field protected volatile mIgnoreDisconnectExceptionList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPulseManager:Lcom/xuhao/didi/socket/client/impl/client/PulseManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addIgnoreException(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object v1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public declared-synchronized attach(Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;)V
    .registers 3

    monitor-enter p0

    .line 45
    :try_start_1
    iget-boolean v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mDetach:Z

    if-eqz v0, :cond_8

    .line 46
    invoke-virtual {p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->detach()V

    :cond_8
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mDetach:Z

    .line 49
    iput-object p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    .line 50
    invoke-interface {p1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getPulseManager()Lcom/xuhao/didi/socket/client/impl/client/PulseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mPulseManager:Lcom/xuhao/didi/socket/client/impl/client/PulseManager;

    .line 51
    iget-object p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {p1, p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->registerReceiver(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 52
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized detach()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 58
    :try_start_2
    iput-boolean v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mDetach:Z

    .line 59
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    if-eqz v0, :cond_d

    .line 60
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mConnectionManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {v0, p0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->unRegisterReceiver(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 62
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPulseSend(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Lcom/xuhao/didi/core/iocore/interfaces/IPulseSendable;)V
    .registers 3

    return-void
.end method

.method public onSocketIOThreadShutdown(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public onSocketIOThreadStart(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSocketReadResponse(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Lcom/xuhao/didi/core/pojo/OriginalData;)V
    .registers 4

    return-void
.end method

.method public onSocketWriteResponse(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Lcom/xuhao/didi/core/iocore/interfaces/ISendable;)V
    .registers 4

    return-void
.end method

.method public final removeAll()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 103
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final removeIgnoreException(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final removeIgnoreException(Ljava/lang/Exception;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;->mIgnoreDisconnectExceptionList:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method
