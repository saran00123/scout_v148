.class Lanet/channel/strategy/StrategyConfig;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_RESULT:Ljava/lang/String; = "No_Result"


# instance fields
.field private a:Lanet/channel/strategy/utils/SerialLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lanet/channel/strategy/utils/SerialLruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient c:Lanet/channel/strategy/StrategyInfoHolder;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    .line 23
    iput-object v0, p0, Lanet/channel/strategy/StrategyConfig;->b:Ljava/util/Map;

    .line 24
    iput-object v0, p0, Lanet/channel/strategy/StrategyConfig;->c:Lanet/channel/strategy/StrategyInfoHolder;

    return-void
.end method


# virtual methods
.method a()Lanet/channel/strategy/StrategyConfig;
    .registers 5

    .line 30
    new-instance v0, Lanet/channel/strategy/StrategyConfig;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyConfig;-><init>()V

    .line 31
    monitor-enter p0

    .line 32
    :try_start_6
    new-instance v1, Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v2, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(Ljava/util/LinkedHashMap;I)V

    iput-object v1, v0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    .line 33
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lanet/channel/strategy/StrategyConfig;->b:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lanet/channel/strategy/StrategyConfig;->b:Ljava/util/Map;

    .line 34
    iget-object v1, p0, Lanet/channel/strategy/StrategyConfig;->c:Lanet/channel/strategy/StrategyInfoHolder;

    iput-object v1, v0, Lanet/channel/strategy/StrategyConfig;->c:Lanet/channel/strategy/StrategyInfoHolder;

    .line 35
    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    invoke-static {p1}, Lanet/channel/strategy/utils/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3b

    .line 116
    :cond_e
    monitor-enter p0

    .line 117
    :try_start_f
    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/utils/SerialLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_20

    .line 119
    iget-object v2, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    const-string v3, "No_Result"

    invoke-virtual {v2, p1, v3}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_38

    if-nez v0, :cond_2e

    .line 124
    iget-object v1, p0, Lanet/channel/strategy/StrategyConfig;->c:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;Z)V

    goto :goto_37

    :cond_2e
    const-string p1, "No_Result"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    move-object v0, v1

    :cond_37
    :goto_37
    return-object v0

    :catchall_38
    move-exception p1

    .line 121
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1

    :cond_3b
    :goto_3b
    return-object v1
.end method

.method a(Lanet/channel/strategy/StrategyInfoHolder;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lanet/channel/strategy/StrategyConfig;->c:Lanet/channel/strategy/StrategyInfoHolder;

    return-void
.end method

.method a(Lanet/channel/strategy/l$d;)V
    .registers 10

    .line 54
    iget-object v0, p1, Lanet/channel/strategy/l$d;->b:[Lanet/channel/strategy/l$b;

    if-nez v0, :cond_5

    return-void

    .line 58
    :cond_5
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    .line 61
    :goto_a
    :try_start_a
    iget-object v4, p1, Lanet/channel/strategy/l$d;->b:[Lanet/channel/strategy/l$b;

    array-length v4, v4

    if-ge v2, v4, :cond_75

    .line 62
    iget-object v4, p1, Lanet/channel/strategy/l$d;->b:[Lanet/channel/strategy/l$b;

    aget-object v4, v4, v2

    .line 63
    iget-boolean v5, v4, Lanet/channel/strategy/l$b;->j:Z

    if-eqz v5, :cond_1f

    .line 64
    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v4, v4, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lanet/channel/strategy/utils/SerialLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 68
    :cond_1f
    iget-object v5, v4, Lanet/channel/strategy/l$b;->d:Ljava/lang/String;

    if-eqz v5, :cond_32

    if-nez v3, :cond_2a

    .line 70
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 72
    :cond_2a
    iget-object v5, v4, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    iget-object v4, v4, Lanet/channel/strategy/l$b;->d:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    :cond_32
    const-string v5, "http"

    .line 77
    iget-object v6, v4, Lanet/channel/strategy/l$b;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_50

    const-string v5, "https"

    iget-object v6, v4, Lanet/channel/strategy/l$b;->c:Ljava/lang/String;

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 79
    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v6, v4, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    const-string v7, "No_Result"

    invoke-virtual {v5, v6, v7}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    .line 81
    :cond_50
    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    iget-object v6, v4, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    iget-object v7, v4, Lanet/channel/strategy/l$b;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_59
    iget-object v5, v4, Lanet/channel/strategy/l$b;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 86
    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->b:Ljava/util/Map;

    iget-object v6, v4, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    iget-object v4, v4, Lanet/channel/strategy/l$b;->e:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 88
    :cond_6b
    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->b:Ljava/util/Map;

    iget-object v4, v4, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_75
    if-eqz v3, :cond_b5

    .line 94
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    iget-object v4, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v4, v3}, Lanet/channel/strategy/utils/SerialLruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 97
    iget-object v4, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v5, v3}, Lanet/channel/strategy/utils/SerialLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    .line 99
    :cond_a9
    iget-object v3, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "No_Result"

    invoke-virtual {v3, v2, v4}, Lanet/channel/strategy/utils/SerialLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    .line 103
    :cond_b5
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_a .. :try_end_b6} :catchall_e9

    const/4 p1, 0x1

    .line 104
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_e8

    const/4 v2, 0x2

    .line 105
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "SchemeMap"

    aput-object v4, v3, v0

    iget-object v4, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    invoke-virtual {v4}, Lanet/channel/strategy/utils/SerialLruCache;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    const-string v4, "awcn.StrategyConfig"

    const-string v5, ""

    invoke-static {v4, v5, v1, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "UnitMap"

    aput-object v3, v2, v0

    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "awcn.StrategyConfig"

    const-string v0, ""

    invoke-static {p1, v0, v1, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e8
    return-void

    :catchall_e9
    move-exception p1

    .line 103
    :try_start_ea
    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw p1
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 140
    :cond_8
    monitor-enter p0

    .line 141
    :try_start_9
    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    .line 142
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw p1
.end method

.method b()V
    .registers 3

    .line 44
    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    if-nez v0, :cond_d

    .line 45
    new-instance v0, Lanet/channel/strategy/utils/SerialLruCache;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lanet/channel/strategy/utils/SerialLruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyConfig;->a:Lanet/channel/strategy/utils/SerialLruCache;

    .line 47
    :cond_d
    iget-object v0, p0, Lanet/channel/strategy/StrategyConfig;->b:Ljava/util/Map;

    if-nez v0, :cond_18

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyConfig;->b:Ljava/util/Map;

    :cond_18
    return-void
.end method
