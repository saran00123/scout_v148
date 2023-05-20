.class Lanet/channel/strategy/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lanet/channel/strategy/a;


# direct methods
.method constructor <init>(Lanet/channel/strategy/a;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 107
    iput-object p1, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iput-object p2, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 111
    :try_start_4
    iget-object v4, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 114
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 115
    invoke-static {}, Lanet/channel/strategy/StrategyTemplate;->getInstance()Lanet/channel/strategy/StrategyTemplate;

    move-result-object v5

    iget-object v6, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lanet/channel/strategy/StrategyTemplate;->getConnProtocol(Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v7

    if-eqz v7, :cond_3b

    .line 117
    iget-object v5, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    .line 1022
    invoke-virtual {v5, v7}, Lanet/channel/strategy/a;->a(Lanet/channel/strategy/ConnProtocol;)Z

    move-result v5

    if-nez v5, :cond_2a

    const/16 v5, 0x50

    goto :goto_2c

    :cond_2a
    const/16 v5, 0x1bb

    :goto_2c
    move v6, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const v11, 0xafc8

    move-object v5, v4

    .line 118
    invoke-static/range {v5 .. v11}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    const/16 v6, 0x50

    .line 120
    sget-object v7, Lanet/channel/strategy/ConnProtocol;->HTTP:Lanet/channel/strategy/ConnProtocol;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v11}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x1bb

    .line 121
    sget-object v7, Lanet/channel/strategy/ConnProtocol;->HTTPS:Lanet/channel/strategy/ConnProtocol;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v11}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v5, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v5, v5, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {v3}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v5

    if-eqz v5, :cond_8b

    const-string v5, "awcn.LocalDnsStrategyTable"

    const-string v6, "resolve ip by local dns"

    const/4 v7, 0x6

    .line 125
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "host"

    aput-object v8, v7, v0

    iget-object v8, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    aput-object v8, v7, v3

    const-string v8, "ip"

    aput-object v8, v7, v1

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v4, 0x4

    const-string v8, "list"

    aput-object v8, v7, v4

    const/4 v4, 0x5

    aput-object v12, v7, v4

    invoke-static {v5, v6, v2, v7}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8b} :catch_ac
    .catchall {:try_start_4 .. :try_end_8b} :catchall_aa

    .line 133
    :cond_8b
    iget-object v0, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v0, v0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 134
    :try_start_90
    iget-object v1, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v1, v1, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_a7

    .line 136
    iget-object v1, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_9d
    iget-object v0, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit v1

    goto :goto_e6

    :catchall_a4
    move-exception v0

    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_a4

    throw v0

    :catchall_a7
    move-exception v1

    .line 135
    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1

    :catchall_aa
    move-exception v0

    goto :goto_ed

    .line 128
    :catch_ac
    :try_start_ac
    invoke-static {v3}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_c3

    const-string v4, "awcn.LocalDnsStrategyTable"

    const-string v5, "resolve ip by local dns failed"

    .line 129
    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "host"

    aput-object v6, v1, v0

    iget-object v0, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {v4, v5, v2, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_c3
    iget-object v0, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v0, v0, Lanet/channel/strategy/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ce
    .catchall {:try_start_ac .. :try_end_ce} :catchall_aa

    .line 133
    iget-object v0, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v0, v0, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 134
    :try_start_d3
    iget-object v1, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v1, v1, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_d3 .. :try_end_dd} :catchall_ea

    .line 136
    iget-object v1, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_e0
    iget-object v0, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit v1

    :goto_e6
    return-void

    :catchall_e7
    move-exception v0

    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e0 .. :try_end_e9} :catchall_e7

    throw v0

    :catchall_ea
    move-exception v1

    .line 135
    :try_start_eb
    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    throw v1

    .line 133
    :goto_ed
    iget-object v1, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v1, v1, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 134
    :try_start_f2
    iget-object v2, p0, Lanet/channel/strategy/b;->c:Lanet/channel/strategy/a;

    iget-object v2, v2, Lanet/channel/strategy/a;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lanet/channel/strategy/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v1
    :try_end_fc
    .catchall {:try_start_f2 .. :try_end_fc} :catchall_109

    .line 136
    iget-object v2, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 137
    :try_start_ff
    iget-object v1, p0, Lanet/channel/strategy/b;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit v2
    :try_end_105
    .catchall {:try_start_ff .. :try_end_105} :catchall_106

    .line 139
    throw v0

    :catchall_106
    move-exception v0

    .line 138
    :try_start_107
    monitor-exit v2
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    throw v0

    :catchall_109
    move-exception v0

    .line 135
    :try_start_10a
    monitor-exit v1
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v0
.end method
