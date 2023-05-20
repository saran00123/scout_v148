.class Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkBacService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Services/NetWorkBacService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 291
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 292
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 293
    new-instance p2, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    invoke-direct {p2}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;-><init>()V

    if-nez p1, :cond_4a

    .line 296
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u7f51\u7edc\u53d8\u5316\uff0c\u5173\u95ed\u7f51\u7edc"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$400(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->disConnect()V

    .line 298
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$300(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 300
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$702(Lcom/pilotlab/rollereye/Services/NetWorkBacService;Ljava/lang/String;)Ljava/lang/String;

    const/16 p1, 0x22

    .line 301
    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 302
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    invoke-direct {v0, p2}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 305
    :cond_4a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    const-string v3, "\u7f51\u7edc\u53d8\u5316\uff0c\u5173\u95edP2P"

    if-ne v0, v2, :cond_144

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 310
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/RollerEyeApplication;->bindAccount()V

    .line 312
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getWifiIp()Ljava/lang/String;

    move-result-object p1

    .line 315
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$700(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$700(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    return-void

    .line 320
    :cond_81
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-object v0, Lcom/pilotlab/rollereye/Common/CommonConstant;->WIFI_DIRECT_IP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 324
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$300(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 326
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi\u76f4\u8fde"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$400(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->connect()V

    .line 328
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Global;->setSynServer(Z)V

    .line 329
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->setConnectMode(Lcom/pilotlab/rollereye/Bean/ConnectMode;)V

    const/16 v0, 0x21

    .line 330
    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 331
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    invoke-direct {v1, p2}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 332
    iget-object p2, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p2}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$500(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V

    goto :goto_13d

    .line 335
    :cond_f0
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$400(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->disConnect()V

    .line 336
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->isSynServer()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 337
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$300(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 339
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$600(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V

    .line 341
    :cond_11a
    iget-object v0, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "P2P\u6a21\u5f0f"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    sget-object v2, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Global;->setConnectMode(Lcom/pilotlab/rollereye/Bean/ConnectMode;)V

    .line 343
    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 344
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    invoke-direct {v1, p2}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 347
    :goto_13d
    iget-object p2, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p2, p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$702(Lcom/pilotlab/rollereye/Services/NetWorkBacService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1c4

    .line 348
    :cond_144
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1c4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1c4

    .line 351
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/RollerEyeApplication;->bindAccount()V

    .line 353
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$700(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_172

    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$700(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_172

    return-void

    .line 356
    :cond_172
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$400(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->disConnect()V

    .line 357
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->isSynServer()Z

    move-result p1

    if-eqz p1, :cond_19c

    .line 358
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$300(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 360
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$600(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)V

    .line 362
    :cond_19c
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$100(Lcom/pilotlab/rollereye/Services/NetWorkBacService;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u624b\u673a\u7f51\u7edcP2P\u6a21\u5f0f"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    sget-object v2, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/Global;->setConnectMode(Lcom/pilotlab/rollereye/Bean/ConnectMode;)V

    .line 364
    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->setTag(I)V

    .line 365
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    invoke-direct {v1, p2}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 366
    iget-object p1, p0, Lcom/pilotlab/rollereye/Services/NetWorkBacService$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Services/NetWorkBacService;->access$702(Lcom/pilotlab/rollereye/Services/NetWorkBacService;Ljava/lang/String;)Ljava/lang/String;

    :cond_1c4
    :goto_1c4
    return-void
.end method
