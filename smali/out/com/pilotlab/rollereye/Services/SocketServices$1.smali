.class Lcom/pilotlab/rollereye/Services/SocketServices$1;
.super Lcom/xuhao/didi/socket/client/sdk/client/action/SocketActionAdapter;
.source "SocketServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/Services/SocketServices;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/Services/SocketServices;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/Services/SocketServices;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/pilotlab/rollereye/Services/SocketServices$1;->this$0:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-direct {p0}, Lcom/xuhao/didi/socket/client/sdk/client/action/SocketActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPulseSend(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Lcom/xuhao/didi/core/iocore/interfaces/IPulseSendable;)V
    .registers 3

    return-void
.end method

.method public onSocketConnectionFailed(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/SocketServices$1;->this$0:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->access$000(Lcom/pilotlab/rollereye/Services/SocketServices;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->getIp()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/SocketServices$1;->this$0:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->access$000(Lcom/pilotlab/rollereye/Services/SocketServices;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/SocketServices$1;->this$0:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->access$000(Lcom/pilotlab/rollereye/Services/SocketServices;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/SocketServices$1;->this$0:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->access$000(Lcom/pilotlab/rollereye/Services/SocketServices;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Connect Failed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance p1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    invoke-direct {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;-><init>()V

    const/4 p2, 0x3

    .line 144
    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 145
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    invoke-direct {p3, p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSocketConnectionSuccess(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;)V
    .registers 4

    .line 118
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/SocketServices$1;->this$0:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->access$000(Lcom/pilotlab/rollereye/Services/SocketServices;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Connect Success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    invoke-direct {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;-><init>()V

    const/4 p2, 0x1

    .line 121
    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 122
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    invoke-direct {v0, p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSocketDisconnection(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 127
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/SocketServices$1;->this$0:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->access$000(Lcom/pilotlab/rollereye/Services/SocketServices;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisConnect"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance p1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    invoke-direct {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;-><init>()V

    const/4 p2, 0x2

    .line 130
    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    invoke-direct {p3, p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSocketReadResponse(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Lcom/xuhao/didi/core/pojo/OriginalData;)V
    .registers 5

    .line 150
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xuhao/didi/core/pojo/OriginalData;->getBodyBytes()[B

    move-result-object p2

    const-string p3, "utf-8"

    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 152
    new-instance p2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget p3, Lcom/pilotlab/rollereye/Bean/IoMessage;->SOCKET_TYPE:I

    invoke-direct {p2, p3, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    .line 153
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 154
    iget-object p2, p0, Lcom/pilotlab/rollereye/Services/SocketServices$1;->this$0:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-static {p2}, Lcom/pilotlab/rollereye/Services/SocketServices;->access$000(Lcom/pilotlab/rollereye/Services/SocketServices;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6536\u5230Socket\u6307\u4ee4:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSocketWriteResponse(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;Ljava/lang/String;Lcom/xuhao/didi/core/iocore/interfaces/ISendable;)V
    .registers 4

    .line 159
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/SocketServices$1;->this$0:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->access$000(Lcom/pilotlab/rollereye/Services/SocketServices;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "send msg:"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
