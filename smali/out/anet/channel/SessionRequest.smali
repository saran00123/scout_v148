.class Lanet/channel/SessionRequest;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/SessionRequest$IConnCb;,
        Lanet/channel/SessionRequest$a;,
        Lanet/channel/SessionRequest$c;,
        Lanet/channel/SessionRequest$b;
    }
.end annotation


# instance fields
.field a:Lanet/channel/SessionCenter;

.field b:Lanet/channel/e;

.field c:Lanet/channel/SessionInfo;

.field volatile d:Z

.field volatile e:Lanet/channel/Session;

.field volatile f:Z

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lanet/channel/SessionGetCallback;",
            "Lanet/channel/SessionRequest$c;",
            ">;"
        }
    .end annotation
.end field

.field h:Lanet/channel/statist/SessionConnStat;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private volatile k:Ljava/util/concurrent/Future;

.field private l:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Lanet/channel/SessionCenter;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lanet/channel/SessionRequest;->d:Z

    .line 71
    iput-boolean v0, p0, Lanet/channel/SessionRequest;->f:Z

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionRequest;->l:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/SessionRequest;->j:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lanet/channel/SessionRequest;->a:Lanet/channel/SessionCenter;

    .line 82
    iget-object p1, p2, Lanet/channel/SessionCenter;->g:Lanet/channel/c;

    iget-object v0, p0, Lanet/channel/SessionRequest;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lanet/channel/c;->b(Ljava/lang/String;)Lanet/channel/SessionInfo;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/SessionRequest;->c:Lanet/channel/SessionInfo;

    .line 83
    iget-object p1, p2, Lanet/channel/SessionCenter;->e:Lanet/channel/e;

    iput-object p1, p0, Lanet/channel/SessionRequest;->b:Lanet/channel/e;

    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    const-string v0, "awcn.SessionRequest"

    .line 490
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    .line 492
    :try_start_5
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v3

    if-nez v3, :cond_12

    .line 494
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 497
    :cond_12
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v4

    invoke-virtual {v3}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 499
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_72

    const-string v4, "https"

    .line 500
    invoke-virtual {v3}, Lanet/channel/util/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 501
    invoke-static {}, Lanet/channel/util/c;->b()Z

    move-result v4

    .line 502
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 503
    :cond_36
    :goto_36
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 504
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/strategy/IConnStrategy;

    .line 505
    invoke-interface {v6}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v7

    invoke-static {v7}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v7

    if-nez v7, :cond_4d

    goto :goto_36

    .line 513
    :cond_4d
    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v8

    if-ne v8, v3, :cond_6e

    sget v8, Lanet/channel/entity/c;->c:I

    if-eq p1, v8, :cond_5e

    .line 514
    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->getType()I

    move-result v7

    if-eq v7, p1, :cond_5e

    goto :goto_6e

    :cond_5e
    if-eqz v4, :cond_36

    .line 516
    invoke-interface {v6}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 518
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_36

    .line 515
    :cond_6e
    :goto_6e
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_36

    :cond_72
    const/4 p1, 0x1

    .line 524
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_91

    const-string v3, "[getAvailStrategy]"

    const/4 v4, 0x2

    .line 525
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "strategies"

    aput-object v5, v4, v2

    aput-object v1, v4, p1

    invoke-static {v0, v3, p2, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_88} :catch_89

    goto :goto_91

    :catch_89
    move-exception p1

    .line 529
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {v0, v3, p2, p1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_91
    :goto_91
    return-object v1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/entity/a;",
            ">;"
        }
    .end annotation

    .line 536
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 537
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 539
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 541
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_52

    .line 542
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/IConnStrategy;

    .line 543
    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getRetryTimes()I

    move-result v5

    move v6, v3

    move v3, v1

    :goto_23
    if-gt v3, v5, :cond_4e

    add-int/lit8 v6, v6, 0x1

    .line 546
    new-instance v7, Lanet/channel/entity/a;

    invoke-virtual {p0}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v4}, Lanet/channel/entity/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V

    .line 547
    iput v3, v7, Lanet/channel/entity/a;->b:I

    .line 548
    iput v5, v7, Lanet/channel/entity/a;->c:I

    .line 549
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_11

    :cond_52
    return-object v0
