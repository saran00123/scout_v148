.class public Lcom/taobao/accs/data/MsgDistributeService;
.super Landroid/app/Service;
.source "Taobao"


# instance fields
.field private a:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/taobao/accs/data/i;

    invoke-direct {v1, p0}, Lcom/taobao/accs/data/i;-><init>(Lcom/taobao/accs/data/MsgDistributeService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/taobao/accs/data/MsgDistributeService;->a:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 44
    iget-object p1, p0, Lcom/taobao/accs/data/MsgDistributeService;->a:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 1

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9

    const-string p2, "onStartCommand"

    const-string p3, "MsgDistributeService"

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 61
    :try_start_6
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "action"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3, p2, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.taobao.accs.intent.action.SEND"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "packageName"

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lcom/taobao/accs/data/MsgDistributeService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 65
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/taobao/accs/data/j;

    invoke-direct {v3, p0, p1}, Lcom/taobao/accs/data/j;-><init>(Lcom/taobao/accs/data/MsgDistributeService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5e

    :cond_49
    const-string v2, "onStartCommand distribute message"

    .line 83
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p3, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/taobao/accs/data/MsgDistributeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_57} :catch_58

    goto :goto_5e

    :catch_58
    move-exception p1

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, p2, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5e
    :goto_5e
    return v0
.end method
