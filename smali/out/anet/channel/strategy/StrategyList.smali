.class Lanet/channel/strategy/StrategyList;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyList$Predicate;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lanet/channel/strategy/ConnHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private transient d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    .line 27
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyList;->c:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    .line 27
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyList;->c:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    .line 36
    iput-object p1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/util/Collection;Lanet/channel/strategy/StrategyList$Predicate;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lanet/channel/strategy/StrategyList$Predicate<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 219
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 220
    invoke-interface {p1, v3}, Lanet/channel/strategy/StrategyList$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 225
    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-ne v1, p0, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0
.end method

.method private a()Ljava/util/Comparator;
    .registers 2

    .line 189
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    if-nez v0, :cond_b

    .line 190
    new-instance v0, Lanet/channel/strategy/k;

    invoke-direct {v0, p0}, Lanet/channel/strategy/k;-><init>(Lanet/channel/strategy/StrategyList;)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    .line 209
    :cond_b
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic a(Lanet/channel/strategy/StrategyList;)Ljava/util/Map;
    .registers 1

    .line 22
    iget-object p0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    return-object p0
.end method

.method private a(Ljava/lang/String;ILanet/channel/strategy/l$a;)V
    .registers 7

    .line 130
    invoke-static {p3}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/l$a;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    new-instance v2, Lanet/channel/strategy/j;

    invoke-direct {v2, p0, p3, p1, v0}, Lanet/channel/strategy/j;-><init>(Lanet/channel/strategy/StrategyList;Lanet/channel/strategy/l$a;Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    invoke-static {v1, v2}, Lanet/channel/strategy/StrategyList;->a(Ljava/util/Collection;Lanet/channel/strategy/StrategyList$Predicate;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2e

    .line 140
    iget-object p1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    .line 141
    iget v0, p3, Lanet/channel/strategy/l$a;->c:I

    iput v0, p1, Lanet/channel/strategy/IPConnStrategy;->cto:I

    .line 142
    iget v0, p3, Lanet/channel/strategy/l$a;->d:I

    iput v0, p1, Lanet/channel/strategy/IPConnStrategy;->rto:I

    .line 143
    iget p3, p3, Lanet/channel/strategy/l$a;->f:I

    iput p3, p1, Lanet/channel/strategy/IPConnStrategy;->heartbeat:I

    .line 144
    iput p2, p1, Lanet/channel/strategy/IPConnStrategy;->a:I

    .line 145
    iput v1, p1, Lanet/channel/strategy/IPConnStrategy;->b:I

    .line 146
    iput-boolean v1, p1, Lanet/channel/strategy/IPConnStrategy;->c:Z

    goto :goto_5f

    .line 148
    :cond_2e
    invoke-static {p1, p3}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;Lanet/channel/strategy/l$a;)Lanet/channel/strategy/IPConnStrategy;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 150
    iput p2, p1, Lanet/channel/strategy/IPConnStrategy;->a:I

    .line 151
    iput v1, p1, Lanet/channel/strategy/IPConnStrategy;->b:I

    .line 152
    iget-object p2, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5a

    .line 153
    iget-object p2, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lanet/channel/strategy/ConnHistoryItem;

    invoke-direct {v0}, Lanet/channel/strategy/ConnHistoryItem;-><init>()V

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_5a
    iget-object p2, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    :goto_5f
    return-void
.end method


# virtual methods
.method public checkInit()V
    .registers 5

    .line 40
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    .line 43
    :cond_b
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    if-nez v0, :cond_18

    .line 44
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    .line 48
    :cond_18
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/ConnHistoryItem;

    invoke-virtual {v1}, Lanet/channel/strategy/ConnHistoryItem;->d()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 56
    :cond_3e
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_44
    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 57
    iget-object v2, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 58
    iget-object v2, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lanet/channel/strategy/ConnHistoryItem;

    invoke-direct {v3}, Lanet/channel/strategy/ConnHistoryItem;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 62
    :cond_73
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-direct {p0}, Lanet/channel/strategy/StrategyList;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public getStrategyList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 71
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 75
    :cond_b
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/IPConnStrategy;

    .line 76
    iget-object v4, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/ConnHistoryItem;

    if-eqz v4, :cond_4c

    .line 77
    invoke-virtual {v4}, Lanet/channel/strategy/ConnHistoryItem;->c()Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v4, 0x2

    .line 78
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "strategy"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "awcn.StrategyList"

    const-string/jumbo v5, "strategy ban!"

    invoke-static {v3, v5, v1, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_4c
    if-nez v2, :cond_53

    .line 83
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 85
    :cond_53
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_57
    if-nez v2, :cond_5b

    .line 87
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_5b
    return-object v2
.end method

.method public notifyConnEvent(Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .registers 5

    .line 180
    instance-of v0, p1, Lanet/channel/strategy/IPConnStrategy;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 182
    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    .line 183
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanet/channel/strategy/ConnHistoryItem;

    iget-boolean p2, p2, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    invoke-virtual {p1, p2}, Lanet/channel/strategy/ConnHistoryItem;->a(Z)V

    .line 184
    iget-object p1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    iget-object p2, p0, Lanet/channel/strategy/StrategyList;->d:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2b
    return-void
.end method

.method public shouldRefresh()Z
    .registers 9

    .line 166
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_8
    move v3, v2

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/IPConnStrategy;

    .line 167
    iget-object v6, p0, Lanet/channel/strategy/StrategyList;->b:Ljava/util/Map;

    invoke-virtual {v4}, Lanet/channel/strategy/IPConnStrategy;->getUniqueId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/strategy/ConnHistoryItem;

    invoke-virtual {v6}, Lanet/channel/strategy/ConnHistoryItem;->b()Z

    move-result v6

    if-nez v6, :cond_9

    .line 170
    iget v3, v4, Lanet/channel/strategy/IPConnStrategy;->a:I

    if-nez v3, :cond_32

    move v2, v5

    goto :goto_8

    :cond_32
    move v3, v5

    goto :goto_9

    .line 176
    :cond_34
    iget-boolean v0, p0, Lanet/channel/strategy/StrategyList;->c:Z

    if-eqz v0, :cond_3a

    if-nez v2, :cond_3e

    :cond_3a
    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v5

    :cond_3e
    :goto_3e
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lanet/channel/strategy/l$b;)V
    .registers 8

    .line 91
    iget-object v0, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 92
    iput-boolean v2, v1, Lanet/channel/strategy/IPConnStrategy;->c:Z

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    move v1, v0

    .line 95
    :goto_18
    iget-object v3, p1, Lanet/channel/strategy/l$b;->h:[Lanet/channel/strategy/l$a;

    array-length v3, v3

    if-ge v1, v3, :cond_50

    move v3, v0

    .line 96
    :goto_1e
    iget-object v4, p1, Lanet/channel/strategy/l$b;->f:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_31

    .line 97
    iget-object v4, p1, Lanet/channel/strategy/l$b;->f:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p1, Lanet/channel/strategy/l$b;->h:[Lanet/channel/strategy/l$a;

    aget-object v5, v5, v1

    invoke-direct {p0, v4, v2, v5}, Lanet/channel/strategy/StrategyList;->a(Ljava/lang/String;ILanet/channel/strategy/l$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 99
    :cond_31
    iget-object v3, p1, Lanet/channel/strategy/l$b;->g:[Ljava/lang/String;

    if-eqz v3, :cond_4b

    .line 100
    iput-boolean v2, p0, Lanet/channel/strategy/StrategyList;->c:Z

    move v3, v0

    .line 101
    :goto_38
    iget-object v4, p1, Lanet/channel/strategy/l$b;->g:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4d

    .line 102
    iget-object v4, p1, Lanet/channel/strategy/l$b;->g:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p1, Lanet/channel/strategy/l$b;->h:[Lanet/channel/strategy/l$a;

    aget-object v5, v5, v1

    invoke-direct {p0, v4, v0, v5}, Lanet/channel/strategy/StrategyList;->a(Ljava/lang/String;ILanet/channel/strategy/l$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 105
    :cond_4b
    iput-boolean v0, p0, Lanet/channel/strategy/StrategyList;->c:Z

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 109
    :cond_50
    iget-object v1, p1, Lanet/channel/strategy/l$b;->i:[Lanet/channel/strategy/l$e;

    if-eqz v1, :cond_72

    .line 110
    :goto_54
    iget-object v1, p1, Lanet/channel/strategy/l$b;->i:[Lanet/channel/strategy/l$e;

    array-length v1, v1

    if-ge v0, v1, :cond_72

    .line 111
    iget-object v1, p1, Lanet/channel/strategy/l$b;->i:[Lanet/channel/strategy/l$e;

    aget-object v1, v1, v0

    .line 112
    iget-object v3, v1, Lanet/channel/strategy/l$e;->a:Ljava/lang/String;

    iget-object v4, v1, Lanet/channel/strategy/l$e;->a:Ljava/lang/String;

    .line 113
    invoke-static {v4}, Lanet/channel/strategy/utils/c;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    const/4 v4, -0x1

    goto :goto_6a

    :cond_69
    move v4, v2

    :goto_6a
    iget-object v1, v1, Lanet/channel/strategy/l$e;->b:Lanet/channel/strategy/l$a;

    .line 112
    invoke-direct {p0, v3, v4, v1}, Lanet/channel/strategy/StrategyList;->a(Ljava/lang/String;ILanet/channel/strategy/l$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 119
    :cond_72
    iget-object p1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 120
    :cond_78
    :goto_78
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 121
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    iget-boolean v0, v0, Lanet/channel/strategy/IPConnStrategy;->c:Z

    if-eqz v0, :cond_78

    .line 122
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_78

    .line 126
    :cond_8c
    iget-object p1, p0, Lanet/channel/strategy/StrategyList;->a:Ljava/util/List;

    invoke-direct {p0}, Lanet/channel/strategy/StrategyList;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
