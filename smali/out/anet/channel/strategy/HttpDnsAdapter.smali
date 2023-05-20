.class public Lanet/channel/strategy/HttpDnsAdapter;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIpByHttpDns(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 52
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 53
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    const/4 v0, 0x0

    .line 56
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanet/channel/strategy/IConnStrategy;

    invoke-interface {p0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOriginByHttpDns(Ljava/lang/String;)Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;
    .registers 2

    .line 22
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    const/4 v0, 0x0

    .line 26
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanet/channel/strategy/IConnStrategy;

    .line 27
    new-instance v0, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;

    invoke-direct {v0, p0}, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;-><init>(Lanet/channel/strategy/IConnStrategy;)V

    return-object v0
.end method

.method public static getOriginsByHttpDns(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 32
    invoke-static {p0, v0}, Lanet/channel/strategy/HttpDnsAdapter;->getOriginsByHttpDns(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getOriginsByHttpDns(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IConnStrategy;

    if-nez p1, :cond_33

    .line 42
    invoke-interface {v1}, Lanet/channel/strategy/IConnStrategy;->getIpSource()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    goto :goto_1d

    .line 45
    :cond_33
    new-instance v2, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;

    invoke-direct {v2, v1}, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;-><init>(Lanet/channel/strategy/IConnStrategy;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_3c
    return-object v0
.end method

.method public static notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;Z)V
    .registers 4

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    if-nez p1, :cond_9

    goto :goto_20

    .line 65
    :cond_9
    invoke-static {p0}, Lanet/channel/AwcnConfig;->isAllowHttpDnsNotify(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 68
    :cond_10
    new-instance v0, Lanet/channel/strategy/ConnEvent;

    invoke-direct {v0}, Lanet/channel/strategy/ConnEvent;-><init>()V

    .line 69
    iput-boolean p2, v0, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 70
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p2

    iget-object p1, p1, Lanet/channel/strategy/HttpDnsAdapter$HttpDnsOrigin;->connStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {p2, p0, p1, v0}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public static setHosts(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->addHosts(Ljava/util/List;)V

    return-void
.end method
