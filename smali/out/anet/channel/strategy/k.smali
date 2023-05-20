.class Lanet/channel/strategy/k;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lanet/channel/strategy/IPConnStrategy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/strategy/StrategyList;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyList;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lanet/channel/strategy/k;->a:Lanet/channel/strategy/StrategyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/strategy/IPConnStrategy;Lanet/channel/strategy/IPConnStrategy;)I
    .registers 6

    .line 193
    iget-object v0, p0, Lanet/channel/strategy/k;->a:Lanet/channel/strategy/StrategyList;

    invoke-static {v0}, Lanet/channel/strategy/StrategyList;->a(Lanet/channel/strategy/StrategyList;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/ConnHistoryItem;

    .line 194
    iget-object v1, p0, Lanet/channel/strategy/k;->a:Lanet/channel/strategy/StrategyList;

    invoke-static {v1}, Lanet/channel/strategy/StrategyList;->a(Lanet/channel/strategy/StrategyList;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/ConnHistoryItem;

    .line 196
    invoke-virtual {v0}, Lanet/channel/strategy/ConnHistoryItem;->a()I

    move-result v0

    .line 197
    invoke-virtual {v1}, Lanet/channel/strategy/ConnHistoryItem;->a()I

    move-result v1

    if-eq v0, v1, :cond_34

    sub-int/2addr v0, v1

    return v0

    .line 201
    :cond_34
    iget v0, p1, Lanet/channel/strategy/IPConnStrategy;->a:I

    iget v1, p2, Lanet/channel/strategy/IPConnStrategy;->a:I

    if-eq v0, v1, :cond_40

    .line 202
    iget p1, p1, Lanet/channel/strategy/IPConnStrategy;->a:I

    iget p2, p2, Lanet/channel/strategy/IPConnStrategy;->a:I

    :goto_3e
    sub-int/2addr p1, p2

    return p1

    .line 204
    :cond_40
    iget-object p1, p1, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    iget p1, p1, Lanet/channel/strategy/ConnProtocol;->isHttp:I

    iget-object p2, p2, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    iget p2, p2, Lanet/channel/strategy/ConnProtocol;->isHttp:I

    goto :goto_3e
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 190
    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    check-cast p2, Lanet/channel/strategy/IPConnStrategy;

    invoke-virtual {p0, p1, p2}, Lanet/channel/strategy/k;->a(Lanet/channel/strategy/IPConnStrategy;Lanet/channel/strategy/IPConnStrategy;)I

    move-result p1

    return p1
.end method
