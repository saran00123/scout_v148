.class public Lcom/pilotlab/rollereye/P2P/P2PClient;
.super Ljava/lang/Object;
.source "P2PClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;,
        Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;,
        Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;,
        Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;
    }
.end annotation


# instance fields
.field private MAX_QUEUE_SIZE:I

.field private TAG:Ljava/lang/String;

.field private UID:Ljava/lang/String;

.field public audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

.field private authKey:Ljava/lang/String;

.field private avIndex:I

.field private canRelease:Z

.field private downloadIndex:I

.field public downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

.field private id:I

.field private ioCotrol_list:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/pilotlab/rollereye/Bean/IoMessage;",
            ">;"
        }
    .end annotation
.end field

.field private isConnected:Z

.field private isExit:Z

.field public packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

.field private password:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field public videoStream:Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;

.field private voip_data:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "P2PClient"

    .line 29
    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isExit:Z

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->id:I

    .line 34
    iput v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->avIndex:I

    .line 35
    iput v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadIndex:I

    .line 42
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected:Z

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->canRelease:Z

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->ioCotrol_list:Ljava/util/Queue;

    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->voip_data:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x5

    .line 53
    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->MAX_QUEUE_SIZE:I

    .line 65
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316P2PClinet,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isExit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->sn:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->UID:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->username:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->password:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->authKey:Ljava/lang/String;

    .line 73
    new-instance p1, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;Lcom/pilotlab/rollereye/P2P/P2PClient$1;)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->packet:Lcom/pilotlab/rollereye/P2P/P2PClient$Packet;

    .line 74
    new-instance p1, Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;

    invoke-direct {p1, p0, p2}, Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;Lcom/pilotlab/rollereye/P2P/P2PClient$1;)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->videoStream:Lcom/pilotlab/rollereye/P2P/P2PClient$ViedwoStream;

    .line 75
    new-instance p1, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    invoke-direct {p1, p0, p2}, Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;Lcom/pilotlab/rollereye/P2P/P2PClient$1;)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->audioStream:Lcom/pilotlab/rollereye/P2P/P2PClient$AudioStream;

    .line 76
    new-instance p1, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    invoke-direct {p1, p0, p2}, Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;Lcom/pilotlab/rollereye/P2P/P2PClient$1;)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadStream:Lcom/pilotlab/rollereye/P2P/P2PClient$DownloadStream;

    return-void
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->voip_data:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/P2P/P2PClient;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected:Z

    return p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/P2P/P2PClient;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadIndex:I

    return p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/P2P/P2PClient;I)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->delayms(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/P2P/P2PClient;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->avIndex:I

    return p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/P2P/P2PClient;)Ljava/util/Queue;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->ioCotrol_list:Ljava/util/Queue;

    return-object p0
.end method

.method private delayms(I)V
    .registers 4

    int-to-long v0, p1

    .line 653
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    move-exception p1

    .line 655
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_9
    return-void
.end method


