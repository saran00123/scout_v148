.class public final Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/HttpDnsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpDnsOrigin"
.end annotation


# instance fields
.field final connStrategy:Lanet/channel/strategy/IConnStrategy;


# direct methods
.method constructor <init>(Lanet/channel/strategy/IConnStrategy;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;->connStrategy:Lanet/channel/strategy/IConnStrategy;

    return-void
.end method


# virtual methods
.method public canWithSPDY()Z
    .registers 3

    .line 93
    iget-object v0, p0, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;->connStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    iget-object v0, v0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v1, "http"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public getOriginIP()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;->connStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginPort()I
    .registers 2

    .line 85
    iget-object v0, p0, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;->connStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v0

    return v0
.end method

.method public getOriginProtocol()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;->connStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    iget-object v0, v0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;->connStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
