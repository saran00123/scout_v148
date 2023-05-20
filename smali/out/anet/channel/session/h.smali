.class Lanet/channel/session/h;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/session/TnetSpdySession;


# direct methods
.method constructor <init>(Lanet/channel/session/TnetSpdySession;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 383
    iget-object v0, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    iget-boolean v0, v0, Lanet/channel/session/TnetSpdySession;->y:Z

    if-eqz v0, :cond_61

    .line 384
    iget-object v0, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "pingUnRcv:"

    aput-object v3, v1, v2

    iget-object v3, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    iget-boolean v3, v3, Lanet/channel/session/TnetSpdySession;->y:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "awcn.TnetSpdySession"

    const-string v5, "send msg time out!"

    invoke-static {v3, v5, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :try_start_24
    iget-object v0, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    const/16 v1, 0x800

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lanet/channel/session/TnetSpdySession;->a(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/b;)V

    .line 387
    iget-object v0, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    if-eqz v0, :cond_3a

    .line 388
    iget-object v0, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    const-string v1, "ping time out"

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 391
    :cond_3a
    new-instance v0, Lanet/channel/strategy/ConnEvent;

    invoke-direct {v0}, Lanet/channel/strategy/ConnEvent;-><init>()V

    .line 392
    iput-boolean v2, v0, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 393
    iget-object v1, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {v1}, Lanet/channel/session/TnetSpdySession;->a(Lanet/channel/session/TnetSpdySession;)Z

    move-result v1

    iput-boolean v1, v0, Lanet/channel/strategy/ConnEvent;->isAccs:Z

    .line 394
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {v2}, Lanet/channel/session/TnetSpdySession;->b(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    invoke-static {v3}, Lanet/channel/session/TnetSpdySession;->c(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    .line 395
    iget-object v0, p0, Lanet/channel/session/h;->a:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {v0, v4}, Lanet/channel/session/TnetSpdySession;->close(Z)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_61} :catch_61

    :catch_61
    :cond_61
    return-void
.end method
