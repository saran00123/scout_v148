.class final Lanet/channel/e/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/IConnStrategy;


# instance fields
.field final synthetic a:Lanet/channel/strategy/IConnStrategy;


# direct methods
.method constructor <init>(Lanet/channel/strategy/IConnStrategy;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lanet/channel/e/g;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .registers 2

    .line 257
    iget-object v0, p0, Lanet/channel/e/g;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getConnectionTimeout()I

    move-result v0

    return v0
.end method

.method public getHeartbeat()I
    .registers 2

    .line 272
    iget-object v0, p0, Lanet/channel/e/g;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getHeartbeat()I

    move-result v0

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lanet/channel/e/g;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpSource()I
    .registers 2

    .line 240
    iget-object v0, p0, Lanet/channel/e/g;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIpSource()I

    move-result v0

    return v0
.end method

.method public getIpType()I
    .registers 2

    .line 235
    iget-object v0, p0, Lanet/channel/e/g;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result v0

    return v0
.end method

.method public getPort()I
    .registers 2

    .line 245
    iget-object v0, p0, Lanet/channel/e/g;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v0

    return v0
.end method

.method public getProtocol()Lanet/channel/strategy/ConnProtocol;
    .registers 3

    .line 250
    iget-object v0, p0, Lanet/channel/e/g;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    const/4 v0, 0x0

    const-string v1, "http3_1rtt"

    .line 252
    invoke-static {v1, v0, v0}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .line 262
    iget-object v0, p0, Lanet/channel/e/g;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRetryTimes()I
    .registers 2

    .line 267
    iget-object v0, p0, Lanet/channel/e/g;->a:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getRetryTimes()I

    move-result v0

    return v0
.end method
