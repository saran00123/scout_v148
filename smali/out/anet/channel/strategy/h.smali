.class Lanet/channel/strategy/h;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/IStrategyFilter;


# instance fields
.field final synthetic a:Lanet/channel/strategy/g;


# direct methods
.method constructor <init>(Lanet/channel/strategy/g;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lanet/channel/strategy/h;->a:Lanet/channel/strategy/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lanet/channel/strategy/IConnStrategy;)Z
    .registers 11

    .line 44
    invoke-interface {p1}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    iget-object v0, v0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v1, "quic"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "strategy"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "awcn.StrategyCenter"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_4a

    const-string v1, "quicplain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_4a

    .line 52
    :cond_20
    invoke-static {}, Lanet/channel/AwcnConfig;->isHttp3Enable()Z

    move-result v1

    .line 53
    invoke-static {}, Lanet/channel/e/a;->b()Z

    move-result v8

    if-eqz v1, :cond_2c

    if-nez v8, :cond_3d

    :cond_2c
    const-string v1, "http3"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "http3plain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3e

    :cond_3d
    return v6

    .line 55
    :cond_3e
    :goto_3e
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v7

    aput-object p1, v0, v6

    const-string p1, "http3 strategy disabled"

    invoke-static {v5, p1, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    .line 48
    :cond_4a
    :goto_4a
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v7

    aput-object p1, v0, v6

    const-string p1, "gquic strategy disabled"

    invoke-static {v5, p1, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7
.end method
