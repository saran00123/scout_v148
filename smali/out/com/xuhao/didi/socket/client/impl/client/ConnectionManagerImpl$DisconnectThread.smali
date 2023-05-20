.class Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;
.super Ljava/lang/Thread;
.source "ConnectionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectThread"
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4

    .line 260
    iput-object p1, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    .line 261
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 262
    iput-object p2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "action_disconnection"

    const-string v1, "socket is disconnecting because: "

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 268
    :try_start_7
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$500(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/IIOManager;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 269
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$500(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/IIOManager;

    move-result-object v5

    iget-object v6, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    invoke-interface {v5, v6}, Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/IIOManager;->close(Ljava/lang/Exception;)V

    .line 272
    :cond_1a
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$600(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Ljava/lang/Thread;

    move-result-object v5

    if-eqz v5, :cond_4f

    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$600(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 273
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$600(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_d8

    :try_start_37
    const-string v5, "disconnect thread need waiting for connection thread done."

    .line 275
    invoke-static {v5}, Lcom/xuhao/didi/core/utils/SLog;->i(Ljava/lang/String;)V

    .line 276
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$600(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_45} :catch_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_d8

    :catch_45
    :try_start_45
    const-string v5, "connection thread is done. disconnection thread going on"

    .line 279
    invoke-static {v5}, Lcom/xuhao/didi/core/utils/SLog;->i(Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5, v4}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$602(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 283
    :cond_4f
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$000(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Ljava/net/Socket;

    move-result-object v5
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_d8

    if-eqz v5, :cond_60

    .line 285
    :try_start_57
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$000(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_60} :catch_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_d8

    .line 290
    :catch_60
    :cond_60
    :try_start_60
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$700(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;

    move-result-object v5

    if-eqz v5, :cond_7d

    .line 291
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$700(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-virtual {v5, v6}, Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;->detach(Lcom/xuhao/didi/socket/common/interfaces/common_interfacies/dispatcher/IRegister;)V

    const-string v5, "mActionHandler is detached."

    .line 292
    invoke-static {v5}, Lcom/xuhao/didi/core/utils/SLog;->i(Ljava/lang/String;)V

    .line 293
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5, v4}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$702(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;)Lcom/xuhao/didi/socket/client/impl/client/action/ActionHandler;
    :try_end_7d
    .catchall {:try_start_60 .. :try_end_7d} :catchall_d8

    .line 297
    :cond_7d
    iget-object v5, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v5, v3}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$802(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;Z)Z

    .line 298
    iget-object v3, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v3, v2}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$402(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;Z)Z

    .line 299
    iget-object v2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    instance-of v2, v2, Lcom/xuhao/didi/socket/client/impl/exceptions/UnConnectException;

    if-nez v2, :cond_a5

    iget-object v2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v2}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$000(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_a5

    .line 300
    iget-object v2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    instance-of v3, v2, Lcom/xuhao/didi/socket/client/impl/exceptions/ManuallyDisconnectException;

    if-eqz v3, :cond_9c

    move-object v2, v4

    :cond_9c
    iput-object v2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    .line 301
    iget-object v2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    iget-object v3, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    invoke-virtual {v2, v0, v3}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->sendBroadcast(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 303
    :cond_a5
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v0, v4}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$002(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;Ljava/net/Socket;)Ljava/net/Socket;

    .line 305
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_d7

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xuhao/didi/core/utils/SLog;->e(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v0}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$200(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 308
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d7
    return-void

    :catchall_d8
    move-exception v5

    .line 297
    iget-object v6, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v6, v3}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$802(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;Z)Z

    .line 298
    iget-object v3, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v3, v2}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$402(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;Z)Z

    .line 299
    iget-object v2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    instance-of v2, v2, Lcom/xuhao/didi/socket/client/impl/exceptions/UnConnectException;

    if-nez v2, :cond_101

    iget-object v2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v2}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$000(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_101

    .line 300
    iget-object v2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    instance-of v3, v2, Lcom/xuhao/didi/socket/client/impl/exceptions/ManuallyDisconnectException;

    if-eqz v3, :cond_f8

    move-object v2, v4

    :cond_f8
    iput-object v2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    .line 301
    iget-object v2, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    iget-object v3, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    invoke-virtual {v2, v0, v3}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->sendBroadcast(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 303
    :cond_101
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v0, v4}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$002(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;Ljava/net/Socket;)Ljava/net/Socket;

    .line 305
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_133

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xuhao/didi/core/utils/SLog;->e(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->this$0:Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;

    invoke-static {v0}, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;->access$200(Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl;)Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_133

    .line 308
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/impl/client/ConnectionManagerImpl$DisconnectThread;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    :cond_133
    throw v5
.end method
