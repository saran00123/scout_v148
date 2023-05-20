.class public Lcom/pilotlab/rollereye/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field private static instance:Lcom/pilotlab/rollereye/Global;


# instance fields
.field public FirstStartup:Z

.field private appTime:Ljava/lang/String;

.field private battery:I

.field private batteryCharge:I

.field public connectMode:Lcom/pilotlab/rollereye/Bean/ConnectMode;

.field context_:Landroid/content/Context;

.field public downloadSession:I

.field private email:Ljava/lang/String;

.field public httpServices:Lcom/pilotlab/rollereye/Services/HttpServices;

.field public p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

.field public p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

.field private password:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field public rtspServices:Lcom/pilotlab/rollereye/Services/RTSPServices;

.field public socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

.field private synServer:Z

.field private user_id:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private vip_expire_date:Ljava/lang/String;

.field private wifiSignal:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/pilotlab/rollereye/Global;->context_:Landroid/content/Context;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/Global;->FirstStartup:Z

    const-string v1, ""

    .line 34
    iput-object v1, p0, Lcom/pilotlab/rollereye/Global;->username:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/pilotlab/rollereye/Global;->password:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/pilotlab/rollereye/Global;->email:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/pilotlab/rollereye/Global;->user_id:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/pilotlab/rollereye/Global;->vip_expire_date:Ljava/lang/String;

    .line 39
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/Global;->synServer:Z

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/pilotlab/rollereye/Global;->battery:I

    .line 41
    iput v0, p0, Lcom/pilotlab/rollereye/Global;->batteryCharge:I

    .line 42
    iput v0, p0, Lcom/pilotlab/rollereye/Global;->wifiSignal:I

    .line 43
    iput-object v1, p0, Lcom/pilotlab/rollereye/Global;->region:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/pilotlab/rollereye/Global;->appTime:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/pilotlab/rollereye/Global;
    .registers 3

    const-class v0, Lcom/pilotlab/rollereye/Global;

    monitor-enter v0

    .line 206
    :try_start_3
    sget-object v1, Lcom/pilotlab/rollereye/Global;->instance:Lcom/pilotlab/rollereye/Global;

    if-nez v1, :cond_15

    .line 207
    new-instance v1, Lcom/pilotlab/rollereye/Global;

    invoke-direct {v1}, Lcom/pilotlab/rollereye/Global;-><init>()V

    sput-object v1, Lcom/pilotlab/rollereye/Global;->instance:Lcom/pilotlab/rollereye/Global;

    .line 208
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u521b\u5efaGlobal"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    :cond_15
    sget-object v1, Lcom/pilotlab/rollereye/Global;->instance:Lcom/pilotlab/rollereye/Global;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public destroyGlobal()V
    .registers 1

    .line 181
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Global;->destroySocketServices()V

    .line 182
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Global;->destroyHttpServices()V

    .line 183
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Global;->destroyP2PService()V

    return-void
.end method

.method public destroyHttpServices()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->httpServices:Lcom/pilotlab/rollereye/Services/HttpServices;

    if-eqz v0, :cond_a

    .line 168
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->destroy()V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/pilotlab/rollereye/Global;->httpServices:Lcom/pilotlab/rollereye/Services/HttpServices;

    :cond_a
    return-void
.end method

.method public destroyP2PService()V
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

    if-eqz v0, :cond_a

    .line 175
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PService;->release()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/pilotlab/rollereye/Global;->p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

    :cond_a
    return-void
.end method

.method public destroyRTSPServices()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->rtspServices:Lcom/pilotlab/rollereye/Services/RTSPServices;

    if-eqz v0, :cond_a

    .line 154
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/RTSPServices;->destroy()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/pilotlab/rollereye/Global;->rtspServices:Lcom/pilotlab/rollereye/Services/RTSPServices;

    :cond_a
    return-void
.end method

.method public destroySocketServices()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    if-eqz v0, :cond_a

    .line 161
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->destroy()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/pilotlab/rollereye/Global;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    :cond_a
    return-void
.end method

.method public destroyUserInfo(Landroid/content/Context;)V
    .registers 2

    .line 146
    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->clearDefaultUser(Landroid/content/Context;)V

    .line 147
    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->clearDefaultP2PClient(Landroid/content/Context;)V

    .line 148
    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->clearUserToken(Landroid/content/Context;)V

    .line 149
    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->clearUserRegion(Landroid/content/Context;)V

    return-void
.end method

.method public getAppTime()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->appTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBattery()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/pilotlab/rollereye/Global;->battery:I

    return v0
.end method

.method public getBatteryCharge()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/pilotlab/rollereye/Global;->batteryCharge:I

    return v0
.end method

