.class Lcom/pilotlab/rollereye/P2P/P2PService$1;
.super Ljava/lang/Thread;
.source "P2PService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/P2P/P2PService;->addClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

.field final synthetic val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/P2P/P2PService;Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 3

    .line 97
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    iput-object p2, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 100
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 101
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$000(Lcom/pilotlab/rollereye/P2P/P2PService;)I

    move-result v0

    if-ltz v0, :cond_1f1

    const/4 v0, 0x0

    move v1, v0

    .line 102
    :goto_d
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$100(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 103
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v2}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$100(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getUID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    return-void

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 106
    :cond_39
    monitor-enter p0

    .line 107
    :try_start_3a
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$100(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_1ee

    .line 109
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$200(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dfb\u52a0Client,\u8fde\u63a5\u6c60\u5bb9\u91cf\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v3}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$100(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$200(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dfb\u52a0Client, isExit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isExit()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v1}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$200(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6dfb\u52a0Clinet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_aa
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isExit()Z

    move-result v1

    if-nez v1, :cond_1f1

    .line 114
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    const/16 v2, 0x1f4

    if-nez v1, :cond_1e7

    .line 115
    new-instance v1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    invoke-direct {v1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;-><init>()V

    .line 116
    invoke-static {}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Get_SessionID()I

    move-result v3

    .line 117
    iget-object v4, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v4}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$200(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",UID\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",\u5206\u914dSeeion id\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v4, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v4}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$200(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u8fde\u63a5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v4, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v4, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->connect(I)I

    move-result v4

    .line 120
    iget-object v5, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v5}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$000(Lcom/pilotlab/rollereye/P2P/P2PService;)I

    move-result v5

    if-ltz v5, :cond_17a

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17a

    .line 121
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v3}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$200(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5f00\u542f\u670d\u52a1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->startVideoThread()V

    .line 123
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->startAudioThread()V

    .line 124
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->startMicThread()V

    .line 125
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->startIOSendThread()V

    .line 126
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->startIORecvThread()V

    .line 127
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->startDownloadThread()V

    .line 128
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->startDownloadIORecvThread()V

    .line 129
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->symTimeAndZone(Lcom/pilotlab/rollereye/P2P/P2PClient;ZLjava/lang/String;)V

    const/16 v3, 0x23

    .line 130
    invoke-virtual {v1, v3}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 131
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setBody(Ljava/lang/String;)V

    goto :goto_1d6

    .line 133
    :cond_17a
    iget-object v5, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v5}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$200(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v7}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u5173\u95edSeeion id\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0xc

    if-ne v3, v5, :cond_1a6

    .line 136
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PService;->init()V

    :cond_1a6
    const/16 v3, -0x4e30

    if-ne v4, v3, :cond_1c8

    .line 139
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v3}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$200(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOTC_ReInitSocket(0):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_ReInitSocket(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c8
    const/16 v3, 0x22

    .line 141
    invoke-virtual {v1, v3}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 142
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->val$p2pClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setBody(Ljava/lang/String;)V

    .line 144
    :goto_1d6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    invoke-direct {v4, v1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$300(Lcom/pilotlab/rollereye/P2P/P2PService;I)V

    .line 147
    :cond_1e7
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService$1;->this$0:Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-static {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PService;->access$300(Lcom/pilotlab/rollereye/P2P/P2PService;I)V

    goto/16 :goto_aa

    :catchall_1ee
    move-exception v0

    .line 108
    :try_start_1ef
    monitor-exit p0
    :try_end_1f0
    .catchall {:try_start_1ef .. :try_end_1f0} :catchall_1ee

    throw v0

    :cond_1f1
    return-void
.end method
