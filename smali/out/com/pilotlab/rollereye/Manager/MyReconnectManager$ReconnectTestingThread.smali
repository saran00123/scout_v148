.class Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;
.super Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;
.source "MyReconnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Manager/MyReconnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReconnectTestingThread"
.end annotation


# instance fields
.field private mReconnectTimeDelay:J

.field final synthetic this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)V
    .registers 4

    .line 116
    iput-object p1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-direct {p0}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;-><init>()V

    const-wide/16 v0, 0xbb8

    .line 120
    iput-wide v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->mReconnectTimeDelay:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;Lcom/pilotlab/rollereye/Manager/MyReconnectManager$1;)V
    .registers 3

    .line 116
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;-><init>(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)V

    return-void
.end method


# virtual methods
.method protected beforeLoop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-super {p0}, Lcom/xuhao/didi/socket/common/interfaces/basic/AbsLoopThread;->beforeLoop()V

    .line 126
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->mReconnectTimeDelay:J

    iget-object v2, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-static {v2}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->access$100(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getOption()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->getConnectTimeoutSecond()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2d

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->access$200(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getOption()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->getConnectTimeoutSecond()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->mReconnectTimeDelay:J

    :cond_2d
    return-void
.end method

.method protected loopFinish(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method protected runInLoopThread()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->access$300(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 134
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->shutdown()V

    return-void

    .line 139
    :cond_c
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->mReconnectTimeDelay:J

    invoke-static {v0, v1}, Lcom/xuhao/didi/socket/common/interfaces/utils/ThreadUtils;->sleep(J)V

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->access$400(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 142
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->shutdown()V

    return-void

    .line 146
    :cond_1d
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->access$500(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 147
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->shutdown()V

    return-void

    .line 150
    :cond_2d
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->access$600(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getOption()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;->isConnectionHolden()Z

    move-result v0

    if-nez v0, :cond_46

    .line 153
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->detach()V

    .line 154
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->shutdown()V

    return-void

    .line 157
    :cond_46
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->access$700(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->getRemoteConnectionInfo()Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    .line 158
    iget-object v0, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->access$800(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_56
    iget-object v1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-static {v1}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->access$900(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->isConnect()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 160
    iget-object v1, p0, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->this$0:Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-static {v1}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;->access$1000(Lcom/pilotlab/rollereye/Manager/MyReconnectManager;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->connect()V

    goto :goto_6f

    .line 162
    :cond_6c
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager$ReconnectTestingThread;->shutdown()V

    .line 164
    :goto_6f
    monitor-exit v0

    return-void

    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_56 .. :try_end_73} :catchall_71

    throw v1
.end method
