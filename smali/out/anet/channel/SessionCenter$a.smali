.class Lanet/channel/SessionCenter$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;
.implements Lanet/channel/strategy/IStrategyListener;
.implements Lanet/channel/util/AppLifecycle$AppLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lanet/channel/SessionCenter;


# direct methods
.method private constructor <init>(Lanet/channel/SessionCenter;)V
    .registers 2

    .line 604
    iput-object p1, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 637
    iput-boolean p1, p0, Lanet/channel/SessionCenter$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/SessionCenter;Lanet/channel/d;)V
    .registers 3

    .line 604
    invoke-direct {p0, p1}, Lanet/channel/SessionCenter$a;-><init>(Lanet/channel/SessionCenter;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .line 607
    invoke-static {p0}, Lanet/channel/util/AppLifecycle;->registerLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V

    .line 608
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 609
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/IStrategyInstance;->registerListener(Lanet/channel/strategy/IStrategyListener;)V

    return-void
.end method

.method b()V
    .registers 2

    .line 613
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lanet/channel/strategy/IStrategyInstance;->unregisterListener(Lanet/channel/strategy/IStrategyListener;)V

    .line 614
    invoke-static {p0}, Lanet/channel/util/AppLifecycle;->unregisterLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V

    .line 615
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->removeStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    return-void
.end method

.method public background()V
    .registers 6

    .line 673
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "awcn.SessionCenter"

    const-string v4, "[background]"

    invoke-static {v3, v4, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    invoke-static {}, Lanet/channel/SessionCenter;->a()Z

    move-result v0

    if-nez v0, :cond_20

    .line 675
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "background not inited!"

    invoke-static {v3, v2, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 679
    :cond_20
    :try_start_20
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-interface {v0}, Lanet/channel/strategy/IStrategyInstance;->saveData()V

    .line 680
    invoke-static {}, Lanet/channel/AwcnConfig;->isAccsSessionCreateForbiddenInBg()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "OPPO"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "close session for OPPO"

    .line 681
    iget-object v2, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0, v1}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    return-void
.end method

.method public forground()V
    .registers 7

    .line 641
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "awcn.SessionCenter"

    const-string v4, "[forground]"

    invoke-static {v3, v4, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->b:Landroid/content/Context;

    if-nez v0, :cond_15

    return-void

    .line 647
    :cond_15
    iget-boolean v0, p0, Lanet/channel/SessionCenter$a;->a:Z

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    const/4 v0, 0x1

    .line 650
    iput-boolean v0, p0, Lanet/channel/SessionCenter$a;->a:Z

    .line 651
    invoke-static {}, Lanet/channel/SessionCenter;->a()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 652
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "forground not inited!"

    invoke-static {v3, v2, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 657
    :cond_2f
    :try_start_2f
    sget-wide v2, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4d

    .line 658
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_4d

    .line 659
    iget-object v2, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v2, v2, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {v2, v0}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V

    goto :goto_54

    .line 661
    :cond_4d
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_54} :catch_54
    .catchall {:try_start_2f .. :try_end_54} :catchall_57

    .line 665
    :catch_54
    :goto_54
    :try_start_54
    iput-boolean v1, p0, Lanet/channel/SessionCenter$a;->a:Z

    goto :goto_5b

    :catchall_57
    move-exception v0

    iput-boolean v1, p0, Lanet/channel/SessionCenter$a;->a:Z

    .line 666
    throw v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_5b

    :catch_5b
    :goto_5b
    return-void
.end method

.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .registers 8

    .line 620
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "networkStatus"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string p1, "awcn.SessionCenter"

    const-string v3, "onNetworkStatusChanged."

    invoke-static {p1, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->e:Lanet/channel/e;

    invoke-virtual {v0}, Lanet/channel/e;->a()Ljava/util/List;

    move-result-object v0

    .line 622
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    .line 623
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionRequest;

    .line 624
    iget-object v3, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object v3, v3, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "network change, try recreate session"

    invoke-static {p1, v5, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 625
    invoke-virtual {v1, v3}, Lanet/channel/SessionRequest;->a(Ljava/lang/String;)V

    goto :goto_28

    .line 628
    :cond_44
    iget-object p1, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object p1, p1, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {p1}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    return-void
.end method

.method public onStrategyUpdated(Lanet/channel/strategy/l$d;)V
    .registers 3

    .line 633
    iget-object v0, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    invoke-static {v0, p1}, Lanet/channel/SessionCenter;->a(Lanet/channel/SessionCenter;Lanet/channel/strategy/l$d;)V

    .line 634
    iget-object p1, p0, Lanet/channel/SessionCenter$a;->b:Lanet/channel/SessionCenter;

    iget-object p1, p1, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {p1}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    return-void
.end method
