.class public Lcom/pilotlab/rollereye/Services/SocketServices;
.super Ljava/lang/Object;
.source "SocketServices.java"


# instance fields
.field private adapter:Lcom/xuhao/didi/socket/client/sdk/client/action/SocketActionAdapter;

.field private mInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

.field private mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

.field private mOkOptions:Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "socketService"

    .line 31
    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->tag:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Services/SocketServices;->initAdapter()V

    .line 40
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Services/SocketServices;->initManager()V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/Services/SocketServices;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->tag:Ljava/lang/String;

    return-object p0
.end method

.method private initAdapter()V
    .registers 2

    .line 115
    new-instance v0, Lcom/pilotlab/rollereye/Services/SocketServices$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/Services/SocketServices$1;-><init>(Lcom/pilotlab/rollereye/Services/SocketServices;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->adapter:Lcom/xuhao/didi/socket/client/sdk/client/action/SocketActionAdapter;

    return-void
.end method

.method private initManager()V
    .registers 4

    .line 98
    new-instance v0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    sget-object v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->socketIP:Ljava/lang/String;

    sget v2, Lcom/pilotlab/rollereye/Common/ServerConstent;->socketPort:I

    invoke-direct {v0, v1, v2}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    .line 99
    new-instance v0, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$Builder;

    invoke-direct {v0}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$Builder;-><init>()V

    new-instance v1, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;

    invoke-direct {v1}, Lcom/pilotlab/rollereye/Manager/MyReconnectManager;-><init>()V

    .line 100
    invoke-virtual {v0, v1}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$Builder;->setReconnectionManager(Lcom/xuhao/didi/socket/client/sdk/client/connection/AbsReconnectionManager;)Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$Builder;

    move-result-object v0

    sget v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->socketTimeOut:I

    .line 101
    invoke-virtual {v0, v1}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$Builder;->setConnectTimeoutSecond(I)Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions$Builder;->build()Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mOkOptions:Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    invoke-static {v0}, Lcom/xuhao/didi/socket/client/sdk/OkSocket;->open(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mOkOptions:Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;

    invoke-interface {v0, v1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->option(Lcom/xuhao/didi/socket/client/sdk/client/OkSocketOptions;)Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->adapter:Lcom/xuhao/didi/socket/client/sdk/client/action/SocketActionAdapter;

    invoke-interface {v0, v1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->registerReceiver(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public connect()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->isConnect()Z

    move-result v0

    if-nez v0, :cond_f

    .line 48
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->connect()V

    :cond_f
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Services/SocketServices;->disConnect()V

    .line 174
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->adapter:Lcom/xuhao/didi/socket/client/sdk/client/action/SocketActionAdapter;

    invoke-interface {v0, v1}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->unRegisterReceiver(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public disConnect()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    if-eqz v0, :cond_7

    .line 56
    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->disconnect()V

    :cond_7
    return-void
.end method

.method public isConnect()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    if-eqz v0, :cond_9

    .line 90
    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->isConnect()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public reConnect()V
    .registers 1

    .line 78
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Services/SocketServices;->destroy()V

    .line 79
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Services/SocketServices;->initManager()V

    .line 80
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Services/SocketServices;->connect()V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 67
    new-instance v0, Lcom/pilotlab/rollereye/Bean/DefaultSendBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/DefaultSendBean;-><init>()V

    .line 68
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Bean/DefaultSendBean;->setContent(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->mManager:Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;

    invoke-interface {v1, v0}, Lcom/xuhao/didi/socket/client/sdk/client/connection/IConnectionManager;->send(Lcom/xuhao/didi/core/iocore/interfaces/ISendable;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001Socket\u6307\u4ee4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method
