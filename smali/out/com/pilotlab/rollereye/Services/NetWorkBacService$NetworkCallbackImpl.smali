.class Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetWorkBacService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Services/NetWorkBacService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkCallbackImpl"
.end annotation


# instance fields
.field message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

.field final synthetic this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 121
    new-instance p1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    invoke-direct {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;Lcom/pilotlab/rollereye/Services/NetWorkBacService$1;)V
    .registers 3

    .line 120
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;-><init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 6

    .line 128
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 130
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->bindAccount()V

    .line 132
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getWifiIp()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->WIFI_DIRECT_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u7f51\u7edc\u53d8\u5316\uff0c\u5173\u95edP2P"

    const/4 v2, 0x0

    if-eqz v0, :cond_c2

    .line 138
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$200(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_127

    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$200(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_127

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$200(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 142
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$200(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 143
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$300(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 145
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$300(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->reInit()V

    .line 146
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "wifi\u76f4\u8fde"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$400(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->connect()V

    .line 148
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/Global;->setSynServer(Z)V

    .line 149
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Global;->setConnectMode(Lcom/pilotlab/rollereye/Bean/ConnectMode;)V

    .line 150
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 151
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$500(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V

    goto :goto_127

    .line 155
    :cond_c2
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$200(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 156
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$400(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->disConnect()V

    .line 157
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->isSynServer()Z

    move-result p1

    if-eqz p1, :cond_fe

    .line 158
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$300(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 160
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$300(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->reInit()V

    .line 161
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$600(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V

    .line 163
    :cond_fe
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "P2P\u6a21\u5f0f"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Global;->setConnectMode(Lcom/pilotlab/rollereye/Bean/ConnectMode;)V

    .line 165
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_127
    :goto_127
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 193
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const/4 p1, 0x1

    .line 194
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 195
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCapabilitiesChanged: \u7f51\u7edc\u7c7b\u578b\u4e3awifi"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_16
    const/4 p1, 0x0

    .line 196
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 197
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCapabilitiesChanged: \u8702\u7a9d\u7f51\u7edc"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 199
    :cond_29
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCapabilitiesChanged: \u5176\u4ed6\u7f51\u7edc"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    const/16 p1, 0xc

    .line 202
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 203
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCapabilitiesChanged: \u8fde\u63a5\u4e0a\u4e86"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :cond_48
    const/16 p1, 0x10

    .line 204
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 205
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCapabilitiesChanged: \u8fde\u63a5\u4e0a\u4e86(\u4e92\u8054\u7f51\u53ef\u901a\u4fe1)"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    :goto_5b
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3

    .line 216
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 217
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLinkPropertiesChanged"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .registers 3

    .line 175
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    .line 176
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLosing"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 184
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 185
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLost:"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnavailable()V
    .registers 4

    .line 226
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 227
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$400(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->disConnect()V

    .line 229
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$300(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 230
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$702(Lcom/pilotlab/rollereye/Services/NetWorkBacService;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 232
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    iget-object v2, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkCallbackImpl;->message:Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    invoke-direct {v1, v2}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
