.class Lanet/channel/strategy/g;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/IStrategyInstance;
.implements Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;


# instance fields
.field a:Z

.field b:Lanet/channel/strategy/StrategyInfoHolder;

.field c:J

.field d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lanet/channel/strategy/IStrategyListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lanet/channel/strategy/IStrategyFilter;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lanet/channel/strategy/g;->a:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lanet/channel/strategy/g;->c:J

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 41
    new-instance v0, Lanet/channel/strategy/h;

    invoke-direct {v0, p0}, Lanet/channel/strategy/h;-><init>(Lanet/channel/strategy/g;)V

    iput-object v0, p0, Lanet/channel/strategy/g;->e:Lanet/channel/strategy/IStrategyFilter;

    return-void
.end method

.method private a()Z
    .registers 6

    .line 277
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 278
    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Lanet/channel/strategy/g;->a:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "StrategyCenter not initialized"

    const-string v4, "isInitialized"

    invoke-static {v1, v0, v4, v3}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_19
    return v1
.end method

.method static synthetic a(Lanet/channel/strategy/g;)Z
    .registers 1

    .line 34
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public forceRefreshStrategy(Ljava/lang/String;)V
    .registers 7

    .line 221
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_29

    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 225
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "host"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v3, "awcn.StrategyCenter"

    const-string v4, "force refresh strategy"

    invoke-static {v3, v4, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;Z)V

    :cond_29
    :goto_29
    return-void
.end method

