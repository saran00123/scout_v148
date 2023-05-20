.class public Lcom/pilotlab/rollereye/P2P/P2PDownload;
.super Ljava/lang/Object;
.source "P2PDownload.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private drop_index:I

.field fileOutputStream:Ljava/io/FileOutputStream;

.field private index:I

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

.field private p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

.field private recive_data_flag:I

.field private retry_counts:I

.field private retry_max:I

.field private testRetry:Z


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "P2PDownload"

    .line 30
    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->recive_data_flag:I

    .line 40
    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->drop_index:I

    const/4 v1, 0x1

    .line 42
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->testRetry:Z

    .line 44
    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->retry_counts:I

    const/16 v0, 0xa

    .line 48
    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->retry_max:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 53
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    .line 54
    iput-object p2, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 55
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/P2P/P2PDownload;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/P2P/P2PDownload;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->recive_data_flag:I

    return p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/P2P/P2PDownload;I)I
    .registers 2

    .line 28
    iput p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->recive_data_flag:I

    return p1
.end method

.method private closeDownloadFile()V
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_a

    .line 96
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->fileOutputStream:Ljava/io/FileOutputStream;

    :cond_a
    return-void
.end method

.method private testRetry()V
    .registers 3

    .line 287
    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_11

    iget-boolean v1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->testRetry:Z

    if-eqz v1, :cond_11

    add-int/lit8 v0, v0, -0x1

    .line 288
    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->testRetry:Z

    :cond_11
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 229
    monitor-enter p0

    .line 231
    :try_start_1
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 232
    monitor-exit p0

    return-void

    .line 234
    :cond_a
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getSession()I

    move-result v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getSession()I

    move-result v2

    if-eq v0, v2, :cond_18

    .line 235
    monitor-exit p0

    return-void

    .line 237
    :cond_18
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getPar3()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_fd

    .line 239
    iput v2, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->recive_data_flag:I

    .line 240
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeesionID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getSession()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",index:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getIndex()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getIndex()J

    move-result-wide v0

    iget v3, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    add-int/2addr v3, v2

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_9d

    .line 242
    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    .line 243
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5e38\u7684\u6570\u636eindex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getDownloadSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getData_length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->setDownloadSize(J)V

    .line 247
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_85
    .catchall {:try_start_1 .. :try_end_85} :catchall_120

    if-eqz v0, :cond_11e

    .line 249
    :try_start_87
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getData_length()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_95} :catch_97
    .catchall {:try_start_87 .. :try_end_95} :catchall_120

    goto/16 :goto_11e

    :catch_97
    move-exception p1

    .line 251
    :try_start_98
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_11e

    .line 257
    :cond_9d
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getIndex()J

    move-result-wide v0

    iget p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    int-to-long v3, p1

    cmp-long p1, v0, v3

    if-nez p1, :cond_c2

    .line 258
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u91cd\u590d\u7684\u6570\u636eindex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit p0

    return-void

    .line 261
    :cond_c2
    iget p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->retry_counts:I

    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->retry_max:I

    if-ge p1, v0, :cond_f9

    .line 262
    iget p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->drop_index:I

    iget v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    add-int/2addr v0, v2

    if-eq p1, v0, :cond_11e

    .line 263
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u4e22\u5305\u7684\u6570\u636eindex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadRetry(I)V

    .line 265
    iget p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->index:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->drop_index:I

    .line 266
    iget p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->retry_counts:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->retry_counts:I

    goto :goto_11e

    .line 269
    :cond_f9
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadError()V

    goto :goto_11e

    .line 272
    :cond_fd
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getPar3()I

    move-result v0

    if-ne v0, v2, :cond_10e

    .line 274
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadEnd()V

    .line 275
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->TAG:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f7d\u7ed3\u675f"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11e

    .line 276
    :cond_10e
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/DownloadFrameMessage;->getPar3()I

    move-result p1

    if-ne p1, v1, :cond_11e

    .line 278
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadError()V

    .line 279
    iget-object p1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->TAG:Ljava/lang/String;

    const-string v0, "\u5d4c\u5165\u5f0f\u5185\u90e8\u51fa\u9519"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_11e
    :goto_11e
    monitor-exit p0

    return-void

    :catchall_120
    move-exception p1

    monitor-exit p0
    :try_end_122
    .catchall {:try_start_98 .. :try_end_122} :catchall_120

    throw p1
.end method

.method public destroy()V
    .registers 2

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 84
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_18

    .line 85
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 87
    :cond_18
    invoke-direct {p0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->closeDownloadFile()V

    return-void
.end method

.method public downloadBegin()V
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u5f00\u59cb\uff0cSeeionID\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getSession()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->setDownload_status(I)V

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->setDownloadSize(J)V

    .line 113
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DOWNLOAD_BEGIN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 114
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_30
    const-string v2, "session"

    .line 116
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getSession()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4e

    const-string v2, "id"

    .line 118
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4e
    const-string v2, "block"

    const/16 v3, 0x1000

    .line 119
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getRemote_path()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    const-string v2, "path"

    .line 121
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getRemote_path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception v2

    .line 123
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 125
    :cond_6d
    :goto_6d
    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->RESEND_ON:I

    invoke-direct {v2, v3, v0, v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_81

    .line 128
    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_81
    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->recive_data_flag:I

    .line 133
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-static {v1, v2, v1, v2, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/P2P/P2PDownload$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/P2P/P2PDownload$1;-><init>(Lcom/pilotlab/rollereye/P2P/P2PDownload;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public downloadEnd()V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->setDownload_status(I)V

    .line 194
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DOWNLOAD_END:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 195
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string v2, "session"

    .line 197
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getSession()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v2

    .line 199
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 201
    :goto_1d
    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->RESEND_ON:I

    invoke-direct {v2, v3, v0, v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;I)V

    .line 202
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_31

    .line 203
    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 204
    :cond_31
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->destroy()V

    return-void
.end method

.method public downloadError()V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->setDownload_status(I)V

    .line 175
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DOWNLOAD_END:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 176
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string v2, "session"

    .line 178
    iget-object v3, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getSession()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v2

    .line 180
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 182
    :goto_1d
    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->RESEND_ON:I

    invoke-direct {v2, v3, v0, v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;I)V

    .line 183
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_31

    .line 184
    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 186
    :cond_31
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->destroy()V

    return-void
.end method

.method public downloadRetry(I)V
    .registers 5

    .line 213
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DOWNLOAD_RETRY:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 214
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "start"

    .line 216
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "session"

    .line 217
    iget-object v2, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getSession()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    .line 219
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 221
    :goto_1c
    new-instance p1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->RESEND_ON:I

    invoke-direct {p1, v2, v0, v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;I)V

    .line 222
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_30

    .line 223
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_30
    return-void
.end method

.method public getDownloadStatus()I
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getDownload_status()I

    move-result v0

    return v0
.end method

.method public getP2PdownloadBean()Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    return-object v0
.end method

.method public init()V
    .registers 3

    .line 66
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 67
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 70
    :cond_11
    :try_start_11
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->p2PdownloadBean:Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/P2P/P2PDownload;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_23
    return-void
.end method
