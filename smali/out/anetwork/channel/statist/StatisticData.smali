.class public Lanetwork/channel/statist/StatisticData;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x311ba3e23688005cL


# instance fields
.field public api_v:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public cacheTime:J

.field public connectionType:Ljava/lang/String;

.field public dataSpeed:J

.field public dnsTime:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public firstDataTime:J

.field public host:Ljava/lang/String;

.field public ip_port:Ljava/lang/String;

.field public isDNSTimeout:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isRequestSuccess:Z

.field public isSSL:Z

.field public isSpdy:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public locationUrl:Ljava/lang/String;

.field public netStatSum:Ljava/lang/String;

.field public netTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public oneWayTime_AEngine:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public oneWayTime_ANet:J

.field public oneWayTime_Jni:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public postBodyTime:J

.field public processTime:J

.field public quicConnectionID:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public recDataTime:J

.field public receiveDataTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public redirectTime:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public responseBodySize:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public resultCode:I

.field public retryTime:I

.field public rtt:J

.field public sendBeforeTime:J

.field public sendSize:J

.field public serverRT:J

.field public spdyWaitTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tcpConnTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tcpLinkDate:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public timeoutType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public totalSize:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    .line 30
    iput v1, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    .line 35
    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->api_v:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isSpdy:Z

    .line 57
    iput-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    .line 62
    iput v1, p0, Lanetwork/channel/statist/StatisticData;->dnsTime:I

    .line 68
    iput v1, p0, Lanetwork/channel/statist/StatisticData;->isDNSTimeout:I

    const-wide/16 v1, 0x0

    .line 74
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->tcpLinkDate:J

    .line 81
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->tcpConnTime:J

    .line 87
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    .line 90
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->cacheTime:J

    .line 95
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_AEngine:J

    .line 101
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_Jni:J

    .line 107
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->postBodyTime:J

    .line 113
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->spdyWaitTime:J

    .line 116
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->processTime:J

    .line 118
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    .line 123
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    .line 128
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    .line 134
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->receiveDataTime:J

    .line 140
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    .line 145
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->rtt:J

    .line 151
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->netTime:J

    .line 157
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    .line 162
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    .line 167
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->responseBodySize:J

    .line 173
    iput-wide v1, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    .line 178
    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->timeoutType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filledBy(Lanet/channel/statist/RequestStatistic;)V
    .registers 6

    if-eqz p1, :cond_78

    .line 213
    iget v0, p1, Lanet/channel/statist/RequestStatistic;->statusCode:I

    iput v0, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    .line 214
    iget-object v0, p1, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 215
    iget v0, p1, Lanet/channel/statist/RequestStatistic;->ret:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    .line 216
    iget-object v0, p1, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget v0, p1, Lanet/channel/statist/RequestStatistic;->port:I

    if-eqz v0, :cond_38

    const/4 v0, 0x2

    .line 218
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p1, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    aput-object v3, v0, v1

    iget v1, p1, Lanet/channel/statist/RequestStatistic;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    .line 220
    :cond_38
    iget v0, p1, Lanet/channel/statist/RequestStatistic;->retryTimes:I

    iput v0, p0, Lanetwork/channel/statist/StatisticData;->retryTime:I

    .line 221
    iget-boolean v0, p1, Lanet/channel/statist/RequestStatistic;->isSSL:Z

    iput-boolean v0, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    .line 222
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    .line 223
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->cacheTime:J

    .line 224
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->processTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->processTime:J

    .line 225
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    .line 226
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    .line 227
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    .line 228
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    .line 229
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    .line 230
    iget-wide v0, p1, Lanet/channel/statist/RequestStatistic;->serverRT:J

    iput-wide v0, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    .line 231
    iget-wide v0, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_70

    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    div-long/2addr v2, v0

    goto :goto_72

    :cond_70
    iget-wide v2, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    :goto_72
    iput-wide v2, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    .line 232
    iget-object p1, p1, Lanet/channel/statist/RequestStatistic;->locationUrl:Ljava/lang/String;

    iput-object p1, p0, Lanetwork/channel/statist/StatisticData;->locationUrl:Ljava/lang/String;

    :cond_78
    return-void
.end method

.method public sumNetStat()Ljava/lang/String;
    .registers 4

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "isSuccess="

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",host="

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",resultCode="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/statist/StatisticData;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",connType="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",oneWayTime_ANet="

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",ip_port="

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isSSL="

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",cacheTime="

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",processTime="

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->processTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",sendBeforeTime="

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",postBodyTime="

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->postBodyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",firstDataTime="

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",recDataTime="

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",serverRT="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",rtt="

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->rtt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",sendSize="

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->sendSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",totalSize="

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",dataSpeed="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",retryTime="

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/statist/StatisticData;->retryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 262
    iget-object v0, p0, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 263
    invoke-virtual {p0}, Lanetwork/channel/statist/StatisticData;->sumNetStat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    .line 266
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatisticData ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