# virtual methods
.method public connect(I)I
    .registers 11

    const/4 v0, -0x1

    if-ltz p1, :cond_1e0

    .line 233
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->setId(I)V

    .line 235
    new-instance v1, Lcom/tutk/IOTC/St_IOTCConnectInput;

    invoke-direct {v1}, Lcom/tutk/IOTC/St_IOTCConnectInput;-><init>()V

    .line 236
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getAuthKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tutk/IOTC/St_IOTCConnectInput;->authKey:Ljava/lang/String;

    const/16 v2, 0x14

    .line 237
    iput v2, v1, Lcom/tutk/IOTC/St_IOTCConnectInput;->timeout:I

    const/4 v3, 0x0

    .line 238
    iput-boolean v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->canRelease:Z

    .line 239
    iget-object v4, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "---\u8c03\u7528IOTC_Connect_ByUIDEx_2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, v1}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_ByUIDEx_2(Ljava/lang/String;ILcom/tutk/IOTC/St_IOTCConnectInput;)I

    move-result v1

    const/4 v4, 0x1

    .line 241
    iput-boolean v4, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->canRelease:Z

    .line 242
    iget-object v5, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "---iot connect:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5a} :catch_22e

    const-string v5, "---"

    if-gez v1, :cond_f0

    .line 245
    :try_start_5e
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\u8fde\u63a5\u5931\u8d25sid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--isExit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--isConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 251
    :cond_f0
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "iot\u8fde\u63a5\u6210\u529fsid:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;

    invoke-direct {v1}, Lcom/tutk/IOTC/St_AVClientStartInConfig;-><init>()V

    .line 254
    new-instance v5, Lcom/tutk/IOTC/St_AVClientStartOutConfig;

    invoke-direct {v5}, Lcom/tutk/IOTC/St_AVClientStartOutConfig;-><init>()V

    .line 255
    iput p1, v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;->iotc_session_id:I

    .line 256
    iput v3, v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;->iotc_channel_id:I

    .line 257
    iput v2, v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;->timeout_sec:I

    .line 258
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getUsername()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;->account_or_identity:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getPassword()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;->password_or_token:Ljava/lang/String;

    .line 260
    iput v4, v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;->resend:I

    .line 261
    iput v3, v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;->security_mode:I

    .line 262
    iput v3, v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;->auth_type:I

    .line 263
    invoke-static {v1, v5}, Lcom/tutk/IOTC/AVAPIs;->avClientStartEx(Lcom/tutk/IOTC/St_AVClientStartInConfig;Lcom/tutk/IOTC/St_AVClientStartOutConfig;)I

    move-result v2

    .line 265
    iput v4, v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;->iotc_channel_id:I

    .line 266
    iput v4, v1, Lcom/tutk/IOTC/St_AVClientStartInConfig;->resend:I

    .line 267
    invoke-static {v1, v5}, Lcom/tutk/IOTC/AVAPIs;->avClientStartEx(Lcom/tutk/IOTC/St_AVClientStartInConfig;Lcom/tutk/IOTC/St_AVClientStartOutConfig;)I

    move-result v1

    if-ltz v2, :cond_19c

    if-ltz v1, :cond_19c

    .line 269
    iget-boolean v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isExit:Z

    if-nez v3, :cond_19c

    .line 270
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->setAvIndex(I)V

    .line 271
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->setDownloadIndex(I)V

    .line 272
    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/P2P/P2PClient;->setConnected(Z)V

    .line 273
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "AV\u8fde\u63a5\u6210\u529favIndex:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Download\u8fde\u63a5\u6210\u529fdownloadIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 277
    :cond_19c
    invoke-static {v2}, Lcom/tutk/IOTC/AVAPIs;->avClientStop(I)V

    .line 278
    invoke-static {v1}, Lcom/tutk/IOTC/AVAPIs;->avClientStop(I)V

    .line 279
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "AV\u8fde\u63a5\u5931\u8d25avIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "download\u8fde\u63a5\u5931\u8d25download:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {p1}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Session_Close_2(I)V

    return v2

    .line 287
    :cond_1e0
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u8fde\u63a5\u5931\u8d25sid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_22d} :catch_22e

    return v0

    :catch_22e
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public destroy()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    const-string v1, "\u6709\u4eba\u8bbe\u7f6eExit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->setExit(Z)V

    .line 302
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->disConnect()V

    return-void
.end method

