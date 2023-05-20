.class Lanetwork/channel/entity/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/aidl/DefaultFinishEvent;

.field final synthetic b:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field final synthetic c:Lanetwork/channel/entity/c;


# direct methods
.method constructor <init>(Lanetwork/channel/entity/c;Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .registers 4

    .line 113
    iput-object p1, p0, Lanetwork/channel/entity/f;->c:Lanetwork/channel/entity/c;

    iput-object p2, p0, Lanetwork/channel/entity/f;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    iput-object p3, p0, Lanetwork/channel/entity/f;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-string v0, "anet.Repeater"

    .line 115
    iget-object v1, p0, Lanetwork/channel/entity/f;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 116
    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;->setContext(Ljava/lang/Object;)V

    .line 119
    :cond_a
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 120
    iget-object v1, p0, Lanetwork/channel/entity/f;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v1, v1, Lanetwork/channel/aidl/DefaultFinishEvent;->rs:Lanet/channel/statist/RequestStatistic;

    if-eqz v1, :cond_2e

    .line 122
    iput-wide v3, v1, Lanet/channel/statist/RequestStatistic;->rspCbStart:J

    .line 123
    iget-wide v5, v1, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    sub-long v5, v3, v5

    iput-wide v5, v1, Lanet/channel/statist/RequestStatistic;->lastProcessTime:J

    .line 124
    iget-wide v5, v1, Lanet/channel/statist/RequestStatistic;->retryCostTime:J

    iget-wide v7, v1, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long v7, v3, v7

    add-long/2addr v5, v7

    iput-wide v5, v1, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 125
    iget-object v5, p0, Lanetwork/channel/entity/f;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-virtual {v5}, Lanetwork/channel/aidl/DefaultFinishEvent;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v5

    invoke-virtual {v5, v1}, Lanetwork/channel/statist/StatisticData;->filledBy(Lanet/channel/statist/RequestStatistic;)V

    .line 127
    :cond_2e
    iget-object v5, p0, Lanetwork/channel/entity/f;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iget-object v6, p0, Lanetwork/channel/entity/f;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-interface {v5, v6}, Lanetwork/channel/aidl/ParcelableNetworkListener;->onFinished(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    if-eqz v1, :cond_49

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 130
    iput-wide v5, v1, Lanet/channel/statist/RequestStatistic;->rspCbEnd:J

    sub-long/2addr v5, v3

    .line 131
    iput-wide v5, v1, Lanet/channel/statist/RequestStatistic;->callbackTime:J

    .line 134
    invoke-static {}, Lanet/channel/fulltrace/a;->a()Lanet/channel/fulltrace/IFullTraceAnalysis;

    move-result-object v3

    iget-object v4, v1, Lanet/channel/statist/RequestStatistic;->traceId:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lanet/channel/fulltrace/IFullTraceAnalysis;->commitRequest(Ljava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 137
    :cond_49
    iget-object v3, p0, Lanetwork/channel/entity/f;->c:Lanetwork/channel/entity/c;

    invoke-static {v3}, Lanetwork/channel/entity/c;->b(Lanetwork/channel/entity/c;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 138
    iget-object v3, p0, Lanetwork/channel/entity/f;->c:Lanetwork/channel/entity/c;

    invoke-static {v3}, Lanetwork/channel/entity/c;->b(Lanetwork/channel/entity/c;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v3

    invoke-virtual {v3}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->writeEnd()V

    :cond_5a
    if-eqz v1, :cond_173

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[traceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lanet/channel/statist/RequestStatistic;->traceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "end, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1}, Lanet/channel/statist/RequestStatistic;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    iget-object v4, p0, Lanetwork/channel/entity/f;->c:Lanetwork/channel/entity/c;

    invoke-static {v4}, Lanetwork/channel/entity/c;->d(Lanetwork/channel/entity/c;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getBucketInfo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_ae

    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move v7, v5

    :goto_98
    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_ae

    .line 151
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lanet/channel/statist/RequestStatistic;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x2

    goto :goto_98

    .line 155
    :cond_ae
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v3

    if-eqz v3, :cond_c1

    const-string v3, "restrictBg"

    .line 156
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getRestrictBackgroundStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lanet/channel/statist/RequestStatistic;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :cond_c1
    invoke-static {}, Lanet/channel/fulltrace/a;->a()Lanet/channel/fulltrace/IFullTraceAnalysis;

    move-result-object v3

    invoke-interface {v3}, Lanet/channel/fulltrace/IFullTraceAnalysis;->getSceneInfo()Lanet/channel/fulltrace/b;

    move-result-object v3

    if-eqz v3, :cond_104

    .line 162
    invoke-virtual {v3}, Lanet/channel/fulltrace/b;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lanetwork/channel/entity/f;->c:Lanetwork/channel/entity/c;

    invoke-static {v7}, Lanetwork/channel/entity/c;->d(Lanetwork/channel/entity/c;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v0, v6, v7, v8}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-wide v6, v1, Lanet/channel/statist/RequestStatistic;->start:J

    iget-wide v8, v3, Lanet/channel/fulltrace/b;->c:J

    sub-long/2addr v6, v8

    iput-wide v6, v1, Lanet/channel/statist/RequestStatistic;->sinceInitTime:J

    .line 164
    iget v0, v3, Lanet/channel/fulltrace/b;->a:I

    iput v0, v1, Lanet/channel/statist/RequestStatistic;->startType:I

    .line 166
    iget v0, v3, Lanet/channel/fulltrace/b;->a:I

    if-eq v0, v4, :cond_f0

    .line 167
    iget-wide v6, v3, Lanet/channel/fulltrace/b;->c:J

    iget-wide v8, v3, Lanet/channel/fulltrace/b;->d:J

    sub-long/2addr v6, v8

    iput-wide v6, v1, Lanet/channel/statist/RequestStatistic;->sinceLastLaunchTime:J

    .line 169
    :cond_f0
    iget v0, v3, Lanet/channel/fulltrace/b;->e:I

    iput v0, v1, Lanet/channel/statist/RequestStatistic;->deviceLevel:I

    .line 170
    iget-boolean v0, v3, Lanet/channel/fulltrace/b;->b:Z

    if-eqz v0, :cond_f9

    goto :goto_fa

    :cond_f9
    move v4, v5

    :goto_fa
    iput v4, v1, Lanet/channel/statist/RequestStatistic;->isFromExternal:I

    .line 171
    iget-object v0, v3, Lanet/channel/fulltrace/b;->f:Ljava/lang/String;

    iput-object v0, v1, Lanet/channel/statist/RequestStatistic;->speedBucket:Ljava/lang/String;

    .line 172
    iget-object v0, v3, Lanet/channel/fulltrace/b;->g:Ljava/lang/String;

    iput-object v0, v1, Lanet/channel/statist/RequestStatistic;->abTestBucket:Ljava/lang/String;

    .line 176
    :cond_104
    iget-wide v3, v1, Lanet/channel/statist/RequestStatistic;->reqServiceTransmissionEnd:J

    iget-wide v5, v1, Lanet/channel/statist/RequestStatistic;->netReqStart:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Lanet/channel/statist/RequestStatistic;->serializeTransferTime:J

    .line 179
    iget-object v0, p0, Lanetwork/channel/entity/f;->c:Lanetwork/channel/entity/c;

    invoke-static {v0}, Lanetwork/channel/entity/c;->c(Lanetwork/channel/entity/c;)Lanetwork/channel/entity/g;

    move-result-object v0

    const-string v3, "RequestUserInfo"

    invoke-virtual {v0, v3}, Lanetwork/channel/entity/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lanet/channel/statist/RequestStatistic;->userInfo:Ljava/lang/String;

    .line 181
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 183
    invoke-static {v1}, Lanetwork/channel/config/NetworkConfigCenter;->isRequestInMonitorList(Lanet/channel/statist/RequestStatistic;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 184
    new-instance v0, Lanet/channel/statist/RequestMonitor;

    invoke-direct {v0, v1}, Lanet/channel/statist/RequestMonitor;-><init>(Lanet/channel/statist/RequestStatistic;)V

    .line 185
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v3

    invoke-interface {v3, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_132
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_132} :catch_173

    .line 190
    :cond_132
    :try_start_132
    iget-object v0, v1, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    .line 191
    iget-object v3, v1, Lanet/channel/statist/RequestStatistic;->extra:Lorg/json/JSONObject;

    if-nez v3, :cond_139

    goto :goto_141

    :cond_139
    iget-object v2, v1, Lanet/channel/statist/RequestStatistic;->extra:Lorg/json/JSONObject;

    const-string v3, "firstIp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    :goto_141
    invoke-static {v0}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14d

    invoke-static {v2}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 193
    :cond_14d
    new-instance v0, Lanet/channel/statist/RequestMonitor;

    invoke-direct {v0, v1}, Lanet/channel/statist/RequestMonitor;-><init>(Lanet/channel/statist/RequestStatistic;)V

    .line 194
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v2

    invoke-interface {v2, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_159} :catch_159
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_159} :catch_173

    .line 200
    :catch_159
    :cond_159
    :try_start_159
    invoke-static {}, Lanetwork/channel/stat/NetworkStat;->getNetworkStat()Lanetwork/channel/stat/INetworkStat;

    move-result-object v0

    iget-object v2, p0, Lanetwork/channel/entity/f;->c:Lanetwork/channel/entity/c;

    invoke-static {v2}, Lanetwork/channel/entity/c;->c(Lanetwork/channel/entity/c;)Lanetwork/channel/entity/g;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/entity/g;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanetwork/channel/entity/f;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-virtual {v3}, Lanetwork/channel/aidl/DefaultFinishEvent;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lanetwork/channel/stat/INetworkStat;->put(Ljava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    .line 203
    invoke-static {v1}, Lanet/channel/detect/n;->a(Lanet/channel/statist/RequestStatistic;)V
    :try_end_173
    .catch Ljava/lang/Throwable; {:try_start_159 .. :try_end_173} :catch_173

    :catch_173
    :cond_173
    return-void
.end method