.method public getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->connectMode:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-nez v0, :cond_8

    .line 188
    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    iput-object v0, p0, Lcom/pilotlab/rollereye/Global;->connectMode:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    .line 189
    :cond_8
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->connectMode:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    return-object v0
.end method

.method public declared-synchronized getContext()Landroid/content/Context;
    .registers 2

    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->context_:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDownloadSession()I
    .registers 3

    .line 62
    iget v0, p0, Lcom/pilotlab/rollereye/Global;->downloadSession:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pilotlab/rollereye/Global;->downloadSession:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->httpServices:Lcom/pilotlab/rollereye/Services/HttpServices;

    if-nez v0, :cond_b

    .line 83
    new-instance v0, Lcom/pilotlab/rollereye/Services/HttpServices;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Global;->httpServices:Lcom/pilotlab/rollereye/Services/HttpServices;

    .line 85
    :cond_b
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->httpServices:Lcom/pilotlab/rollereye/Services/HttpServices;

    return-object v0
.end method

.method public getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 3

    .line 125
    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_9

    .line 127
    iget-object p1, p0, Lcom/pilotlab/rollereye/Global;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    monitor-exit p0

    return-object p1

    .line 128
    :cond_9
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->getDefaultClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    .line 129
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

    if-nez v0, :cond_b

    .line 90
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PService;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/P2P/P2PService;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Global;->p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

    .line 92
    :cond_b
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRtspServices()Lcom/pilotlab/rollereye/Services/RTSPServices;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->rtspServices:Lcom/pilotlab/rollereye/Services/RTSPServices;

    if-nez v0, :cond_b

    .line 140
    new-instance v0, Lcom/pilotlab/rollereye/Services/RTSPServices;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Services/RTSPServices;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Global;->rtspServices:Lcom/pilotlab/rollereye/Services/RTSPServices;

    .line 142
    :cond_b
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->rtspServices:Lcom/pilotlab/rollereye/Services/RTSPServices;

    return-object v0
.end method

.method public getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Services/SocketServices;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Global;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    .line 78
    :cond_b
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    return-object v0
.end method

.method public getToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 58
    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUser_id()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVip_expire_date()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/pilotlab/rollereye/Global;->vip_expire_date:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSignal()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/pilotlab/rollereye/Global;->wifiSignal:I

    return v0
.end method

.method public isFirstStartup()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Global;->FirstStartup:Z

    return v0
.end method

.method public isSynServer()Z
    .registers 2

    .line 262
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Global;->synServer:Z

    return v0
.end method

.method public setAppTime(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/pilotlab/rollereye/Global;->appTime:Ljava/lang/String;

    return-void
.end method

.method public setBattery(I)V
    .registers 2

    .line 100
    iput p1, p0, Lcom/pilotlab/rollereye/Global;->battery:I

    return-void
.end method

.method public setBatteryCharge(I)V
    .registers 2

    .line 108
    iput p1, p0, Lcom/pilotlab/rollereye/Global;->batteryCharge:I

    return-void
.end method

.method public setConnectMode(Lcom/pilotlab/rollereye/Bean/ConnectMode;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/pilotlab/rollereye/Global;->connectMode:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/pilotlab/rollereye/Global;->context_:Landroid/content/Context;

    return-void
.end method

.method public setDownloadSession(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/pilotlab/rollereye/Global;->downloadSession:I

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/pilotlab/rollereye/Global;->email:Ljava/lang/String;

    return-void
.end method

.method public setFirstStartup(Z)V
    .registers 2

    .line 201
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Global;->FirstStartup:Z

    return-void
.end method

.method public setP2PClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 2

    .line 133
    monitor-enter p0

    .line 134
    :try_start_1
    iput-object p1, p0, Lcom/pilotlab/rollereye/Global;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 135
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setP2PService(Lcom/pilotlab/rollereye/P2P/P2PService;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/pilotlab/rollereye/Global;->p2PService:Lcom/pilotlab/rollereye/P2P/P2PService;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/pilotlab/rollereye/Global;->password:Ljava/lang/String;

    return-void
.end method

.method public setSynServer(Z)V
    .registers 2

    .line 266
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Global;->synServer:Z

    return-void
.end method

.method public setToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 70
    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/pilotlab/rollereye/Global;->user_id:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/pilotlab/rollereye/Global;->username:Ljava/lang/String;

    return-void
.end method

.method public setVip_expire_date(Ljava/lang/String;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/pilotlab/rollereye/Global;->vip_expire_date:Ljava/lang/String;

    return-void
.end method

.method public setWifiSignal(I)V
    .registers 2

    .line 116
    iput p1, p0, Lcom/pilotlab/rollereye/Global;->wifiSignal:I

    return-void
.end method
