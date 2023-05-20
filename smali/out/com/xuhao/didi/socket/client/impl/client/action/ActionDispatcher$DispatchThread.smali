.class Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$DispatchThread;
.super Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;
.source "ActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DispatchThread"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "client_action_dispatch_thread"

    .line 257
    invoke-direct {p0, v0}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected loopFinish(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method protected runInLoopThread()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    invoke-static {}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->access$000()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;

    if-eqz v0, :cond_3d

    .line 263
    iget-object v1, v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;->mDispatcher:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;

    if-eqz v1, :cond_3d

    .line 264
    iget-object v1, v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;->mDispatcher:Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;

    .line 265
    invoke-static {v1}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->access$100(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 266
    :try_start_17
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->access$100(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 268
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 269
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;

    .line 270
    iget-object v5, v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;->mAction:Ljava/lang/String;

    iget-object v6, v0, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher$ActionBean;->arg:Ljava/io/Serializable;

    invoke-static {v1, v5, v6, v4}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;->access$200(Lcom/xuhao/didi/socket/client/impl/client/action/ActionDispatcher;Ljava/lang/String;Ljava/io/Serializable;Lcom/xuhao/didi/socket/client/sdk/client/action/ISocketActionListener;)V

    goto :goto_24

    .line 272
    :cond_38
    monitor-exit v2

    goto :goto_3d

    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_17 .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    :goto_3d
    return-void
.end method