.end method

.method private a(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V
    .registers 9

    .line 556
    invoke-virtual {p2}, Lanet/channel/entity/a;->c()Lanet/channel/entity/ConnType;

    move-result-object v0

    if-eqz p1, :cond_2d

    .line 557
    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 558
    new-instance v0, Lanet/channel/session/TnetSpdySession;

    invoke-direct {v0, p1, p2}, Lanet/channel/session/TnetSpdySession;-><init>(Landroid/content/Context;Lanet/channel/entity/a;)V

    .line 559
    iget-object p1, p0, Lanet/channel/SessionRequest;->a:Lanet/channel/SessionCenter;

    iget-object p1, p1, Lanet/channel/SessionCenter;->d:Lanet/channel/Config;

    invoke-virtual {v0, p1}, Lanet/channel/session/TnetSpdySession;->initConfig(Lanet/channel/Config;)V

    .line 560
    iget-object p1, p0, Lanet/channel/SessionRequest;->c:Lanet/channel/SessionInfo;

    invoke-virtual {v0, p1}, Lanet/channel/session/TnetSpdySession;->initSessionInfo(Lanet/channel/SessionInfo;)V

    .line 561
    iget-object p1, p0, Lanet/channel/SessionRequest;->a:Lanet/channel/SessionCenter;

    iget-object p1, p1, Lanet/channel/SessionCenter;->g:Lanet/channel/c;

    iget-object v1, p0, Lanet/channel/SessionRequest;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lanet/channel/c;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lanet/channel/session/TnetSpdySession;->setTnetPublicKey(I)V

    .line 562
    iput-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    goto :goto_34

    .line 564
    :cond_2d
    new-instance v0, Lanet/channel/session/d;

    invoke-direct {v0, p1, p2}, Lanet/channel/session/d;-><init>(Landroid/content/Context;Lanet/channel/entity/a;)V

    iput-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    :goto_34
    const/16 p1, 0xc

    .line 566
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Host"

    aput-object v1, p1, v0

    invoke-virtual {p0}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/4 v0, 0x2

    const-string v2, "Type"

    aput-object v2, p1, v0

    const/4 v0, 0x3

    invoke-virtual {p2}, Lanet/channel/entity/a;->c()Lanet/channel/entity/ConnType;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x4

    const-string v2, "IP"

    aput-object v2, p1, v0

    const/4 v0, 0x5

    invoke-virtual {p2}, Lanet/channel/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x6

    const-string v2, "Port"

    aput-object v2, p1, v0

    const/4 v0, 0x7

    invoke-virtual {p2}, Lanet/channel/entity/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/16 v0, 0x8

    const-string v2, "heartbeat"

    aput-object v2, p1, v0

    const/16 v0, 0x9

    invoke-virtual {p2}, Lanet/channel/entity/a;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/16 v0, 0xa

    const-string v2, "session"

    aput-object v2, p1, v0

    const/16 v0, 0xb

    iget-object v2, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    aput-object v2, p1, v0

    const-string v0, "awcn.SessionRequest"

    const-string v2, "create connection..."

    invoke-static {v0, v2, p4, p1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    iget-object p1, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1, p3, v2, v3}, Lanet/channel/SessionRequest;->a(Lanet/channel/Session;Lanet/channel/SessionRequest$IConnCb;J)V

    .line 568
    iget-object p1, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    invoke-virtual {p1}, Lanet/channel/Session;->connect()V

    .line 570
    iget-object p1, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    iget p3, p1, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    add-int/2addr p3, v1

    iput p3, p1, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    .line 571
    iget-object p1, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p1, Lanet/channel/statist/SessionConnStat;->startConnect:J

    .line 572
    iget-object p1, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    iget p1, p1, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    if-nez p1, :cond_bf

    .line 573
    iget-object p1, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    invoke-virtual {p2}, Lanet/channel/entity/a;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "firstIp"

    invoke-virtual {p1, p3, p2}, Lanet/channel/statist/SessionConnStat;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_bf
    return-void
.end method

.method private a(Lanet/channel/Session;Lanet/channel/SessionRequest$IConnCb;J)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/16 v0, 0xfff

    .line 581
    new-instance v1, Lanet/channel/f;

    invoke-direct {v1, p0, p2, p3, p4}, Lanet/channel/f;-><init>(Lanet/channel/SessionRequest;Lanet/channel/SessionRequest$IConnCb;J)V

    invoke-virtual {p1, v0, v1}, Lanet/channel/Session;->registerEventcb(ILanet/channel/entity/EventCb;)V

    const/16 p2, 0x700

    .line 615
    new-instance p3, Lanet/channel/g;

    invoke-direct {p3, p0, p1}, Lanet/channel/g;-><init>(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    invoke-virtual {p1, p2, p3}, Lanet/channel/Session;->registerEventcb(ILanet/channel/entity/EventCb;)V

    return-void
.end method

.method static synthetic a(Lanet/channel/SessionRequest;Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V
    .registers 5

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lanet/channel/SessionRequest;->a(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lanet/channel/Session;ILjava/lang/String;)V
    .registers 12

    .line 720
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 725
    :cond_7
    iget-object v1, p0, Lanet/channel/SessionRequest;->c:Lanet/channel/SessionInfo;

    if-eqz v1, :cond_78

    iget-boolean v1, v1, Lanet/channel/SessionInfo;->isAccs:Z

    if-nez v1, :cond_10

    goto :goto_78

    :cond_10
    const/4 v1, 0x0

    .line 728
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "sendConnectInfoToAccsByService"

    const-string v5, "awcn.SessionRequest"

    invoke-static {v5, v4, v3, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    :try_start_1b
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.taobao.accs.data.MsgDistributeService"

    .line 734
    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "command"

    const/16 v7, 0x67

    .line 735
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "host"

    .line 736
    invoke-virtual {p1}, Lanet/channel/Session;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "is_center_host"

    const/4 v7, 0x1

    .line 737
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    invoke-virtual {p1}, Lanet/channel/Session;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_54

    const-string v6, "errorCode"

    .line 741
    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "errorDetail"

    .line 742
    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_54
    const-string p2, "connect_avail"

    .line 744
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "type_inapp"

    .line 745
    invoke-virtual {v2, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 747
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_6e

    .line 748
    new-instance p1, Lanet/channel/h;

    invoke-direct {p1, p0, v2, v0}, Lanet/channel/h;-><init>(Lanet/channel/SessionRequest;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v2, p1, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_78

    .line 771
    :cond_6e
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_71} :catch_72

    goto :goto_78

    :catch_72
    move-exception p1

    .line 774
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v3, p1, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_78
    :goto_78
    return-void
.end method

.method private c(Lanet/channel/Session;ILjava/lang/String;)V
    .registers 8

    .line 779
    iget-object v0, p0, Lanet/channel/SessionRequest;->c:Lanet/channel/SessionInfo;

    if-eqz v0, :cond_53

    iget-boolean v0, v0, Lanet/channel/SessionInfo;->isAccs:Z

    if-nez v0, :cond_9

    goto :goto_53

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 783
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "awcn.SessionRequest"

    const-string v3, "sendConnectInfoToAccsByCallBack"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taobao.ACCS_CONNECT_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x67

    const-string v2, "command"

    .line 785
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    invoke-virtual {p1}, Lanet/channel/Session;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "is_center_host"

    .line 787
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 789
    invoke-virtual {p1}, Lanet/channel/Session;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_41

    const-string v2, "errorCode"

    .line 791
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "errorDetail"

    .line 792
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_41
    const-string p2, "connect_avail"

    .line 794
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "type_inapp"

    .line 795
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 797
    iget-object p1, p0, Lanet/channel/SessionRequest;->a:Lanet/channel/SessionCenter;

    iget-object p1, p1, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {p1, v0}, Lanet/channel/AccsSessionManager;->notifyListener(Landroid/content/Intent;)V

    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected a(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 675
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "timeoutMs"

    aput-object v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "awcn.SessionRequest"

    const-string v2, "[await]"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1f

    return-void

    .line 680
    :cond_1f
    iget-object v0, p0, Lanet/channel/SessionRequest;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 682
    :goto_27
    iget-boolean p1, p0, Lanet/channel/SessionRequest;->d:Z

    if-eqz p1, :cond_3c

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_34

    goto :goto_3c

    .line 687
    :cond_34
    iget-object v3, p0, Lanet/channel/SessionRequest;->l:Ljava/lang/Object;

    sub-long p1, v1, p1

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_27

    .line 691
    :cond_3c
    :goto_3c
    iget-boolean p1, p0, Lanet/channel/SessionRequest;->d:Z

    if-nez p1, :cond_42

    .line 694
    monitor-exit v0

    return-void

    .line 692
    :cond_42
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :catchall_48
    move-exception p1

    .line 694
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_22 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method protected declared-synchronized a(Landroid/content/Context;ILjava/lang/String;Lanet/channel/SessionGetCallback;J)V
    .registers 16

    monitor-enter p0

    .line 156
    :try_start_1
    iget-object v0, p0, Lanet/channel/SessionRequest;->b:Lanet/channel/e;

    invoke-virtual {v0, p0, p2}, Lanet/channel/e;->a(Lanet/channel/SessionRequest;I)Lanet/channel/Session;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const-string p1, "awcn.SessionRequest"

    const-string p2, "Available Session exist!!!"

    .line 158
    new-array p5, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3, p5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_18

    .line 160
    invoke-interface {p4, v0}, Lanet/channel/SessionGetCallback;->onSessionGetSuccess(Lanet/channel/Session;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_134

    .line 162
    :cond_18
    monitor-exit p0

    return-void

    .line 165
    :cond_1a
    :try_start_1a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p3, 0x0

    .line 166
    invoke-static {p3}, Lanet/channel/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_25
    const-string v0, "awcn.SessionRequest"

    const-string v2, "SessionRequest start"

    const/4 v3, 0x4

    .line 168
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "host"

    aput-object v5, v4, v1

    iget-object v5, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "type"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-static {v0, v2, p3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-boolean v0, p0, Lanet/channel/SessionRequest;->d:Z

    if-eqz v0, :cond_80

    const-string p1, "awcn.SessionRequest"

    const-string v0, "session connecting"

    .line 170
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "host"

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {p1, v0, p3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_7e

    .line 172
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->b()I

    move-result p1

    if-ne p1, p2, :cond_7b

    .line 173
    new-instance p1, Lanet/channel/SessionRequest$c;

    invoke-direct {p1, p0, p4}, Lanet/channel/SessionRequest$c;-><init>(Lanet/channel/SessionRequest;Lanet/channel/SessionGetCallback;)V

    .line 174
    iget-object p2, p0, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    monitor-enter p2
    :try_end_6c
    .catchall {:try_start_1a .. :try_end_6c} :catchall_134

    .line 175
    :try_start_6c
    iget-object p3, p0, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit p2
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_78

    .line 177
    :try_start_72
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p5, p6, p2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_134

    goto :goto_7e

    :catchall_78
    move-exception p1

    .line 176
    :try_start_79
    monitor-exit p2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw p1

    .line 179
    :cond_7b
    invoke-interface {p4}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_134

    .line 182
    :cond_7e
    :goto_7e
    monitor-exit p0

    return-void

    .line 184
    :cond_80
    :try_start_80
    invoke-virtual {p0, v6}, Lanet/channel/SessionRequest;->a(Z)V

    .line 185
    new-instance v0, Lanet/channel/SessionRequest$b;

    invoke-direct {v0, p0, p3}, Lanet/channel/SessionRequest$b;-><init>(Lanet/channel/SessionRequest;Ljava/lang/String;)V

    const-wide/16 v4, 0x2d

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v4, v5, v2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionRequest;->k:Ljava/util/concurrent/Future;

    .line 186
    new-instance v0, Lanet/channel/statist/SessionConnStat;

    invoke-direct {v0}, Lanet/channel/statist/SessionConnStat;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    .line 187
    iget-object v0, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lanet/channel/statist/SessionConnStat;->start:J

    .line 189
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_cf

    .line 190
    invoke-static {v6}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_c4

    const-string p1, "awcn.SessionRequest"

    const-string p2, "network is not available, can\'t create session"

    .line 191
    new-array p4, v7, [Ljava/lang/Object;

    const-string p5, "isConnected"

    aput-object p5, p4, v1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, v6

    invoke-static {p1, p2, p3, p4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_c4
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->c()V

    .line 194
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "no network"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_cf
    invoke-direct {p0, p2, p3}, Lanet/channel/SessionRequest;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10d

    .line 204
    invoke-direct {p0, v0, p3}, Lanet/channel/SessionRequest;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_dd
    .catchall {:try_start_80 .. :try_end_dd} :catchall_134

    .line 207
    :try_start_dd
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lanet/channel/entity/a;

    .line 208
    new-instance v0, Lanet/channel/SessionRequest$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lanet/channel/SessionRequest$a;-><init>(Lanet/channel/SessionRequest;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/a;)V

    invoke-virtual {p3}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lanet/channel/SessionRequest;->a(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V

    if-eqz p4, :cond_10b

    .line 210
    new-instance p1, Lanet/channel/SessionRequest$c;

    invoke-direct {p1, p0, p4}, Lanet/channel/SessionRequest$c;-><init>(Lanet/channel/SessionRequest;Lanet/channel/SessionGetCallback;)V

    .line 211
    iget-object p2, p0, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    monitor-enter p2
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_f9} :catch_108
    .catchall {:try_start_dd .. :try_end_f9} :catchall_134

    .line 212
    :try_start_f9
    iget-object p3, p0, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit p2
    :try_end_ff
    .catchall {:try_start_f9 .. :try_end_ff} :catchall_105

    .line 214
    :try_start_ff
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p5, p6, p2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_104} :catch_108
    .catchall {:try_start_ff .. :try_end_104} :catchall_134

    goto :goto_10b

    :catchall_105
    move-exception p1

    .line 213
    :try_start_106
    monitor-exit p2
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    :try_start_107
    throw p1
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_108} :catch_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_134

    .line 217
    :catch_108
    :try_start_108
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->c()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_134

    .line 219
    :cond_10b
    :goto_10b
    monitor-exit p0

    return-void

    :cond_10d
    :try_start_10d
    const-string p1, "awcn.SessionRequest"

    const-string p4, "no avalible strategy, can\'t create session"

    .line 199
    new-array p5, v3, [Ljava/lang/Object;

    const-string p6, "host"

    aput-object p6, p5, v1

    iget-object p6, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    aput-object p6, p5, v6

    const-string/jumbo p6, "type"

    aput-object p6, p5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, v8

    invoke-static {p1, p4, p3, p5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->c()V

    .line 201
    new-instance p1, Lanet/channel/NoAvailStrategyException;

    const-string p2, "no avalible strategy"

    invoke-direct {p1, p2}, Lanet/channel/NoAvailStrategyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_134
    .catchall {:try_start_10d .. :try_end_134} :catchall_134

    :catchall_134
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lanet/channel/Session;)V
    .registers 6

    .line 452
    new-instance v0, Lanet/channel/statist/AlarmObject;

    invoke-direct {v0}, Lanet/channel/statist/AlarmObject;-><init>()V

    const-string v1, "networkPrefer"

    .line 453
    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    const-string v1, "policy"

    .line 454
    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    const/4 v1, 0x1

    .line 456
    iput-boolean v1, v0, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 457
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v2

    invoke-interface {v2, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 460
    iget-object v0, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    invoke-virtual {v0, p1}, Lanet/channel/statist/SessionConnStat;->syncValueFromSession(Lanet/channel/Session;)V

    .line 461
    iget-object p1, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    iput v1, p1, Lanet/channel/statist/SessionConnStat;->ret:I

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    iget-wide v2, v2, Lanet/channel/statist/SessionConnStat;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lanet/channel/statist/SessionConnStat;->totalTime:J

    .line 463
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object v0, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    invoke-interface {p1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    return-void
.end method

.method a(Lanet/channel/Session;II)V
    .registers 8

    const/16 v0, 0x100

    if-ne v0, p2, :cond_57

    const/16 p2, -0xa35

    if-eq p3, p2, :cond_57

    const/16 p2, -0xa29

    if-eq p3, p2, :cond_57

    .line 470
    new-instance p2, Lanet/channel/statist/AlarmObject;

    invoke-direct {p2}, Lanet/channel/statist/AlarmObject;-><init>()V

    const-string v0, "networkPrefer"

    .line 471
    iput-object v0, p2, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    const-string v0, "policy"

    .line 472
    iput-object v0, p2, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    iput-object v0, p2, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    .line 474
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lanet/channel/statist/AlarmObject;->errorCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p2, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 476
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 480
    iget-object p2, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    iput v0, p2, Lanet/channel/statist/SessionConnStat;->ret:I

    .line 481
    invoke-virtual {p2, p3}, Lanet/channel/statist/SessionConnStat;->appendErrorTrace(I)V

    .line 482
    iget-object p2, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lanet/channel/statist/SessionConnStat;->errorCode:Ljava/lang/String;

    .line 483
    iget-object p2, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    iget-wide v2, p3, Lanet/channel/statist/SessionConnStat;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lanet/channel/statist/SessionConnStat;->totalTime:J

    .line 484
    iget-object p2, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    invoke-virtual {p2, p1}, Lanet/channel/statist/SessionConnStat;->syncValueFromSession(Lanet/channel/Session;)V

    .line 485
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_57
    return-void
.end method

.method a(Lanet/channel/Session;ILjava/lang/String;)V
    .registers 5

    .line 713
    invoke-static {}, Lanet/channel/AwcnConfig;->isSendConnectInfoByService()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 714
    invoke-direct {p0, p1, p2, p3}, Lanet/channel/SessionRequest;->b(Lanet/channel/Session;ILjava/lang/String;)V

    .line 716
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lanet/channel/SessionRequest;->c(Lanet/channel/Session;ILjava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x2

    .line 655
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "host"

    aput-object v2, v0, v1

    iget-object v1, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "awcn.SessionRequest"

    const-string v3, "reCreateSession"

    invoke-static {v1, v3, p1, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    invoke-virtual {p0, v2}, Lanet/channel/SessionRequest;->b(Z)V

    return-void
.end method

.method a(Z)V
    .registers 4

    .line 91
    iput-boolean p1, p0, Lanet/channel/SessionRequest;->d:Z

    if-nez p1, :cond_13

    .line 93
    iget-object p1, p0, Lanet/channel/SessionRequest;->k:Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 94
    iget-object p1, p0, Lanet/channel/SessionRequest;->k:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 95
    iput-object v0, p0, Lanet/channel/SessionRequest;->k:Ljava/util/concurrent/Future;

    .line 97
    :cond_11
    iput-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    :cond_13
    return-void
.end method

.method protected b()I
    .registers 2

    .line 698
    iget-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    if-eqz v0, :cond_b

    .line 700
    iget-object v0, v0, Lanet/channel/Session;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->getType()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized b(Landroid/content/Context;ILjava/lang/String;Lanet/channel/SessionGetCallback;J)V
    .registers 16

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lanet/channel/SessionRequest;->b:Lanet/channel/e;

    invoke-virtual {v0, p0, p2}, Lanet/channel/e;->a(Lanet/channel/SessionRequest;I)Lanet/channel/Session;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string p1, "awcn.SessionRequest"

    const-string p2, "Available Session exist!!!"

    .line 224
    new-array p5, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3, p5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-interface {p4, v0}, Lanet/channel/SessionGetCallback;->onSessionGetSuccess(Lanet/channel/Session;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_12e

    .line 226
    monitor-exit p0

    return-void

    .line 229
    :cond_18
    :try_start_18
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 p3, 0x0

    .line 230
    invoke-static {p3}, Lanet/channel/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_23
    const-string v0, "awcn.SessionRequest"

    const-string v2, "SessionRequest start"

    const/4 v3, 0x4

    .line 232
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "host"

    aput-object v5, v4, v1

    iget-object v5, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "type"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-static {v0, v2, p3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-boolean v0, p0, Lanet/channel/SessionRequest;->d:Z

    if-eqz v0, :cond_7c

    const-string p1, "awcn.SessionRequest"

    const-string v0, "session connecting"

    .line 234
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "host"

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {p1, v0, p3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->b()I

    move-result p1

    if-ne p1, p2, :cond_77

    .line 236
    new-instance p1, Lanet/channel/SessionRequest$c;

    invoke-direct {p1, p0, p4}, Lanet/channel/SessionRequest$c;-><init>(Lanet/channel/SessionRequest;Lanet/channel/SessionGetCallback;)V

    .line 237
    iget-object p2, p0, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    monitor-enter p2
    :try_end_68
    .catchall {:try_start_18 .. :try_end_68} :catchall_12e

    .line 238
    :try_start_68
    iget-object p3, p0, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    monitor-exit p2
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_74

    .line 240
    :try_start_6e
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p5, p6, p2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_12e

    goto :goto_7a

    :catchall_74
    move-exception p1

    .line 239
    :try_start_75
    monitor-exit p2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    throw p1

    .line 242
    :cond_77
    invoke-interface {p4}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_12e

    .line 244
    :goto_7a
    monitor-exit p0

    return-void

    .line 246
    :cond_7c
    :try_start_7c
    invoke-virtual {p0, v6}, Lanet/channel/SessionRequest;->a(Z)V

    .line 247
    new-instance v0, Lanet/channel/SessionRequest$b;

    invoke-direct {v0, p0, p3}, Lanet/channel/SessionRequest$b;-><init>(Lanet/channel/SessionRequest;Ljava/lang/String;)V

    const-wide/16 v4, 0x2d

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v4, v5, v2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionRequest;->k:Ljava/util/concurrent/Future;

    .line 248
    new-instance v0, Lanet/channel/statist/SessionConnStat;

    invoke-direct {v0}, Lanet/channel/statist/SessionConnStat;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    .line 249
    iget-object v0, p0, Lanet/channel/SessionRequest;->h:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lanet/channel/statist/SessionConnStat;->start:J

    .line 251
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 252
    invoke-static {v6}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_c0

    const-string p1, "awcn.SessionRequest"

    const-string p2, "network is not available, can\'t create session"

    .line 253
    new-array p4, v7, [Ljava/lang/Object;

    const-string p5, "isConnected"

    aput-object p5, p4, v1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, v6

    invoke-static {p1, p2, p3, p4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_c0
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->c()V

    .line 256
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "no network"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_cb
    invoke-direct {p0, p2, p3}, Lanet/channel/SessionRequest;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_107

    .line 266
    invoke-direct {p0, v0, p3}, Lanet/channel/SessionRequest;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_d9
    .catchall {:try_start_7c .. :try_end_d9} :catchall_12e

    .line 269
    :try_start_d9
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lanet/channel/entity/a;

    .line 270
    new-instance v0, Lanet/channel/SessionRequest$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lanet/channel/SessionRequest$a;-><init>(Lanet/channel/SessionRequest;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/a;)V

    invoke-virtual {p3}, Lanet/channel/entity/a;->h()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lanet/channel/SessionRequest;->a(Landroid/content/Context;Lanet/channel/entity/a;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V

    .line 271
    new-instance p1, Lanet/channel/SessionRequest$c;

    invoke-direct {p1, p0, p4}, Lanet/channel/SessionRequest$c;-><init>(Lanet/channel/SessionRequest;Lanet/channel/SessionGetCallback;)V

    .line 272
    iget-object p2, p0, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    monitor-enter p2
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_f3} :catch_102
    .catchall {:try_start_d9 .. :try_end_f3} :catchall_12e

    .line 273
    :try_start_f3
    iget-object p3, p0, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    monitor-exit p2
    :try_end_f9
    .catchall {:try_start_f3 .. :try_end_f9} :catchall_ff

    .line 275
    :try_start_f9
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p5, p6, p2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_fe
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_fe} :catch_102
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_12e

    goto :goto_105

    :catchall_ff
    move-exception p1

    .line 274
    :try_start_100
    monitor-exit p2
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    :try_start_101
    throw p1
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_101 .. :try_end_102} :catch_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_12e

    .line 277
    :catch_102
    :try_start_102
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->c()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_12e

    .line 279
    :goto_105
    monitor-exit p0

    return-void

    :cond_107
    :try_start_107
    const-string p1, "awcn.SessionRequest"

    const-string p4, "no avalible strategy, can\'t create session"

    .line 261
    new-array p5, v3, [Ljava/lang/Object;

    const-string p6, "host"

    aput-object p6, p5, v1

    iget-object p6, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    aput-object p6, p5, v6

    const-string/jumbo p6, "type"

    aput-object p6, p5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, v8

    invoke-static {p1, p4, p3, p5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->c()V

    .line 263
    new-instance p1, Lanet/channel/NoAvailStrategyException;

    const-string p2, "no avalible strategy"

    invoke-direct {p1, p2}, Lanet/channel/NoAvailStrategyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12e
    .catchall {:try_start_107 .. :try_end_12e} :catchall_12e

    :catchall_12e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected b(Z)V
    .registers 7

    .line 637
    iget-object v0, p0, Lanet/channel/SessionRequest;->a:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "host"

    aput-object v3, v1, v2

    iget-object v3, p0, Lanet/channel/SessionRequest;->i:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string v4, "autoCreate"

    aput-object v4, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const-string v3, "awcn.SessionRequest"

    const-string v4, "closeSessions"

    invoke-static {v3, v4, v0, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_33

    .line 639
    iget-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    if-eqz v0, :cond_33

    .line 640
    iget-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    iput-boolean v2, v0, Lanet/channel/Session;->u:Z

    .line 641
    iget-object v0, p0, Lanet/channel/SessionRequest;->e:Lanet/channel/Session;

    invoke-virtual {v0, v2}, Lanet/channel/Session;->close(Z)V

    .line 643
    :cond_33
    iget-object v0, p0, Lanet/channel/SessionRequest;->b:Lanet/channel/e;

    invoke-virtual {v0, p0}, Lanet/channel/e;->a(Lanet/channel/SessionRequest;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 645
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3f
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/Session;

    if-eqz v1, :cond_3f

    .line 648
    invoke-virtual {v1, p1}, Lanet/channel/Session;->close(Z)V

    goto :goto_3f

    :cond_51
    return-void
.end method

.method c()V
    .registers 3

    const/4 v0, 0x0

    .line 706
    invoke-virtual {p0, v0}, Lanet/channel/SessionRequest;->a(Z)V

    .line 707
    iget-object v0, p0, Lanet/channel/SessionRequest;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_7
    iget-object v1, p0, Lanet/channel/SessionRequest;->l:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 709
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
