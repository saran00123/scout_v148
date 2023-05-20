.class Lanet/channel/detect/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/RequestCb;


# instance fields
.field final synthetic a:Lanet/channel/detect/h;


# direct methods
.method constructor <init>(Lanet/channel/detect/h;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .registers 3

    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .registers 9

    .line 250
    iget-object p3, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-object p3, p3, Lanet/channel/detect/h;->c:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "statusCode"

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "msg"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    aput-object p2, v0, v2

    const-string p2, "anet.HorseRaceDetector"

    const-string v2, "LongLinkTask request finish"

    invoke-static {p2, v2, p3, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object p2, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-object p2, p2, Lanet/channel/detect/h;->a:Lanet/channel/statist/HorseRaceStat;

    iget p2, p2, Lanet/channel/statist/HorseRaceStat;->reqErrorCode:I

    if-nez p2, :cond_32

    .line 252
    iget-object p2, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-object p2, p2, Lanet/channel/detect/h;->a:Lanet/channel/statist/HorseRaceStat;

    iput p1, p2, Lanet/channel/statist/HorseRaceStat;->reqErrorCode:I

    goto :goto_43

    .line 254
    :cond_32
    iget-object p1, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-object p1, p1, Lanet/channel/detect/h;->a:Lanet/channel/statist/HorseRaceStat;

    iget-object p2, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-object p2, p2, Lanet/channel/detect/h;->a:Lanet/channel/statist/HorseRaceStat;

    iget p2, p2, Lanet/channel/statist/HorseRaceStat;->reqErrorCode:I

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_41

    move v1, v3

    :cond_41
    iput v1, p1, Lanet/channel/statist/HorseRaceStat;->reqRet:I

    .line 256
    :goto_43
    iget-object p1, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-object p1, p1, Lanet/channel/detect/h;->a:Lanet/channel/statist/HorseRaceStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-wide v0, v0, Lanet/channel/detect/h;->b:J

    sub-long/2addr p2, v0

    iget-object v0, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-object v0, v0, Lanet/channel/detect/h;->a:Lanet/channel/statist/HorseRaceStat;

    iget-wide v0, v0, Lanet/channel/statist/HorseRaceStat;->connTime:J

    add-long/2addr p2, v0

    iput-wide p2, p1, Lanet/channel/statist/HorseRaceStat;->reqTime:J

    .line 258
    iget-object p1, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-object p1, p1, Lanet/channel/detect/h;->a:Lanet/channel/statist/HorseRaceStat;

    monitor-enter p1

    .line 259
    :try_start_5e
    iget-object p2, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-object p2, p2, Lanet/channel/detect/h;->a:Lanet/channel/statist/HorseRaceStat;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 260
    monitor-exit p1

    return-void

    :catchall_67
    move-exception p2

    monitor-exit p1
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_67

    throw p2
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 240
    iget-object p2, p0, Lanet/channel/detect/i;->a:Lanet/channel/detect/h;

    iget-object p2, p2, Lanet/channel/detect/h;->a:Lanet/channel/statist/HorseRaceStat;

    iput p1, p2, Lanet/channel/statist/HorseRaceStat;->reqErrorCode:I

    return-void
.end method
