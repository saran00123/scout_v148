.class Lanet/channel/strategy/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lanet/channel/strategy/StrategyInfoHolder;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lanet/channel/strategy/d;->b:Lanet/channel/strategy/StrategyInfoHolder;

    iput-object p2, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    :try_start_0
    const-string v0, "awcn.StrategyInfoHolder"

    const-string/jumbo v1, "start loading strategy files"

    const/4 v2, 0x0

    .line 104
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    invoke-static {}, Lanet/channel/AwcnConfig;->isAsyncLoadStrategyEnable()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_4d

    const-string v3, "awcn.StrategyInfoHolder"

    const-string v6, "load strategy async"

    .line 108
    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v4, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v3, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 111
    iget-object v3, p0, Lanet/channel/strategy/d;->b:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v6, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;Z)V

    :cond_2f
    const-string v3, "StrategyConfig"

    .line 115
    invoke-static {v3, v4}, Lanet/channel/strategy/m;->a(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/strategy/StrategyConfig;

    if-eqz v3, :cond_4d

    .line 117
    invoke-virtual {v3}, Lanet/channel/strategy/StrategyConfig;->b()V

    .line 118
    iget-object v6, p0, Lanet/channel/strategy/d;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v3, v6}, Lanet/channel/strategy/StrategyConfig;->a(Lanet/channel/strategy/StrategyInfoHolder;)V

    .line 119
    iget-object v6, p0, Lanet/channel/strategy/d;->b:Lanet/channel/strategy/StrategyInfoHolder;

    monitor-enter v6
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_9c

    .line 120
    :try_start_44
    iget-object v7, p0, Lanet/channel/strategy/d;->b:Lanet/channel/strategy/StrategyInfoHolder;

    iput-object v3, v7, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    .line 121
    monitor-exit v6

    goto :goto_4d

    :catchall_4a
    move-exception v0

    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v0

    .line 126
    :cond_4d
    :goto_4d
    invoke-static {}, Lanet/channel/strategy/m;->b()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_54

    return-void

    :cond_54
    move v6, v2

    move v7, v6

    .line 130
    :goto_56
    array-length v8, v3

    const/4 v9, 0x2

    if-ge v6, v8, :cond_83

    if-ge v7, v9, :cond_83

    .line 131
    aget-object v8, v3, v6

    .line 132
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_65

    goto :goto_80

    .line 136
    :cond_65
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 137
    iget-object v9, p0, Lanet/channel/strategy/d;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_80

    const-string v9, "StrategyConfig"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_80

    .line 138
    iget-object v9, p0, Lanet/channel/strategy/d;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v9, v8, v2}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;Z)V

    add-int/lit8 v7, v7, 0x1

    :cond_80
    :goto_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    :cond_83
    const-string v3, "awcn.StrategyInfoHolder"

    const-string v6, "end loading strategy files"

    .line 142
    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "total cost"

    aput-object v8, v7, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v3, v6, v4, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_9c} :catch_9c

    :catch_9c
    return-void
.end method
