.class public Lcom/taobao/accs/net/g;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/taobao/accs/net/g;->a:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/net/g;->b:Ljava/util/List;

    .line 31
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/net/h;

    invoke-direct {v1, p0}, Lcom/taobao/accs/net/h;-><init>(Lcom/taobao/accs/net/g;)V

    invoke-virtual {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;->addListener(Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/taobao/accs/net/g;->a(Ljava/lang/String;)Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lanet/channel/strategy/IConnStrategy;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/taobao/accs/net/g;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/g;->a(Ljava/util/List;)Lanet/channel/strategy/IConnStrategy;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Lanet/channel/strategy/IConnStrategy;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;)",
            "Lanet/channel/strategy/IConnStrategy;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1f

    .line 76
    :cond_a
    iget v1, p0, Lcom/taobao/accs/net/g;->a:I

    if-ltz v1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_16

    .line 77
    :cond_14
    iput v0, p0, Lcom/taobao/accs/net/g;->a:I

    .line 80
    :cond_16
    iget v0, p0, Lcom/taobao/accs/net/g;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/IConnStrategy;

    return-object p1

    .line 72
    :cond_1f
    :goto_1f
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "HttpDnsProvider"

    const-string v1, "strategys null or 0"

    invoke-static {v0, v1, p1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .line 47
    iget v0, p0, Lcom/taobao/accs/net/g;->a:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/taobao/accs/net/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 48
    :cond_c
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 50
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 51
    iget-object v0, p0, Lcom/taobao/accs/net/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_25
    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IConnStrategy;

    .line 53
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v2

    sget-object v3, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne v2, v3, :cond_25

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 56
    iget-object v1, p0, Lcom/taobao/accs/net/g;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 62
    :cond_4d
    iget-object p1, p0, Lcom/taobao/accs/net/g;->b:Ljava/util/List;

    return-object p1
.end method

.method public b()V
    .registers 4

    .line 88
    iget v0, p0, Lcom/taobao/accs/net/g;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/net/g;->a:I

    .line 89
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStrategyPos StrategyPos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/accs/net/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HttpDnsProvider"

    invoke-static {v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 100
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p1}, Lanet/channel/strategy/IStrategyInstance;->forceRefreshStrategy(Ljava/lang/String;)V

    return-void
.end method

.method public c()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/taobao/accs/net/g;->a:I

    return v0
.end method