.method public declared-synchronized disConnect()V
    .registers 5

    monitor-enter p0

    .line 306
    :try_start_1
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected:Z

    if-eqz v0, :cond_98

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->setConnected(Z)V

    .line 308
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getAvIndex()I

    move-result v0

    invoke-static {v0}, Lcom/tutk/IOTC/AVAPIs;->avClientStop(I)V

    .line 309
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getDownloadIndex()I

    move-result v0

    invoke-static {v0}, Lcom/tutk/IOTC/AVAPIs;->avClientStop(I)V

    .line 310
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getAvIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tutk/IOTC/AVAPIs;->avClientExit(II)V

    .line 311
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getDownloadIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tutk/IOTC/AVAPIs;->avClientExit(II)V

    .line 312
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isCanRelease()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 313
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Connect\u540e\uff0c\u8c03\u7528\u9000\u51fa\u8fde\u63a5\u51fd\u6570"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_Stop_BySID_2(I)I

    .line 315
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u9000\u51fa\u8fde\u63a5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 317
    :cond_6f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Session_Close_2(I)V

    .line 318
    :goto_76
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":disConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 320
    :cond_98
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isCanRelease()Z

    move-result v0

    if-nez v0, :cond_e5

    .line 321
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u6ca1Connect\u4e0a\uff0c\u8c03\u7528\u9000\u51fa\u8fde\u63a5\u51fd\u6570,id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Connect_Stop_BySID_2(I)I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u9000\u51fa\u8fde\u63a5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 325
    :cond_e5
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u76f4\u63a5\u91ca\u653e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catchall {:try_start_1 .. :try_end_106} :catchall_108

    .line 328
    :goto_106
    monitor-exit p0

    return-void

    :catchall_108
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAuthKey()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->authKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAvIndex()I
    .registers 2

    .line 193
    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->avIndex:I

    return v0
.end method

.method public getDownloadIndex()I
    .registers 2

    .line 201
    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadIndex:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->id:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public getUID()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->UID:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isCanRelease()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->canRelease:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 221
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected:Z

    return v0
.end method

.method public isExit()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isExit:Z

    return v0
.end method

.method public sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 4

    .line 331
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected:Z

    if-eqz v0, :cond_26

    .line 333
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->ioCotrol_list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->MAX_QUEUE_SIZE:I

    if-le v0, v1, :cond_21

    .line 334
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->ioCotrol_list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    .line 335
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;->isNecessary()Z

    move-result v0

    if-nez v0, :cond_21

    .line 336
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->ioCotrol_list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 339
    :cond_21
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->ioCotrol_list:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_26
    return-void
.end method

.method public sendVoipMessage(Lcom/pilotlab/rollereye/Bean/VoipFrameMessage;)V
    .registers 3

    .line 344
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected:Z

    if-eqz v0, :cond_9

    .line 345
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->voip_data:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public setAuthKey(Ljava/lang/String;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->authKey:Ljava/lang/String;

    return-void
.end method

.method public setAvIndex(I)V
    .registers 2

    .line 197
    iput p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->avIndex:I

    return-void
.end method

.method public setConnected(Z)V
    .registers 2

    .line 225
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected:Z

    return-void
.end method

.method public setDownloadIndex(I)V
    .registers 2

    .line 205
    iput p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->downloadIndex:I

    return-void
.end method

.method public setExit(Z)V
    .registers 2

    .line 213
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->isExit:Z

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->id:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->password:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->sn:Ljava/lang/String;

    return-void
.end method

.method public setUID(Ljava/lang/String;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->UID:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PClient;->username:Ljava/lang/String;

    return-void
.end method

.method public startAudioThread()V
    .registers 2

    .line 527
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PClient$4;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/P2P/P2PClient$4;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 550
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient$4;->start()V

    return-void
.end method

.method public startDownloadIORecvThread()V
    .registers 2

    .line 411
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PClient$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/P2P/P2PClient$2;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 433
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient$2;->start()V

    return-void
.end method

.method public startDownloadThread()V
    .registers 2

    .line 351
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PClient$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/P2P/P2PClient$1;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 406
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient$1;->start()V

    return-void
.end method

.method public startIORecvThread()V
    .registers 2

    .line 591
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PClient$6;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/P2P/P2PClient$6;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 619
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient$6;->start()V

    return-void
.end method

.method public startIOSendThread()V
    .registers 2

    .line 554
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PClient$5;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/P2P/P2PClient$5;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 587
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient$5;->start()V

    return-void
.end method

.method public startMicThread()V
    .registers 2

    .line 623
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PClient$7;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/P2P/P2PClient$7;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 647
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient$7;->start()V

    return-void
.end method

.method public startVideoThread()V
    .registers 2

    .line 438
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PClient$3;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/P2P/P2PClient$3;-><init>(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 523
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient$3;->start()V

    return-void
.end method