.method public getCNameByHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 138
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 142
    :cond_d
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->getCnameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    :goto_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClientIp()Ljava/lang/String;
    .registers 2

    .line 252
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 255
    :cond_9
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    iget-object v0, v0, Lanet/channel/strategy/StrategyTable;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 176
    iget-object v0, p0, Lanet/channel/strategy/g;->e:Lanet/channel/strategy/IStrategyFilter;

    invoke-virtual {p0, p1, v0}, Lanet/channel/strategy/g;->getConnStrategyListByHost(Ljava/lang/String;Lanet/channel/strategy/IStrategyFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getConnStrategyListByHost(Ljava/lang/String;Lanet/channel/strategy/IStrategyFilter;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/IStrategyFilter;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b3

    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_b3

    .line 184
    :cond_e
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->getCnameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    move-object p1, v0

    .line 189
    :cond_1f
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->queryByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 191
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/a;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 194
    :cond_37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "result"

    const/4 v4, 0x3

    const-string v5, "host"

    const/4 v6, 0x0

    const-string v7, "getConnStrategyListByHost"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_a7

    if-nez p2, :cond_4b

    goto :goto_a7

    .line 199
    :cond_4b
    invoke-static {}, Lanet/channel/AwcnConfig;->isIpv6Enable()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 200
    invoke-static {}, Lanet/channel/AwcnConfig;->isIpv6BlackListEnable()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v1

    invoke-static {}, Lanet/channel/AwcnConfig;->getIpv6BlackListTtl()J

    move-result-wide v10

    invoke-virtual {v1, p1, v10, v11}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_68

    goto :goto_6a

    :cond_68
    move v1, v8

    goto :goto_6b

    :cond_6a
    :goto_6a
    move v1, v9

    .line 203
    :goto_6b
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    .line 204
    :cond_6f
    :goto_6f
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_95

    .line 205
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lanet/channel/strategy/IConnStrategy;

    .line 206
    invoke-interface {p2, v11}, Lanet/channel/strategy/IStrategyFilter;->accept(Lanet/channel/strategy/IConnStrategy;)Z

    move-result v12

    if-nez v12, :cond_85

    .line 207
    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    goto :goto_6f

    :cond_85
    if-eqz v1, :cond_6f

    .line 208
    invoke-interface {v11}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6f

    .line 210
    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    goto :goto_6f

    .line 214
    :cond_95
    invoke-static {v9}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 215
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v8

    aput-object v3, p2, v9

    aput-object v0, p2, v2

    invoke-static {v7, v6, v5, p2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a6
    return-object v0

    .line 195
    :cond_a7
    :goto_a7
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v8

    aput-object v3, p2, v9

    aput-object v0, p2, v2

    invoke-static {v7, v6, v5, p2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 181
    :cond_b3
    :goto_b3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public getFormalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const-string v0, "raw"

    .line 152
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "awcn.StrategyCenter"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_1d

    .line 154
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "URL"

    aput-object v1, v0, v2

    aput-object p1, v0, v5

    const-string/jumbo p1, "url is invalid."

    invoke-static {v4, p1, v6, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    .line 158
    :cond_1d
    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v7

    .line 160
    :try_start_21
    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lanet/channel/strategy/g;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, ":"

    const-string v9, "//"

    .line 162
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v1, v9}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    :cond_47
    invoke-static {v5}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, ""

    const/4 v8, 0x4

    .line 166
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v2

    const/16 v9, 0x80

    invoke-static {p1, v9}, Lanet/channel/util/StringUtils;->simplifyString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v5

    const-string v10, "ret"

    aput-object v10, v8, v3

    const/4 v10, 0x3

    .line 167
    invoke-static {v7, v9}, Lanet/channel/util/StringUtils;->simplifyString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 166
    invoke-static {v4, v1, v6, v8}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6a} :catch_6b

    goto :goto_77

    :catch_6b
    move-exception v1

    .line 170
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p1, v3, v5

    const-string p1, "getFormalizeUrl failed"

    invoke-static {v4, p1, v6, v1, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_77
    :goto_77
    return-object v7
.end method

.method public getSchemeByHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, v0}, Lanet/channel/strategy/g;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 116
    :cond_8
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p2

    .line 120
    :cond_f
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_21

    :cond_20
    move-object p2, v0

    :goto_21
    if-nez p2, :cond_2d

    .line 1016
    sget-object p2, Lanet/channel/strategy/c$a;->a:Lanet/channel/strategy/c;

    .line 126
    invoke-virtual {p2, p1}, Lanet/channel/strategy/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2d

    const-string p2, "http"

    :cond_2d
    const/4 v0, 0x4

    .line 132
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "host"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    const-string v2, "scheme"

    aput-object v2, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "awcn.StrategyCenter"

    const-string v2, "getSchemeByHost"

    invoke-static {p1, v2, v1, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public getUnitByHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 245
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 248
    :cond_8
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized initialize(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    .line 64
    :try_start_1
    iget-boolean v0, p0, Lanet/channel/strategy/g;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_41

    if-nez v0, :cond_3f

    if-nez p1, :cond_8

    goto :goto_3f

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_a
    const-string v2, "awcn.StrategyCenter"

    const-string v3, "StrategyCenter initialize started."

    .line 68
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-static {p1}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->setContext(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Lanet/channel/strategy/m;->a(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object p1

    invoke-virtual {p1, p0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->addListener(Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;)V

    .line 73
    invoke-static {}, Lanet/channel/strategy/StrategyInfoHolder;->a()Lanet/channel/strategy/StrategyInfoHolder;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lanet/channel/strategy/g;->a:Z

    const-string p1, "awcn.StrategyCenter"

    const-string v2, "StrategyCenter initialize finished."

    .line 75
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v1, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_33
    .catchall {:try_start_a .. :try_end_32} :catchall_41

    goto :goto_3d

    :catch_33
    move-exception p1

    :try_start_34
    const-string v2, "awcn.StrategyCenter"

    const-string v3, "StrategyCenter initialize failed."

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_41

    .line 79
    :goto_3d
    monitor-exit p0

    return-void

    .line 65
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V
    .registers 7

    .line 260
    invoke-direct {p0}, Lanet/channel/strategy/g;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_2a

    .line 265
    instance-of v0, p2, Lanet/channel/strategy/IPConnStrategy;

    if-eqz v0, :cond_2a

    .line 266
    move-object v0, p2

    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 267
    iget v1, v0, Lanet/channel/strategy/IPConnStrategy;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 268
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    iget-object v0, v0, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/a;

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/a;->a(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    goto :goto_2a

    .line 269
    :cond_1d
    iget v0, v0, Lanet/channel/strategy/IPConnStrategy;->b:I

    if-nez v0, :cond_2a

    .line 270
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lanet/channel/strategy/StrategyTable;->a(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public onEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    .registers 9

    .line 286
    iget v0, p1, Lanet/channel/strategy/dispatch/DispatchEvent;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    .line 287
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "awcn.StrategyCenter"

    const-string v4, "receive amdc event"

    invoke-static {v3, v4, v2, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object p1, p1, Lanet/channel/strategy/dispatch/DispatchEvent;->extraObject:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lanet/channel/strategy/l;->a(Lorg/json/JSONObject;)Lanet/channel/strategy/l$d;

    move-result-object p1

    if-nez p1, :cond_1f

    return-void

    .line 292
    :cond_1f
    iget-object v1, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v1, p1}, Lanet/channel/strategy/StrategyInfoHolder;->a(Lanet/channel/strategy/l$d;)V

    .line 293
    invoke-virtual {p0}, Lanet/channel/strategy/g;->saveData()V

    .line 294
    iget-object v1, p0, Lanet/channel/strategy/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/IStrategyListener;

    .line 296
    :try_start_39
    invoke-interface {v4, p1}, Lanet/channel/strategy/IStrategyListener;->onStrategyUpdated(Lanet/channel/strategy/l$d;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_2d

    :catch_3d
    move-exception v4

    .line 298
    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "onStrategyUpdated failed"

    invoke-static {v3, v6, v2, v4, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2d

    :cond_46
    return-void
.end method

.method public registerListener(Lanet/channel/strategy/IStrategyListener;)V
    .registers 6

    const/4 v0, 0x2

    .line 231
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "listener"

    aput-object v2, v0, v1

    iget-object v1, p0, Lanet/channel/strategy/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "awcn.StrategyCenter"

    const-string v2, "registerListener"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1c

    .line 233
    iget-object v0, p0, Lanet/channel/strategy/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_1c
    return-void
.end method

.method public declared-synchronized saveData()V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "awcn.StrategyCenter"

    const-string v1, "saveData"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 308
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 310
    iget-wide v2, p0, Lanet/channel/strategy/g;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_26

    .line 311
    iput-wide v0, p0, Lanet/channel/strategy/g;->c:J

    .line 313
    new-instance v0, Lanet/channel/strategy/i;

    invoke-direct {v0, p0}, Lanet/channel/strategy/i;-><init>(Lanet/channel/strategy/g;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;J)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 322
    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchEnv()V
    .registers 2

    monitor-enter p0

    .line 82
    :try_start_1
    invoke-static {}, Lanet/channel/strategy/m;->a()V

    .line 83
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->switchENV()V

    .line 84
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    if-eqz v0, :cond_1a

    .line 85
    iget-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->b()V

    .line 86
    invoke-static {}, Lanet/channel/strategy/StrategyInfoHolder;->a()Lanet/channel/strategy/StrategyInfoHolder;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 88
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterListener(Lanet/channel/strategy/IStrategyListener;)V
    .registers 6

    const/4 v0, 0x2

    .line 239
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "listener"

    aput-object v2, v0, v1

    iget-object v1, p0, Lanet/channel/strategy/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "awcn.StrategyCenter"

    const-string/jumbo v2, "unregisterListener"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lanet/channel/strategy/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
