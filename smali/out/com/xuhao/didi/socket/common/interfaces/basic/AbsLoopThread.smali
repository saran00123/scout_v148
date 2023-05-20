.class public abstract Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;
.super Ljava/lang/Object;
.source "AbsLoopThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile ioException:Ljava/lang/Exception;

.field private volatile isShutdown:Z

.field private volatile isStop:Z

.field private volatile loopTimes:J

.field public volatile thread:Ljava/lang/Thread;

.field protected volatile threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->thread:Ljava/lang/Thread;

    const-string v1, ""

    .line 11
    iput-object v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->threadName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isStop:Z

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isShutdown:Z

    .line 17
    iput-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;

    const-wide/16 v2, 0x0

    .line 19
    iput-wide v2, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->loopTimes:J

    .line 22
    iput-boolean v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isStop:Z

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->threadName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->thread:Ljava/lang/Thread;

    const-string v1, ""

    .line 11
    iput-object v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->threadName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isStop:Z

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isShutdown:Z

    .line 17
    iput-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;

    const-wide/16 v2, 0x0

    .line 19
    iput-wide v2, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->loopTimes:J

    .line 27
    iput-boolean v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isStop:Z

    .line 28
    iput-object p1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->threadName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected beforeLoop()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getLoopTimes()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->loopTimes:J

    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public isShutdown()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isShutdown:Z

    return v0
.end method

.method protected abstract loopFinish(Ljava/lang/Exception;)V
.end method

.method public final run()V
    .registers 9

    const-string v0, " is shutting down"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 44
    :try_start_5
    iput-boolean v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isShutdown:Z

    .line 45
    invoke-virtual {p0}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->beforeLoop()V

    .line 46
    :goto_a
    iget-boolean v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isStop:Z

    if-nez v1, :cond_19

    .line 47
    invoke-virtual {p0}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->runInLoopThread()V

    .line 48
    iget-wide v4, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->loopTimes:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->loopTimes:J
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_2a
    .catchall {:try_start_5 .. :try_end_18} :catchall_28

    goto :goto_a

    .line 55
    :cond_19
    iput-boolean v3, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isShutdown:Z

    .line 56
    iget-object v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;

    invoke-virtual {p0, v1}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->loopFinish(Ljava/lang/Exception;)V

    .line 57
    iput-object v2, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3f

    :catchall_28
    move-exception v1

    goto :goto_4f

    :catch_2a
    move-exception v1

    .line 51
    :try_start_2b
    iget-object v4, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;

    if-nez v4, :cond_31

    .line 52
    iput-object v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_28

    .line 55
    :cond_31
    iput-boolean v3, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isShutdown:Z

    .line 56
    iget-object v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;

    invoke-virtual {p0, v1}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->loopFinish(Ljava/lang/Exception;)V

    .line 57
    iput-object v2, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3f
    iget-object v2, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->threadName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xuhao/didi/core/utils/SLog;->w(Ljava/lang/String;)V

    return-void

    .line 55
    :goto_4f
    iput-boolean v3, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isShutdown:Z

    .line 56
    iget-object v3, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;

    invoke-virtual {p0, v3}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->loopFinish(Ljava/lang/Exception;)V

    .line 57
    iput-object v2, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->threadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xuhao/didi/core/utils/SLog;->w(Ljava/lang/String;)V

    .line 59
    throw v1
.end method

.method protected abstract runInLoopThread()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public declared-synchronized shutdown()V
    .registers 2

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isStop:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isStop:Z

    .line 81
    iget-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->thread:Ljava/lang/Thread;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 84
    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown(Ljava/lang/Exception;)V
    .registers 2

    monitor-enter p0

    .line 87
    :try_start_1
    iput-object p1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->ioException:Ljava/lang/Exception;

    .line 88
    invoke-virtual {p0}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->shutdown()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 89
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 32
    :try_start_1
    iget-boolean v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isStop:Z

    if-eqz v0, :cond_30

    .line 33
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->threadName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->isStop:Z

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->loopTimes:J

    .line 36
    iget-object v0, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is starting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xuhao/didi/core/utils/SLog;->w(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 39
    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method
