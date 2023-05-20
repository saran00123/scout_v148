.class Lanet/channel/session/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/IAuth$AuthCallback;


# instance fields
.field final synthetic a:Lanet/channel/session/TnetSpdySession;


# direct methods
.method constructor <init>(Lanet/channel/session/TnetSpdySession;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFail(ILjava/lang/String;)V
    .registers 5

    .line 486
    iget-object p2, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lanet/channel/session/TnetSpdySession;->c(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/b;)V

    .line 487
    iget-object p2, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p2, p2, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    if-eqz p2, :cond_2b

    .line 488
    iget-object p2, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p2, p2, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accs_Auth_Fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 489
    iget-object p2, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-object p2, p2, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    int-to-long v0, p1

    iput-wide v0, p2, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 491
    :cond_2b
    iget-object p1, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {p1}, Lanet/channel/session/TnetSpdySession;->close()V

    return-void
.end method

.method public onAuthSuccess()V
    .registers 6

    .line 472
    iget-object v0, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lanet/channel/session/TnetSpdySession;->b(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/b;)V

    .line 473
    iget-object v0, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/session/TnetSpdySession;->z:J

    .line 474
    iget-object v0, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v0, :cond_1e

    .line 475
    iget-object v0, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    iget-object v1, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    invoke-interface {v0, v1}, Lanet/channel/heartbeat/IHeartbeat;->start(Lanet/channel/Session;)V

    .line 477
    :cond_1e
    iget-object v0, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    const/4 v1, 0x1

    iput v1, v0, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 478
    iget-object v0, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "authTime"

    aput-object v4, v2, v3

    iget-object v3, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v3, v3, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide v3, v3, Lanet/channel/statist/SessionStatistic;->authTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "awcn.TnetSpdySession"

    const-string/jumbo v3, "spdyOnStreamResponse"

    invoke-static {v1, v3, v0, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-wide v0, v0, Lanet/channel/session/TnetSpdySession;->A:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5e

    .line 480
    iget-object v0, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lanet/channel/session/i;->a:Lanet/channel/session/TnetSpdySession;

    iget-wide v3, v3, Lanet/channel/session/TnetSpdySession;->A:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lanet/channel/statist/SessionStatistic;->authTime:J

    :cond_5e
    return-void
.end method
