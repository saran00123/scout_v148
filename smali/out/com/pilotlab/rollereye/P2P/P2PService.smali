.class public Lcom/pilotlab/rollereye/P2P/P2PService;
.super Ljava/lang/Object;
.source "P2PService.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private list_client:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/P2P/P2PClient;",
            ">;"
        }
    .end annotation
.end field

.field private m_nInit:I

.field private myDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "P2PService"

    .line 27
    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->m_nInit:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->list_client:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PService;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/P2P/P2PService;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->m_nInit:I

    return p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/util/List;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->list_client:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/P2P/P2PService;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/P2P/P2PService;I)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->delayms(I)V

    return-void
.end method

.method private delayms(I)V
    .registers 4

    int-to-long v0, p1

    .line 303
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_9
    return-void
.end method


# virtual methods
.method public addClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 3

    .line 97
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PService$1;

    invoke-direct {v0, p0, p1}, Lcom/pilotlab/rollereye/P2P/P2PService$1;-><init>(Lcom/pilotlab/rollereye/P2P/P2PService;Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 151
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PService$1;->start()V

    return-void
.end method

.method public getDefaultClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 5

    .line 221
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_3b

    .line 222
    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultP2PClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PService;->getList_client()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5d

    if-eqz p1, :cond_5d

    .line 225
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PService;->getList_client()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 227
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    return-object v1

    .line 233
    :cond_3b
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_5d

    .line 234
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PService;->getList_client()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5d

    .line 235
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PService;->getList_client()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p1

    :cond_5d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getList_client()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/P2P/P2PClient;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->list_client:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .registers 6

    .line 55
    sget-object v0, Lcom/pilotlab/rollereye/Common/ServerConstent;->P2PkeyLicense:Ljava/lang/String;

    invoke-static {v0}, Lcom/tutk/IOTC/TUTKGlobalAPIs;->TUTK_SDK_Set_License_Key(Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->getDefaultRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 59
    sget-object v0, Lcom/tutk/IOTC/Region;->REGION_US:Lcom/tutk/IOTC/Region;

    invoke-static {v0}, Lcom/tutk/IOTC/TUTKGlobalAPIs;->TUTK_Set_Region(Lcom/tutk/IOTC/Region;)I

    goto :goto_3a

    :cond_19
    const-string v1, "AS"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 61
    sget-object v0, Lcom/tutk/IOTC/Region;->REGION_ASIA:Lcom/tutk/IOTC/Region;

    invoke-static {v0}, Lcom/tutk/IOTC/TUTKGlobalAPIs;->TUTK_Set_Region(Lcom/tutk/IOTC/Region;)I

    goto :goto_3a

    :cond_27
    const-string v1, "EU"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 63
    sget-object v0, Lcom/tutk/IOTC/Region;->REGION_EU:Lcom/tutk/IOTC/Region;

    invoke-static {v0}, Lcom/tutk/IOTC/TUTKGlobalAPIs;->TUTK_Set_Region(Lcom/tutk/IOTC/Region;)I

    goto :goto_3a

    .line 64
    :cond_35
    sget-object v0, Lcom/tutk/IOTC/Region;->REGION_US:Lcom/tutk/IOTC/Region;

    invoke-static {v0}, Lcom/tutk/IOTC/TUTKGlobalAPIs;->TUTK_Set_Region(Lcom/tutk/IOTC/Region;)I

    :goto_3a
    const/16 v0, 0xf

    .line 66
    invoke-static {v0}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Setup_Session_Alive_Timeout(I)V

    const/4 v0, 0x0

    .line 71
    invoke-static {v0}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Initialize2(I)I

    move-result v1

    .line 72
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOTC_Initialize2() returnCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_5f

    if-nez v1, :cond_61

    .line 75
    :cond_5f
    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->m_nInit:I

    :cond_61
    const/16 v0, 0x100

    .line 77
    invoke-static {v0}, Lcom/tutk/IOTC/AVAPIs;->avInitialize(I)I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521d\u59cb\u5316AV\u6a21\u5757 returnCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reInit()V
    .registers 5

    const/4 v0, 0x0

    .line 310
    invoke-static {v0}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_ReInitSocket(I)I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOTC_ReInitSocket = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refreshClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 3

    .line 87
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeClientBySN(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/P2P/P2PService;->addClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    return-void
.end method

.method public release()V
    .registers 5

    .line 158
    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->m_nInit:I

    if-ltz v0, :cond_21

    .line 159
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 160
    invoke-static {}, Lcom/tutk/IOTC/AVAPIs;->avDeInitialize()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91ca\u653eP2P AVAPI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public removeAllClients()V
    .registers 3

    .line 283
    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->m_nInit:I

    if-ltz v0, :cond_30

    .line 284
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->list_client:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 285
    monitor-enter p0

    .line 286
    :goto_b
    :try_start_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_2d

    if-eqz v1, :cond_23

    .line 288
    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 289
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->destroy()V

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_1e
    .catchall {:try_start_11 .. :try_end_1d} :catchall_2d

    goto :goto_b

    :catch_1e
    move-exception v1

    .line 292
    :try_start_1f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 296
    :cond_23
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->setP2PClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 297
    monitor-exit p0

    goto :goto_30

    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :goto_30
    return-void
.end method

.method public removeClientBySN(Ljava/lang/String;)V
    .registers 5

    .line 266
    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->m_nInit:I

    if-ltz v0, :cond_27

    .line 267
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->list_client:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 268
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 270
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 271
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 272
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->destroy()V

    goto :goto_a

    :cond_27
    return-void
.end method

.method public removeClientByUid(Ljava/lang/String;)V
    .registers 5

    .line 247
    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->m_nInit:I

    if-ltz v0, :cond_27

    .line 248
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->list_client:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 249
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 251
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 253
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->destroy()V

    goto :goto_a

    :cond_27
    return-void
.end method

.method public setList_client(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/P2P/P2PClient;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PService;->list_client:Ljava/util/List;

    return-void
.end method
