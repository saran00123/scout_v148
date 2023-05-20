.class public Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;
.super Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;
.source "SimplexIOThread.java"


# instance fields
.field private isWrite:Z

.field private mReader:Lcom/xuhao/didi/core/iocore/interfaces/IReader;

.field private mStateSender:Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;

.field private mWriter:Lcom/xuhao/didi/core/iocore/interfaces/IWriter;


# direct methods
.method public constructor <init>(Lcom/xuhao/didi/core/iocore/interfaces/IReader;Lcom/xuhao/didi/core/iocore/interfaces/IWriter;Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;)V
    .registers 5

    const-string v0, "client_simplex_io_thread"

    .line 29
    invoke-direct {p0, v0}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->isWrite:Z

    .line 30
    iput-object p3, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mStateSender:Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;

    .line 31
    iput-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mReader:Lcom/xuhao/didi/core/iocore/interfaces/IReader;

    .line 32
    iput-object p2, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mWriter:Lcom/xuhao/didi/core/iocore/interfaces/IWriter;

    return-void
.end method


# virtual methods
.method protected beforeLoop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mStateSender:Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;

    const-string v1, "action_write_thread_start"

    invoke-interface {v0, v1}, Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;->sendBroadcast(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mStateSender:Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;

    const-string v1, "action_read_thread_start"

    invoke-interface {v0, v1}, Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method protected loopFinish(Ljava/lang/Exception;)V
    .registers 4

    .line 59
    instance-of v0, p1, Lcom/xuhao/didi/socket/client/impl/exceptions/ManuallyDisconnectException;

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    if-eqz p1, :cond_1f

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simplex error,thread is dead with exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xuhao/didi/core/utils/SLog;->e(Ljava/lang/String;)V

    .line 63
    :cond_1f
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mStateSender:Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;

    const-string v1, "action_write_thread_shutdown"

    invoke-interface {v0, v1, p1}, Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;->sendBroadcast(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 64
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mStateSender:Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;

    const-string v1, "action_read_thread_shutdown"

    invoke-interface {v0, v1, p1}, Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;->sendBroadcast(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method protected runInLoopThread()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mWriter:Lcom/xuhao/didi/core/iocore/interfaces/IWriter;

    invoke-interface {v0}, Lcom/xuhao/didi/core/iocore/interfaces/IWriter;->write()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->isWrite:Z

    .line 44
    iget-boolean v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->isWrite:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->isWrite:Z

    .line 46
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mReader:Lcom/xuhao/didi/core/iocore/interfaces/IReader;

    invoke-interface {v0}, Lcom/xuhao/didi/core/iocore/interfaces/IReader;->read()V

    :cond_14
    return-void
.end method

.method public declared-synchronized shutdown(Ljava/lang/Exception;)V
    .registers 3

    monitor-enter p0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mReader:Lcom/xuhao/didi/core/iocore/interfaces/IReader;

    invoke-interface {v0}, Lcom/xuhao/didi/core/iocore/interfaces/IReader;->close()V

    .line 53
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/iothreads/SimplexIOThread;->mWriter:Lcom/xuhao/didi/core/iocore/interfaces/IWriter;

    invoke-interface {v0}, Lcom/xuhao/didi/core/iocore/interfaces/IWriter;->close()V

    .line 54
    invoke-super {p0, p1}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->shutdown(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 55
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
