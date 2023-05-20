.class Lanet/channel/strategy/a;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IPConnStrategy;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 107
    new-instance v0, Lanet/channel/strategy/b;

    invoke-direct {v0, p0, p1, p2}, Lanet/channel/strategy/b;-><init>(Lanet/channel/strategy/a;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/util/List;
    .registers 11

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    invoke-static {p1}, Lanet/channel/strategy/utils/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 33
    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_90

    :cond_18
    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_32

    .line 38
    new-array v1, v3, [Ljava/lang/Object;

    const-string v5, "host"

    aput-object v5, v1, v2

    aput-object p1, v1, v0

    const-string v5, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v6, "try resolve ip with local dns"

    invoke-static {v5, v6, v4, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_32
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 42
    iget-object v5, p0, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    .line 44
    iget-object v5, p0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    monitor-enter v5

    .line 45
    :try_start_3f
    iget-object v6, p0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 46
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v7, p0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-direct {p0, p1, v6}, Lanet/channel/strategy/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5b

    .line 50
    :cond_55
    iget-object v6, p0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 52
    :goto_5b
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_3f .. :try_end_5c} :catchall_69

    if-eqz v6, :cond_6c

    .line 55
    :try_start_5e
    monitor-enter v6
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_5f} :catch_6c

    const-wide/16 v7, 0x1f4

    .line 56
    :try_start_61
    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 57
    monitor-exit v6

    goto :goto_6c

    :catchall_66
    move-exception v5

    monitor-exit v6
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_66

    :try_start_68
    throw v5
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_69} :catch_6c

    :catchall_69
    move-exception p1

    .line 52
    :try_start_6a
    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p1

    .line 63
    :catch_6c
    :cond_6c
    :goto_6c
    iget-object v5, p0, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7f

    .line 64
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p1, v5, :cond_7f

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    :cond_7f
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "strategyList"

    aput-object v5, v3, v2

    aput-object p1, v3, v0

    const-string p1, "awcn.LocalDnsStrategyTable"

    const-string v0, "get local strategy"

    invoke-static {p1, v0, v4, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 34
    :cond_90
    :goto_90
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method a(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    .registers 12

    .line 72
    iget-object v0, p0, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_63

    .line 73
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    .line 75
    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v1

    invoke-virtual {v1, p2}, Lanet/channel/strategy/ConnProtocol;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_2b
    const/4 v0, 0x0

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/IPConnStrategy;

    invoke-virtual {v1}, Lanet/channel/strategy/IPConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p0, p2}, Lanet/channel/strategy/a;->a(Lanet/channel/strategy/ConnProtocol;)Z

    move-result v1

    if-nez v1, :cond_3f

    const/16 v1, 0x50

    goto :goto_41

    :cond_3f
    const/16 v1, 0x1bb

    :goto_41
    move v3, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0xafc8

    move-object v4, p2

    .line 81
    invoke-static/range {v2 .. v8}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    const/4 v1, 0x2

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "strategyList"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "awcn.LocalDnsStrategyTable"

    const-string v0, "setProtocolForHost"

    invoke-static {p1, v0, p2, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_63
    return-void
.end method

.method a(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .registers 6

    .line 88
    iget-boolean v0, p3, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    if-nez v0, :cond_3e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-boolean p3, p3, Lanet/channel/strategy/ConnEvent;->isAccs:Z

    if-eqz p3, :cond_f

    goto :goto_3e

    .line 92
    :cond_f
    iget-object p3, p0, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_3e

    .line 93
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p3, v0, :cond_3e

    .line 94
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_21

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_21

    .line 100
    :cond_31
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 101
    iget-object p2, p0, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    :goto_3e
    return-void
.end method

.method a(Lanet/channel/strategy/ConnProtocol;)Z
    .registers 4

    .line 145
    iget-object v0, p1, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p1, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string v1, "h2s"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object p1, p1, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method
