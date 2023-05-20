.class public Lcom/taobao/accs/net/j;
.super Lcom/taobao/accs/net/b;
.source "Taobao"

# interfaces
.implements Lanet/channel/DataFrameCb;
.implements Lanet/channel/ISessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/net/j$a;
    }
.end annotation


# instance fields
.field private n:Z

.field private o:J

.field private p:Ljava/util/concurrent/ScheduledFuture;

.field private q:Lcom/alibaba/sdk/android/logger/ILog;

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;

.field private t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 11

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/accs/net/b;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p2, 0x1

    .line 65
    iput-boolean p2, p0, Lcom/taobao/accs/net/j;->n:Z

    const-wide/32 v0, 0x36ee80

    .line 71
    iput-wide v0, p0, Lcom/taobao/accs/net/j;->o:J

    .line 76
    new-instance v0, Lcom/taobao/accs/net/k;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/k;-><init>(Lcom/taobao/accs/net/j;)V

    iput-object v0, p0, Lcom/taobao/accs/net/j;->r:Ljava/lang/Runnable;

    .line 410
    new-instance v0, Lcom/taobao/accs/net/p;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/p;-><init>(Lcom/taobao/accs/net/j;)V

    iput-object v0, p0, Lcom/taobao/accs/net/j;->s:Ljava/lang/Runnable;

    .line 497
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/j;->t:Ljava/util/Set;

    .line 98
    invoke-virtual {p0}, Lcom/taobao/accs/net/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/utl/AccsLogger;->getLogger(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    .line 99
    invoke-static {p2}, Lcom/taobao/accs/utl/OrangeAdapter;->isTnetLogOff(Z)Z

    move-result p2

    if-nez p2, :cond_5e

    .line 101
    iget-object p2, p0, Lcom/taobao/accs/net/j;->d:Landroid/content/Context;

    const-string v0, "inapp"

    invoke-static {p2, v0}, Lcom/taobao/accs/utl/UtilityImpl;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 102
    iget-object v0, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config tnet log path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    .line 103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    const/high16 v0, 0x500000

    const/4 v1, 0x5

    .line 104
    invoke-static {p1, p2, v0, v1}, Lanet/channel/Session;->configTnetALog(Landroid/content/Context;Ljava/lang/String;II)V

    .line 107
    :cond_5e
    invoke-static {p3}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 108
    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->isChannelLoopStart()Z

    move-result p2

    if-eqz p2, :cond_84

    .line 109
    iget-object p2, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "channel loop start"

    invoke-interface {p2, p3}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/j;->s:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getLoopInterval()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_99

    .line 112
    :cond_84
    iget-object p1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "channel delay start"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/accs/net/j;->s:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1d4c0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_99
    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    return-object p0
.end method

.method static synthetic b(Lcom/taobao/accs/net/j;)J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/taobao/accs/net/j;->o:J

    return-wide v0
.end method

.method static synthetic c(Lcom/taobao/accs/net/j;)V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/taobao/accs/net/j;->l()V

    return-void
.end method

.method private l()V
    .registers 9

    .line 633
    iget-object v0, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->isAccsHeartbeatEnable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 634
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/j;->r:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/taobao/accs/net/j;->o:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/j;->p:Ljava/util/concurrent/ScheduledFuture;

    :cond_19
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "start"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/taobao/accs/net/j;->n:Z

    .line 122
    iget-object v0, p0, Lcom/taobao/accs/net/j;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/j;->a(Landroid/content/Context;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 123
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Landroid/content/Context;)V
    .registers 6

    .line 477
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/accs/net/j;->g:Z

    if-eqz v0, :cond_5

    return-void

    .line 480
    :cond_5
    invoke-super {p0, p1}, Lcom/taobao/accs/net/b;->a(Landroid/content/Context;)V

    .line 482
    iget-object p1, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/taobao/accs/net/j;->h()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->isKeepalive()Z

    move-result v1

    if-eqz v1, :cond_20

    move v0, v2

    goto :goto_27

    .line 487
    :cond_20
    iget-object v1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v3, "initAwcn close keepalive"

    invoke-interface {v1, v3}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    .line 489
    :goto_27
    iget-object v1, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/taobao/accs/net/j;->a(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V

    .line 490
    iput-boolean v2, p0, Lcom/taobao/accs/net/j;->g:Z

    .line 491
    iget-object p1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "initAwcn success!"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception p1

    .line 493
    iget-object v0, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "initAwcn"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_46
    return-void
.end method

.method public a(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V
    .registers 11

    .line 500
    iget-object v0, p0, Lcom/taobao/accs/net/j;->t:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v3, 0x1

    .line 503
    new-instance v4, Lcom/taobao/accs/net/j$a;

    invoke-direct {v4, p0, p2}, Lcom/taobao/accs/net/j$a;-><init>(Lcom/taobao/accs/net/b;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lanet/channel/SessionInfo;->create(Ljava/lang/String;ZZLanet/channel/IAuth;Lanet/channel/heartbeat/IHeartbeat;Lanet/channel/DataFrameCb;)Lanet/channel/SessionInfo;

    move-result-object p3

    .line 504
    iget-object v0, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lanet/channel/SessionCenter;->registerPublicKey(Ljava/lang/String;I)V

    .line 505
    invoke-virtual {p1, p3}, Lanet/channel/SessionCenter;->registerSessionInfo(Lanet/channel/SessionInfo;)V

    .line 506
    iget-object p3, p0, Lcom/taobao/accs/net/j;->t:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-virtual {p1, p0}, Lanet/channel/SessionCenter;->registerAccsSessionListener(Lanet/channel/ISessionListener;)V

    .line 508
    iget-object p1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "registerSessionInfo"

    invoke-interface {p1, p3}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    const-string p3, "host"

    invoke-interface {p1, p3, p2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    return-void
.end method

.method public a(Lcom/taobao/accs/AccsClientConfig;)V
    .registers 7

    const-string v0, "updateConfig"

    if-nez p1, :cond_c

    .line 513
    iget-object p1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "updateConfig null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    return-void

    .line 516
    :cond_c
    iget-object v1, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p1, v1}, Lcom/taobao/accs/AccsClientConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 517
    iget-object p1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "updateConfig not any changed"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    return-void

    .line 521
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    const-string v2, "old"

    iget-object v3, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    const-string v2, "new"

    invoke-interface {v1, v2, p1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 522
    iget-object v1, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v2

    .line 524
    iget-object v3, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v3

    if-nez v3, :cond_51

    .line 526
    iget-object p1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "old session not exist, no need update"

    invoke-interface {p1, v1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void

    .line 530
    :cond_51
    invoke-virtual {v3, v1}, Lanet/channel/SessionCenter;->unregisterSessionInfo(Ljava/lang/String;)V

    .line 531
    iget-object v4, p0, Lcom/taobao/accs/net/j;->t:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 532
    iget-object v4, p0, Lcom/taobao/accs/net/j;->t:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 535
    :cond_61
    iget-object v1, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 536
    iput-object p1, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 537
    iget-object p1, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/net/j;->b:Ljava/lang/String;

    .line 538
    iget-object p1, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/net/j;->m:Ljava/lang/String;

    .line 539
    iget-object p1, p0, Lcom/taobao/accs/net/j;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_87

    .line 540
    iget-object p1, p0, Lcom/taobao/accs/net/j;->b:Ljava/lang/String;

    invoke-static {p1}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v3

    :cond_87
    const/4 p1, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/taobao/accs/net/j;->h()Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->isKeepalive()Z

    move-result v1

    if-eqz v1, :cond_98

    const/4 p1, 0x1

    goto :goto_9f

    .line 546
    :cond_98
    iget-object v1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v4, "updateConfig close keepalive"

    invoke-interface {v1, v4}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    .line 548
    :goto_9f
    invoke-virtual {p0, v3, v2, p1}, Lcom/taobao/accs/net/j;->a(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V

    .line 549
    iget-object p1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "updateConfig done"

    invoke-interface {p1, v1}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_a9} :catch_aa

    goto :goto_b0

    :catch_aa
    move-exception p1

    .line 551
    iget-object v1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b0
    return-void
.end method

.method protected a(Lcom/taobao/accs/data/Message;Z)V
    .registers 7

    .line 127
    iget-boolean p2, p0, Lcom/taobao/accs/net/j;->n:Z

    if-eqz p2, :cond_da

    if-nez p1, :cond_8

    goto/16 :goto_da

    .line 132
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p2

    const/16 v0, 0x3e8

    if-gt p2, v0, :cond_70

    .line 135
    iget-wide v0, p1, Lcom/taobao/accs/data/Message;->Q:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_22

    const-wide/16 v0, 0x1

    .line 139
    :cond_22
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    new-instance v2, Lcom/taobao/accs/net/l;

    invoke-direct {v2, p0, p1}, Lcom/taobao/accs/net/l;-><init>(Lcom/taobao/accs/net/j;Lcom/taobao/accs/data/Message;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v0, v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 238
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_58

    iget-object v0, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 241
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->c()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 242
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 243
    iget-object v0, p0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/data/d;->b(Lcom/taobao/accs/data/Message;)V

    .line 247
    :cond_4f
    iget-object v0, p0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    iget-object v0, v0, Lcom/taobao/accs/data/d;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p1, Lcom/taobao/accs/data/Message;->O:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_58
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    if-eqz p2, :cond_d9

    .line 253
    iget-object v0, p0, Lcom/taobao/accs/net/j;->d:Landroid/content/Context;

    .line 254
    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p2, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDeviceId(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lcom/taobao/accs/net/j;->c:I

    invoke-virtual {p2, v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setConnType(I)V

    .line 256
    invoke-virtual {p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onEnterQueueData()V

    goto :goto_d9

    .line 133
    :cond_70
    new-instance p2, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "accs"

    invoke-direct {p2, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_78
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_8 .. :try_end_78} :catch_98
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_78} :catch_78

    :catch_78
    move-exception p2

    .line 264
    iget-object v0, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "send error"

    invoke-interface {v0, v1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    iget-object v0, p0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    sget-object v1, Lcom/taobao/accs/a;->UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    goto :goto_d9

    .line 259
    :catch_98
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p2

    .line 260
    sget-object v0, Lcom/taobao/accs/a;->MESSAGE_QUEUE_FULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inapp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p2

    .line 261
    iget-object v0, p0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 262
    iget-object p1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "send queue full"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    const-string v0, "err"

    invoke-interface {p1, v0, p2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    :cond_d9
    :goto_d9
    return-void

    .line 128
    :cond_da
    :goto_da
    iget-object p1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not running or msg null! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/taobao/accs/net/j;->n:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ZJ)V
    .registers 12

    .line 271
    new-instance v6, Lcom/taobao/accs/net/m;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/net/m;-><init>(Lcom/taobao/accs/net/j;Ljava/lang/String;JZ)V

    .line 281
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, p3, p4, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected a(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    .line 324
    :try_start_0
    iget-object p3, p0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {p3, p1}, Lcom/taobao/accs/data/d;->b(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 325
    iget-object p3, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-eqz p3, :cond_37

    .line 326
    iget-object p3, p0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p3}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object p3

    iget-object p1, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, v0, v1}, Lanet/channel/SessionCenter;->get(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object p1

    if-eqz p1, :cond_37

    const/4 p3, 0x1

    if-eqz p2, :cond_2b

    .line 329
    invoke-virtual {p1, p3}, Lanet/channel/Session;->close(Z)V

    goto :goto_37

    .line 331
    :cond_2b
    invoke-virtual {p1, p3}, Lanet/channel/Session;->ping(Z)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception p1

    .line 336
    iget-object p2, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "onTimeOut"

    invoke-interface {p2, p3, p1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 15

    if-nez p1, :cond_a

    .line 446
    iget-object p1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "onReceiveAccsHeartbeatResp response data is null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 450
    :cond_a
    iget-object v0, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "onReceiveAccsHeartbeatResp"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    const-string v2, "data"

    invoke-interface {v0, v2, p1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    :try_start_1b
    const-string v0, "timeInterval"

    .line 453
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2f

    .line 456
    iget-object p1, p0, Lcom/taobao/accs/net/j;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_58

    .line 457
    iget-object p1, p0, Lcom/taobao/accs/net/j;->p:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_58

    .line 459
    :cond_2f
    iget-wide v2, p0, Lcom/taobao/accs/net/j;->o:J

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_58

    if-nez p1, :cond_3d

    const-wide/32 v4, 0x36ee80

    .line 460
    :cond_3d
    iput-wide v4, p0, Lcom/taobao/accs/net/j;->o:J

    .line 461
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/accs/net/j;->r:Ljava/lang/Runnable;

    iget-wide v8, p0, Lcom/taobao/accs/net/j;->o:J

    iget-wide v10, p0, Lcom/taobao/accs/net/j;->o:J

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v6 .. v12}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/net/j;->p:Ljava/util/concurrent/ScheduledFuture;
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_51} :catch_52

    goto :goto_58

    :catch_52
    move-exception p1

    .line 465
    iget-object v0, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public a(ZZ)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 434
    :cond_4
    iget-object v1, p0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    iget-object v1, v1, Lcom/taobao/accs/data/d;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_14

    .line 436
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    :cond_14
    if-eqz v0, :cond_27

    .line 439
    iget-object v1, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v2, "cancel"

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    const-string v2, "customDataId"

    invoke-interface {v1, v2, p1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    :cond_27
    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    .line 297
    iput v0, p0, Lcom/taobao/accs/net/j;->f:I

    return-void
.end method

.method public c()Lcom/taobao/accs/ut/a/c;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .registers 3

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppConn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/net/j;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "shut down"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/taobao/accs/net/j;->n:Z

    return-void
.end method

.method public onConnectionChanged(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "connect_avail"

    const/4 v1, 0x0

    .line 557
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "host"

    .line 558
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-static {p1}, Lcom/taobao/accs/common/Constants;->getErrorCode(Landroid/content/Intent;)Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    .line 560
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_84

    if-nez v0, :cond_2a

    .line 562
    iget-object v2, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v3, "InAppConnection Not Available "

    invoke-interface {v2, v3}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    const-string v3, "error"

    invoke-interface {v2, v3, p1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    :cond_2a
    const-string v2, "a"

    const-string v3, "h"

    const-string v4, "cc"

    if-eqz p1, :cond_68

    .line 565
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "c"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/taobao/accs/AccsState;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->toShortString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "re"

    invoke-virtual {v0, v1, p1}, Lcom/taobao/accs/AccsState;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_84

    .line 568
    :cond_68
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/taobao/accs/AccsState;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_84
    :goto_84
    return-void
.end method

.method public onDataReceive(Lanet/channel/session/TnetSpdySession;[BII)V
    .registers 13

    .line 343
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/taobao/accs/net/n;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/taobao/accs/net/n;-><init>(Lcom/taobao/accs/net/j;II[BLanet/channel/session/TnetSpdySession;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onException(IIZLjava/lang/String;)V
    .registers 13

    .line 371
    iget-object v0, p0, Lcom/taobao/accs/net/j;->q:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "onException"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dataId"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errorId"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "needRetry"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    const-string v1, "detail"

    invoke-interface {v0, v1, p4}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 372
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/taobao/accs/net/o;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p4

    move v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/taobao/accs/net/o;-><init>(Lcom/taobao/accs/net/j;ILjava/lang/String;IZ)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
