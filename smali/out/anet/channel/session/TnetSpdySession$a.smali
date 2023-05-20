.class Lanet/channel/session/TnetSpdySession$a;
.super Lanet/channel/session/a;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/session/TnetSpdySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/session/TnetSpdySession;

.field private b:Lanet/channel/request/Request;

.field private c:Lanet/channel/RequestCb;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;Lanet/channel/RequestCb;)V
    .registers 6

    .line 750
    iput-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Lanet/channel/session/a;-><init>()V

    const/4 p1, 0x0

    .line 747
    iput p1, p0, Lanet/channel/session/TnetSpdySession$a;->d:I

    const-wide/16 v0, 0x0

    .line 748
    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession$a;->e:J

    .line 751
    iput-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    .line 752
    iput-object p3, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    return-void
.end method

.method private a(Lorg/android/spdy/SuperviseData;ILjava/lang/String;)V
    .registers 8

    .line 817
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 819
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v0, v0, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    if-lez p2, :cond_20

    .line 824
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    const/4 v1, 0x1

    iput v1, v0, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 826
    :cond_20
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v0, v0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iput p2, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 827
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iput-object p3, p2, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    if-eqz p1, :cond_f8

    .line 830
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, p1, Lorg/android/spdy/SuperviseData;->responseEnd:J

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 832
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, p1, Lorg/android/spdy/SuperviseData;->sendStart:J

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->requestStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 833
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, p1, Lorg/android/spdy/SuperviseData;->sendEnd:J

    iget-object p3, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p3, p3, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p3, Lanet/channel/statist/RequestStatistic;->sendStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 834
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, p1, Lorg/android/spdy/SuperviseData;->responseStart:J

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->sendEnd:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 835
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, p1, Lorg/android/spdy/SuperviseData;->responseEnd:J

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->responseStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 837
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget p3, p1, Lorg/android/spdy/SuperviseData;->bodySize:I

    iget v0, p1, Lorg/android/spdy/SuperviseData;->compressSize:I

    add-int/2addr p3, v0

    int-to-long v0, p3

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 838
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, p0, Lanet/channel/session/TnetSpdySession$a;->e:J

    iget p3, p1, Lorg/android/spdy/SuperviseData;->recvUncompressSize:I

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 840
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget p3, p1, Lorg/android/spdy/SuperviseData;->uncompressSize:I

    int-to-long v0, p3

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->reqHeadInflateSize:J

    .line 841
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget p3, p1, Lorg/android/spdy/SuperviseData;->compressSize:I

    int-to-long v0, p3

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->reqHeadDeflateSize:J

    .line 842
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget p3, p1, Lorg/android/spdy/SuperviseData;->bodySize:I

    int-to-long v0, p3

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->reqBodyInflateSize:J

    .line 843
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget p3, p1, Lorg/android/spdy/SuperviseData;->bodySize:I

    int-to-long v0, p3

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->reqBodyDeflateSize:J

    .line 845
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget p3, p1, Lorg/android/spdy/SuperviseData;->recvCompressSize:I

    int-to-long v0, p3

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->rspHeadDeflateSize:J

    .line 846
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget p3, p1, Lorg/android/spdy/SuperviseData;->recvUncompressSize:I

    int-to-long v0, p3

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->rspHeadInflateSize:J

    .line 847
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget p3, p1, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    int-to-long v0, p3

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    .line 848
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, p0, Lanet/channel/session/TnetSpdySession$a;->e:J

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->rspBodyInflateSize:J

    .line 850
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide p2, p2, Lanet/channel/statist/RequestStatistic;->contentLength:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_da

    .line 851
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p2, p2, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget p3, p1, Lorg/android/spdy/SuperviseData;->originContentLength:I

    int-to-long v0, p3

    iput-wide v0, p2, Lanet/channel/statist/RequestStatistic;->contentLength:J

    .line 855
    :cond_da
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p2, p2, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide v0, p2, Lanet/channel/statist/SessionStatistic;->recvSizeCount:J

    iget p3, p1, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    iget v2, p1, Lorg/android/spdy/SuperviseData;->recvCompressSize:I

    add-int/2addr p3, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Lanet/channel/statist/SessionStatistic;->recvSizeCount:J

    .line 856
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p2, p2, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide v0, p2, Lanet/channel/statist/SessionStatistic;->sendSizeCount:J

    iget p3, p1, Lorg/android/spdy/SuperviseData;->bodySize:I

    iget p1, p1, Lorg/android/spdy/SuperviseData;->compressSize:I

    add-int/2addr p3, p1

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Lanet/channel/statist/SessionStatistic;->sendSizeCount:J
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f8} :catch_f8

    :catch_f8
    :cond_f8
    return-void
