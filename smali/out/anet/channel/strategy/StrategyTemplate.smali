.class public Lanet/channel/strategy/StrategyTemplate;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyTemplate$a;
    }
.end annotation


# instance fields
.field templateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/ConnProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyTemplate;->templateMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lanet/channel/strategy/StrategyTemplate;
    .registers 1

    .line 15
    sget-object v0, Lanet/channel/strategy/StrategyTemplate$a;->a:Lanet/channel/strategy/StrategyTemplate;

    return-object v0
.end method


# virtual methods
.method public getConnProtocol(Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;
    .registers 3

    .line 37
    iget-object v0, p0, Lanet/channel/strategy/StrategyTemplate;->templateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/ConnProtocol;

    return-object p1
.end method

.method public registerConnProtocol(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    .registers 5

    if-eqz p2, :cond_18

    .line 24
    iget-object v0, p0, Lanet/channel/strategy/StrategyTemplate;->templateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :try_start_7
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    .line 28
    instance-of v1, v0, Lanet/channel/strategy/g;

    if-eqz v1, :cond_18

    .line 29
    check-cast v0, Lanet/channel/strategy/g;

    iget-object v0, v0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/a;

    invoke-virtual {v0, p1, p2}, Lanet/channel/strategy/a;->a(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    return-void
.end method
