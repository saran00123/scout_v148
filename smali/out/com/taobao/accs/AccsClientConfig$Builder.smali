.class public Lcom/taobao/accs/AccsClientConfig$Builder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/AccsClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private loopInterval:J

.field private mAccsHeartbeatEnable:Z

.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mAuthCode:Ljava/lang/String;

.field private mAutoUnit:Z

.field private mChannelHost:Ljava/lang/String;

.field private mChannelLoopStart:Z

.field private mChannelPubKey:I

.field private mConfigEnv:I

.field private mDisableChannel:Z

.field private mInappHost:Ljava/lang/String;

.field private mInappPubKey:I

.field private mKeepalive:Z

.field private mQuickReconnect:Z

.field private mStoreId:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 319
    iput v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mInappPubKey:I

    .line 320
    iput v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelPubKey:I

    const/4 v1, 0x1

    .line 321
    iput-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mKeepalive:Z

    .line 322
    iput-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAutoUnit:Z

    .line 323
    iput v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mConfigEnv:I

    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mDisableChannel:Z

    .line 325
    iput-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mQuickReconnect:Z

    .line 326
    iput-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAccsHeartbeatEnable:Z

    .line 327
    iput-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelLoopStart:Z

    const-wide/32 v0, 0x493e0

    .line 328
    iput-wide v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->loopInterval:J

    return-void
.end method


# virtual methods
.method public build()Lcom/taobao/accs/AccsClientConfig;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_113

    .line 514
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10b

    .line 517
    new-instance v0, Lcom/taobao/accs/AccsClientConfig;

    invoke-direct {v0}, Lcom/taobao/accs/AccsClientConfig;-><init>()V

    .line 518
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$002(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$102(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAuthCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$202(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mKeepalive:Z

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$302(Lcom/taobao/accs/AccsClientConfig;Z)Z

    .line 522
    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAutoUnit:Z

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$402(Lcom/taobao/accs/AccsClientConfig;Z)Z

    .line 523
    iget v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mInappPubKey:I

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$502(Lcom/taobao/accs/AccsClientConfig;I)I

    .line 524
    iget v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelPubKey:I

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$602(Lcom/taobao/accs/AccsClientConfig;I)I

    .line 525
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mInappHost:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$702(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelHost:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$802(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 527
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$902(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mStoreId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$1002(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    iget v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mConfigEnv:I

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$1102(Lcom/taobao/accs/AccsClientConfig;I)I

    .line 530
    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mDisableChannel:Z

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$1202(Lcom/taobao/accs/AccsClientConfig;Z)Z

    .line 531
    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mQuickReconnect:Z

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$1302(Lcom/taobao/accs/AccsClientConfig;Z)Z

    .line 532
    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAccsHeartbeatEnable:Z

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$1402(Lcom/taobao/accs/AccsClientConfig;Z)Z

    .line 533
    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelLoopStart:Z

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$1502(Lcom/taobao/accs/AccsClientConfig;Z)Z

    .line 534
    iget-wide v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->loopInterval:J

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/AccsClientConfig;->access$1602(Lcom/taobao/accs/AccsClientConfig;J)J

    .line 536
    invoke-static {v0}, Lcom/taobao/accs/AccsClientConfig;->access$1100(Lcom/taobao/accs/AccsClientConfig;)I

    move-result v1

    if-gez v1, :cond_75

    .line 537
    sget v1, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$1102(Lcom/taobao/accs/AccsClientConfig;I)I

    :cond_75
    const/4 v1, 0x2

    .line 539
    invoke-static {v0, v1}, Lcom/taobao/accs/AccsClientConfig;->access$1702(Lcom/taobao/accs/AccsClientConfig;I)I

    .line 540
    invoke-static {v0}, Lcom/taobao/accs/AccsClientConfig;->access$700(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 541
    sget-object v2, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CENTER_HOSTS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/accs/AccsClientConfig;->access$1100(Lcom/taobao/accs/AccsClientConfig;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcom/taobao/accs/AccsClientConfig;->access$702(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    :cond_8e
    invoke-static {v0}, Lcom/taobao/accs/AccsClientConfig;->access$800(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 544
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->access$1800()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/taobao/accs/AccsClientConfig;->access$1100(Lcom/taobao/accs/AccsClientConfig;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcom/taobao/accs/AccsClientConfig;->access$802(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    :cond_a5
    invoke-static {v0}, Lcom/taobao/accs/AccsClientConfig;->access$900(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 547
    invoke-static {v0}, Lcom/taobao/accs/AccsClientConfig;->access$000(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/accs/AccsClientConfig;->access$902(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    :cond_b6
    invoke-static {v0}, Lcom/taobao/accs/AccsClientConfig;->access$1100(Lcom/taobao/accs/AccsClientConfig;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c9

    if-eq v2, v1, :cond_c4

    .line 558
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->access$2100()Ljava/util/Map;

    move-result-object v1

    goto :goto_cd

    .line 555
    :cond_c4
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->access$2000()Ljava/util/Map;

    move-result-object v1

    goto :goto_cd

    .line 552
    :cond_c9
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->access$1900()Ljava/util/Map;

    move-result-object v1

    .line 561
    :goto_cd
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->access$2200()Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    const-string v3, "build config"

    invoke-interface {v2, v3}, Lcom/alibaba/sdk/android/logger/ILog;->debug(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 562
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/AccsClientConfig;

    if-eqz v2, :cond_103

    .line 564
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->access$2200()Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v3

    const-string v4, "build cover"

    invoke-interface {v3, v4}, Lcom/alibaba/sdk/android/logger/ILog;->warn(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v3

    const-string v4, "old"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    const-string v3, "new"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 566
    :cond_103
    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 515
    :cond_10b
    new-instance v0, Lcom/taobao/accs/AccsException;

    const-string v1, "appSecret null"

    invoke-direct {v0, v1}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_113
    new-instance v0, Lcom/taobao/accs/AccsException;

    const-string v1, "appkey null"

    invoke-direct {v0, v1}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loopChannelInterval(J)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 3

    .line 499
    iput-wide p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->loopInterval:J

    return-object p0
.end method

.method public loopChannelStart(Z)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 488
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelLoopStart:Z

    return-object p0
.end method

.method public setAccsHeartbeatEnable(Z)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 477
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAccsHeartbeatEnable:Z

    return-object p0
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppKey:Ljava/lang/String;

    return-object p0
.end method

.method public setAppSecret(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 348
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppSecret:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoCode(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAuthCode:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoUnit(Z)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 421
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAutoUnit:Z

    return-object p0
.end method

.method public setChannelHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelHost:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 405
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelPubKey:I

    return-object p0
.end method

.method public setConfigEnv(I)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2
    .param p1    # I
        .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
        .end annotation
    .end param

    .line 426
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mConfigEnv:I

    return-object p0
.end method

.method public setDisableChannel(Z)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 454
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mDisableChannel:Z

    return-object p0
.end method

.method public setInappHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 359
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mInappHost:Ljava/lang/String;

    return-object p0
.end method

.method public setInappPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 393
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mInappPubKey:I

    return-object p0
.end method

.method public setKeepAlive(Z)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 416
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mKeepalive:Z

    return-object p0
.end method

.method public setQuickReconnect(Z)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 465
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mQuickReconnect:Z

    return-object p0
.end method

.method public setStoreId(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mStoreId:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .registers 2

    .line 443
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method