.end method


# virtual methods
.method public spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V
    .registers 9

    const/4 p1, 0x1

    .line 758
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p3

    if-eqz p3, :cond_33

    .line 759
    iget-object p3, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {p3}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p6, 0x0

    const-string v0, "len"

    aput-object v0, p4, p6

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getDataLength()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p4, p1

    const/4 p1, 0x2

    const-string p6, "fin"

    aput-object p6, p4, p1

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    aput-object p6, p4, p1

    const-string p1, "awcn.TnetSpdySession"

    const-string/jumbo p6, "spdyDataChunkRecvCB"

    invoke-static {p1, p6, p3, p4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    :cond_33
    iget-wide p3, p0, Lanet/channel/session/TnetSpdySession$a;->e:J

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getDataLength()I

    move-result p1

    int-to-long v0, p1

    add-long/2addr p3, v0

    iput-wide p3, p0, Lanet/channel/session/TnetSpdySession$a;->e:J

    .line 763
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p1, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide p3, p1, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getDataLength()I

    move-result p6

    int-to-long v0, p6

    add-long/2addr p3, v0

    iput-wide p3, p1, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 764
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p1, p1, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz p1, :cond_58

    .line 765
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p1, p1, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {p1}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    .line 767
    :cond_58
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    if-eqz p1, :cond_72

    .line 1021
    sget-object p1, Lanet/channel/bytes/a$a;->a:Lanet/channel/bytes/a;

    .line 768
    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getByteArray()[B

    move-result-object p3

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getDataLength()I

    move-result p4

    invoke-virtual {p1, p3, p4}, Lanet/channel/bytes/a;->a([BI)Lanet/channel/bytes/ByteArray;

    move-result-object p1

    .line 769
    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->recycle()V

    .line 770
    iget-object p3, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    invoke-interface {p3, p1, p2}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    .line 772
    :cond_72
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    const/16 p2, 0x20

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lanet/channel/session/TnetSpdySession;->d(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/b;)V

    return-void
.end method

.method public spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 865
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p1, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object p5, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p5, p5, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v0, p5, Lanet/channel/statist/RequestStatistic;->sendStart:J

    sub-long/2addr p2, v0

    iput-wide p2, p1, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 867
    invoke-static {p4}, Lanet/channel/util/HttpHelper;->parseStatusCode(Ljava/util/Map;)I

    move-result p1

    iput p1, p0, Lanet/channel/session/TnetSpdySession$a;->d:I

    .line 868
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lanet/channel/session/TnetSpdySession;->a(Lanet/channel/session/TnetSpdySession;I)I

    .line 870
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p5, p3, [Ljava/lang/Object;

    const-string/jumbo v0, "statusCode"

    aput-object v0, p5, p2

    iget v0, p0, Lanet/channel/session/TnetSpdySession$a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p5, v1

    const-string v0, ""

    const-string v2, "awcn.TnetSpdySession"

    invoke-static {v2, v0, p1, p5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object p1

    new-array p3, p3, [Ljava/lang/Object;

    const-string p5, "response headers"

    aput-object p5, p3, p2

    aput-object p4, p3, v1

    invoke-static {v2, v0, p1, p3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    if-eqz p1, :cond_59

    .line 874
    iget p2, p0, Lanet/channel/session/TnetSpdySession$a;->d:I

    invoke-static {p4}, Lanet/channel/util/HttpHelper;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 877
    :cond_59
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    const/16 p2, 0x10

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lanet/channel/session/TnetSpdySession;->e(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/b;)V

    .line 879
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p1, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    const-string p2, "Content-Encoding"

    invoke-static {p4, p2}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lanet/channel/statist/RequestStatistic;->contentEncoding:Ljava/lang/String;

    .line 880
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p1, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    const-string p2, "Content-Type"

    invoke-static {p4, p2}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lanet/channel/statist/RequestStatistic;->contentType:Ljava/lang/String;

    .line 881
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p1, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {p4}, Lanet/channel/util/HttpHelper;->parseContentLength(Ljava/util/Map;)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p1, Lanet/channel/statist/RequestStatistic;->contentLength:J

    .line 882
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p1, p1, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {p4}, Lanet/channel/util/HttpHelper;->parseServerRT(Ljava/util/Map;)J

    move-result-wide p2

    iput-wide p2, p1, Lanet/channel/statist/RequestStatistic;->serverRT:J

    .line 884
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget p3, p0, Lanet/channel/session/TnetSpdySession$a;->d:I

    invoke-static {p1, p2, p3}, Lanet/channel/session/TnetSpdySession;->a(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;I)V

    .line 885
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-static {p1, p2, p4}, Lanet/channel/session/TnetSpdySession;->a(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;Ljava/util/Map;)V

    .line 886
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p1, p1, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz p1, :cond_ab

    .line 887
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p1, p1, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {p1}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    :cond_ab
    return-void
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .registers 15

    const/4 p1, 0x1

    .line 777
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const-string v2, "awcn.TnetSpdySession"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p5, :cond_30

    .line 778
    iget-object p5, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {p5}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object p5

    new-array v5, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "streamId"

    aput-object v6, v5, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v5, p1

    const-string p2, "errorCode"

    aput-object p2, v5, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    const-string/jumbo p2, "spdyStreamCloseCallback"

    invoke-static {v2, p2, p5, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    if-eqz p4, :cond_8b

    const/16 p2, -0x130

    .line 783
    iput p2, p0, Lanet/channel/session/TnetSpdySession$a;->d:I

    .line 784
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lanet/channel/util/ErrorConstant;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x7d5

    if-eq p4, p3, :cond_55

    .line 787
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p3

    new-instance p5, Lanet/channel/statist/ExceptionStatistic;

    const/16 v5, -0x12c

    iget-object v6, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object v6, v6, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    const/4 v7, 0x0

    invoke-direct {p5, v5, p2, v6, v7}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {p3, p5}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 789
    :cond_55
    iget-object p3, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {p3}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x6

    new-array p5, p5, [Ljava/lang/Object;

    const-string v5, "session"

    aput-object v5, p5, v4

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v5, v5, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    aput-object v5, p5, p1

    const-string/jumbo v5, "status code"

    aput-object v5, p5, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p5, v0

    const-string v0, "URL"

    aput-object v0, p5, v1

    const/4 v0, 0x5

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    invoke-virtual {v1}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v0

    const-string/jumbo v0, "spdyStreamCloseCallback error"

    invoke-static {v2, v0, p3, p5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8d

    :cond_8b
    const-string p2, "SUCCESS"

    .line 792
    :goto_8d
    iget-object p3, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p3, p3, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iput p4, p3, Lanet/channel/statist/RequestStatistic;->tnetErrorCode:I

    .line 793
    iget p3, p0, Lanet/channel/session/TnetSpdySession$a;->d:I

    invoke-direct {p0, p6, p3, p2}, Lanet/channel/session/TnetSpdySession$a;->a(Lorg/android/spdy/SuperviseData;ILjava/lang/String;)V

    .line 794
    iget-object p3, p0, Lanet/channel/session/TnetSpdySession$a;->c:Lanet/channel/RequestCb;

    if-eqz p3, :cond_a5

    .line 795
    iget p5, p0, Lanet/channel/session/TnetSpdySession$a;->d:I

    iget-object p6, p0, Lanet/channel/session/TnetSpdySession$a;->b:Lanet/channel/request/Request;

    iget-object p6, p6, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-interface {p3, p5, p2, p6}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_a5
    const/16 p2, -0x7d4

    if-ne p4, p2, :cond_e3

    .line 800
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    iget-boolean p2, p2, Lanet/channel/session/TnetSpdySession;->y:Z

    if-nez p2, :cond_b4

    .line 801
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {p2, p1}, Lanet/channel/session/TnetSpdySession;->ping(Z)V

    .line 804
    :cond_b4
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {p2}, Lanet/channel/session/TnetSpdySession;->e(Lanet/channel/session/TnetSpdySession;)I

    move-result p2

    if-lt p2, v3, :cond_e3

    .line 805
    new-instance p2, Lanet/channel/strategy/ConnEvent;

    invoke-direct {p2}, Lanet/channel/strategy/ConnEvent;-><init>()V

    .line 806
    iput-boolean v4, p2, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 807
    iget-object p3, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {p3}, Lanet/channel/session/TnetSpdySession;->a(Lanet/channel/session/TnetSpdySession;)Z

    move-result p3

    iput-boolean p3, p2, Lanet/channel/strategy/ConnEvent;->isAccs:Z

    .line 808
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p3

    iget-object p4, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {p4}, Lanet/channel/session/TnetSpdySession;->f(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {p5}, Lanet/channel/session/TnetSpdySession;->g(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;

    move-result-object p5

    invoke-interface {p3, p4, p5, p2}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    .line 809
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession$a;->a:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {p2, p1}, Lanet/channel/session/TnetSpdySession;->close(Z)V

    :cond_e3
    return-void
.end method
