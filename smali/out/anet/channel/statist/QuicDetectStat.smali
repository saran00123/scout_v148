.class public Lanet/channel/statist/QuicDetectStat;
.super Lanet/channel/statist/StatObject;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "networkPrefer"
    monitorPoint = "quic_detect"
.end annotation


# instance fields
.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ip:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public volatile netType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public protocol:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ret:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 20
    iput-object p1, p0, Lanet/channel/statist/QuicDetectStat;->host:Ljava/lang/String;

    if-eqz p2, :cond_15

    .line 22
    invoke-interface {p2}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/statist/QuicDetectStat;->ip:Ljava/lang/String;

    .line 23
    invoke-interface {p2}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object p1

    iget-object p1, p1, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    iput-object p1, p0, Lanet/channel/statist/QuicDetectStat;->protocol:Ljava/lang/String;

    .line 25
    :cond_15
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/statist/QuicDetectStat;->netType:Ljava/lang/String;

    return-void
.end method
