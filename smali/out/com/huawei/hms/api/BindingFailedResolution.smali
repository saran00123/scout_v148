.class public Lcom/huawei/hms/api/BindingFailedResolution;
.super Ljava/lang/Object;
.source "BindingFailedResolution.java"

# interfaces
.implements Lcom/huawei/hms/activity/IBridgeActivityDelegate;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/api/BindingFailedResolution$d;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Lcom/huawei/hms/api/BindingFailedResolution$d;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/BindingFailedResolution;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->b:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Landroid/os/Handler;

    .line 27
    iput-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/BindingFailedResolution;Lcom/huawei/hms/api/BindingFailedResolution$d;)Lcom/huawei/hms/api/BindingFailedResolution$d;
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->c:Lcom/huawei/hms/api/BindingFailedResolution$d;

    return-object p1
.end method

.method private a()V
    .registers 6

    .line 23
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string v0, "BindingFailedResolution"

    const-string v2, "In connect, bind core try fail"

    .line 25
    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, v1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Z)V

    return-void

    .line 30
    :cond_12
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.hms.core.aidlservice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    sget-object v3, Lcom/huawei/hms/api/BindingFailedResolution;->f:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    .line 34
    :try_start_2c
    invoke-virtual {v0, v2, p0, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 35
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->c()V

    .line 36
    monitor-exit v3

    return-void

    .line 38
    :cond_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_43

    const-string v0, "BindingFailedResolution"

    const-string v2, "In connect, bind core try fail"

    .line 39
    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, v1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Z)V

    return-void

    :catchall_43
    move-exception v0

    .line 41
    :try_start_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method private a(I)V
    .registers 5

    .line 42
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 43
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_34

    .line 47
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishBridgeActivity\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BindingFailedResolution"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "intent.extra.RESULT"

    .line 49
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 50
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_34
    :goto_34
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .registers 5

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/huawei/hms/utils/UIUtil;->isActivityFullscreen(Landroid/app/Activity;)Z

    move-result v1

    const-string v2, "intent.extra.isfullscreen"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.huawei.hms.core.activity.JumpActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BindingFailedResolution"

    const-string v2, "onBridgeActivityCreate\uff1atry to start HMS"

    .line 9
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_26
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getRequestCode()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2e

    goto :goto_55

    :catchall_2e
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityNotFoundException\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    if-eqz p1, :cond_52

    const/4 v0, 0x3

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    .line 19
    :cond_52
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->a()V

    :goto_55
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/BindingFailedResolution;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/BindingFailedResolution;Z)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    .line 20
    iget-boolean v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->b:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->b:Z

    .line 22
    invoke-virtual {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->onStartResult(Z)V

    :cond_a
    return-void
.end method

.method private b()V
    .registers 4

    .line 1
    sget-object v0, Lcom/huawei/hms/api/BindingFailedResolution;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Landroid/os/Handler;

    if-eqz v1, :cond_10

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Landroid/os/Handler;

    .line 6
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_19

    .line 4
    :cond_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/huawei/hms/api/BindingFailedResolution$b;

    invoke-direct {v3, p0}, Lcom/huawei/hms/api/BindingFailedResolution$b;-><init>(Lcom/huawei/hms/api/BindingFailedResolution;)V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Landroid/os/Handler;

    .line 19
    :goto_19
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private d()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    const/4 v1, 0x3

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_19

    .line 4
    :cond_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/huawei/hms/api/BindingFailedResolution$a;

    invoke-direct {v3, p0}, Lcom/huawei/hms/api/BindingFailedResolution$a;-><init>(Lcom/huawei/hms/api/BindingFailedResolution;)V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    .line 19
    :goto_19
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private e()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2e

    .line 6
    :cond_d
    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->c:Lcom/huawei/hms/api/BindingFailedResolution$d;

    if-nez v1, :cond_1a

    .line 7
    new-instance v1, Lcom/huawei/hms/api/BindingFailedResolution$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/huawei/hms/api/BindingFailedResolution$d;-><init>(Lcom/huawei/hms/api/BindingFailedResolution$a;)V

    iput-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->c:Lcom/huawei/hms/api/BindingFailedResolution$d;

    goto :goto_1d

    .line 9
    :cond_1a
    invoke-virtual {v1}, Lcom/huawei/hms/ui/AbstractPromptDialog;->dismiss()V

    :goto_1d
    const-string v1, "BindingFailedResolution"

    const-string v2, "showPromptdlg to resolve conn error"

    .line 12
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->c:Lcom/huawei/hms/api/BindingFailedResolution$d;

    new-instance v2, Lcom/huawei/hms/api/BindingFailedResolution$c;

    invoke-direct {v2, p0}, Lcom/huawei/hms/api/BindingFailedResolution$c;-><init>(Lcom/huawei/hms/api/BindingFailedResolution;)V

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/ui/AbstractPromptDialog;->show(Landroid/app/Activity;Lcom/huawei/hms/ui/AbstractDialog$Callback;)V

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    const/16 v0, 0x7d3

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->a:Landroid/app/Activity;

    .line 2
    sget-object v0, Lcom/huawei/hms/api/a;->b:Lcom/huawei/hms/api/a;

    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/a;->a(Landroid/app/Activity;)V

    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->d()V

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onBridgeActivityDestroy()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->b()V

    .line 2
    sget-object v0, Lcom/huawei/hms/api/a;->b:Lcom/huawei/hms/api/a;

    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/a;->b(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->a:Landroid/app/Activity;

    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getRequestCode()I

    move-result p2

    if-eq p1, p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string p1, "BindingFailedResolution"

    const-string p2, "onBridgeActivityResult"

    .line 5
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    if-eqz p1, :cond_1a

    const/4 p2, 0x3

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    .line 12
    :cond_1a
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public onBridgeConfigurationChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->c:Lcom/huawei/hms/api/BindingFailedResolution$d;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "BindingFailedResolution"

    const-string v1, "re show prompt dialog"

    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->e()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .registers 3

    const-string p1, "BindingFailedResolution"

    const-string p2, "On key up when resolve conn error"

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->b()V

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 10
    :cond_e
    invoke-static {p1, p0}, Lcom/huawei/hms/utils/Util;->unBindServiceCatchException(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const-string p1, "BindingFailedResolution"

    const-string p2, "test connect success, try to reConnect and reply message"

    .line 13
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/huawei/hms/common/internal/BindResolveClients;->getInstance()Lcom/huawei/hms/common/internal/BindResolveClients;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/BindResolveClients;->notifyClientReconnect()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

.method protected onStartResult(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(I)V

    return-void

    .line 11
    :cond_e
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->e()V

    return-void
.end method
