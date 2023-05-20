.class public Lcom/taobao/accs/base/BaseService;
.super Landroid/app/Service;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseService"


# instance fields
.field mBaseService:Lcom/taobao/accs/base/IBaseService;

.field private messenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/taobao/accs/base/BaseService;->mBaseService:Lcom/taobao/accs/base/IBaseService;

    .line 30
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/taobao/accs/base/BaseService$1;

    invoke-direct {v1, p0}, Lcom/taobao/accs/base/BaseService$1;-><init>(Lcom/taobao/accs/base/BaseService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/taobao/accs/base/BaseService;->messenger:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 7

    const/4 v0, 0x2

    .line 87
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string p1, "BaseService"

    const-string v3, "onBind"

    invoke-static {p1, v3, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :try_start_12
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->isTarget26(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "onBind bind service"

    .line 90
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/taobao/accs/base/BaseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Lcom/taobao/accs/base/BaseService$4;

    invoke-direct {v4, p0}, Lcom/taobao/accs/base/BaseService$4;-><init>(Lcom/taobao/accs/base/BaseService;)V

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_34} :catch_35

    goto :goto_43

    :catch_35
    move-exception v0

    .line 104
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "onBind bind service with exception"

    invoke-static {p1, v0, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/taobao/accs/base/BaseService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    invoke-virtual {p0}, Lcom/taobao/accs/base/BaseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/ACCSClient;->setCurrentProcessName(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/taobao/accs/base/BaseService$2;

    invoke-direct {v0, p0}, Lcom/taobao/accs/base/BaseService$2;-><init>(Lcom/taobao/accs/base/BaseService;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 111
    new-instance v0, Lcom/taobao/accs/base/BaseService$5;

    invoke-direct {v0, p0}, Lcom/taobao/accs/base/BaseService$5;-><init>(Lcom/taobao/accs/base/BaseService;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    .line 120
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .line 65
    new-instance v0, Lcom/taobao/accs/base/BaseService$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/accs/base/BaseService$3;-><init>(Lcom/taobao/accs/base/BaseService;Landroid/content/Intent;II)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    .line 76
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->l(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x0

    .line 79
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "BaseService"

    const-string p3, "channel process is disabled, stop"

    invoke-static {p2, p3, p1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_1f
    const/4 p1, 0x1

    return p1
.end method
