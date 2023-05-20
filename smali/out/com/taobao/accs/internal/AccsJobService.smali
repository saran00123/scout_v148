.class public Lcom/taobao/accs/internal/AccsJobService;
.super Landroid/app/job/JobService;
.source "Taobao"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 10

    const/4 v0, 0x0

    .line 30
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onStartJob"

    const-string v3, "AccsJobService"

    invoke-static {v3, v2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 31
    invoke-static {p0, v1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Landroid/content/Context;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    return v0

    .line 35
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lcom/taobao/accs/internal/AccsJobService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 36
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 37
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.taobao.accs.intent.action.COMMAND"

    .line 38
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "command"

    const/16 v7, 0xc9

    .line 39
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    sget-object v6, Lcom/taobao/accs/utl/AdapterUtilityImpl;->channelService:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Lcom/taobao/accs/internal/AccsJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v0}, Lcom/taobao/accs/dispatch/IntentDispatch;->dispatchIntent(Landroid/content/Context;Landroid/content/Intent;Z)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_36} :catch_37

    goto :goto_3d

    :catch_37
    move-exception v4

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 45
    :goto_3d
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/taobao/accs/internal/a;

    invoke-direct {v2, p0, p1}, Lcom/taobao/accs/internal/a;-><init>(Lcom/taobao/accs/internal/AccsJobService;Landroid/app/job/JobParameters;)V

    const-wide/16 v3, 0x7530

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    const/4 p1, 0x1

    .line 61
    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Landroid/content/Context;Z)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    return v0

    .line 65
    :cond_9
    :try_start_9
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/taobao/accs/internal/AccsJobService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.taobao.accs.intent.action.COMMAND"

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const/16 v2, 0xc9

    .line 68
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/taobao/accs/internal/AccsJobService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/taobao/accs/utl/AdapterUtilityImpl;->channelService:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Lcom/taobao/accs/internal/AccsJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/taobao/accs/dispatch/IntentDispatch;->dispatchIntent(Landroid/content/Context;Landroid/content/Intent;Z)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_31} :catch_32

    goto :goto_3c

    :catch_32
    move-exception p1

    .line 72
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AccsJobService"

    const-string v3, "onStopJob"

    invoke-static {v2, v3, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3c
    return v0
.end method
