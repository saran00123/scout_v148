.class public Lcom/huawei/hms/adapter/BinderAdapter;
.super Ljava/lang/Object;
.source "BinderAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;
    }
.end annotation


# static fields
.field private static final LOCK_CONNECT_TIMEOUT_HANDLER:Ljava/lang/Object;

.field private static final MSG_CONN_TIMEOUT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "BinderAdapter"


# instance fields
.field private bindfail:Z

.field private callback:Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

.field private mAction:Ljava/lang/String;

.field private mBinderTimeoutHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mService:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/adapter/BinderAdapter;->LOCK_CONNECT_TIMEOUT_HANDLER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->bindfail:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mBinderTimeoutHandler:Landroid/os/Handler;

    .line 10
    iput-object p1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mContext:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mAction:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mService:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/hms/adapter/BinderAdapter;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->binderServiceFailed()V

    return-void
.end method

.method private bindCoreService()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mService:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    :cond_10
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->getBindFailPendingIntent()V

    .line 5
    :cond_13
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    sget-object v1, Lcom/huawei/hms/adapter/BinderAdapter;->LOCK_CONNECT_TIMEOUT_HANDLER:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_22
    iget-object v2, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 11
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->postConnDelayHandle()V

    .line 12
    monitor-exit v1

    return-void

    .line 14
    :cond_30
    iput-boolean v3, p0, Lcom/huawei/hms/adapter/BinderAdapter;->bindfail:Z

    .line 15
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_37

    .line 17
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->getBindFailPendingIntent()V

    return-void

    :catchall_37
    move-exception v0

    .line 18
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method private binderServiceFailed()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->getCallBack()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, -0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;->onBinderFailed(I)V

    :cond_a
    return-void
.end method

.method private cancelConnDelayHandle()V
    .registers 4

    .line 1
    sget-object v0, Lcom/huawei/hms/adapter/BinderAdapter;->LOCK_CONNECT_TIMEOUT_HANDLER:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mBinderTimeoutHandler:Landroid/os/Handler;

    if-eqz v1, :cond_11

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mBinderTimeoutHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mBinderTimeoutHandler:Landroid/os/Handler;

    .line 6
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private getBindFailPendingIntent()V
    .registers 4

    const-string v0, "BinderAdapter"

    const-string v1, "In connect, bind core service fail"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.hms.activity.BridgeActivity"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7
    const-class v1, Lcom/huawei/hms/api/BindingFailedResolution;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent.extra.DELEGATE_CLASS_OBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->callback:Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;->onBinderFailed(ILandroid/content/Intent;)V

    return-void
.end method

.method private getCallBack()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->callback:Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    return-object v0
.end method

.method private postConnDelayHandle()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mBinderTimeoutHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1a

    .line 4
    :cond_a
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/huawei/hms/adapter/BinderAdapter$1;

    invoke-direct {v3, p0}, Lcom/huawei/hms/adapter/BinderAdapter$1;-><init>(Lcom/huawei/hms/adapter/BinderAdapter;)V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mBinderTimeoutHandler:Landroid/os/Handler;

    .line 18
    :goto_1a
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mBinderTimeoutHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public binder(Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iput-object p1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->callback:Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->bindCoreService()V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "BinderAdapter"

    const-string v1, "Enter onNullBinding, than unBind."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->bindfail:Z

    if-eqz v0, :cond_f

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->bindfail:Z

    return-void

    .line 6
    :cond_f
    invoke-virtual {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->unBind()V

    .line 7
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->cancelConnDelayHandle()V

    .line 8
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->getCallBack()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 10
    invoke-interface {v0, p1}, Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;->onNullBinding(Landroid/content/ComponentName;)V

    :cond_1e
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string v0, "BinderAdapter"

    const-string v1, "Enter onServiceConnected."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->cancelConnDelayHandle()V

    .line 6
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->getCallBack()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_13
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "BinderAdapter"

    const-string v1, "Enter onServiceDisconnected."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->getCallBack()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 6
    invoke-interface {v0, p1}, Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_10
    return-void
.end method

.method public unBind()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/huawei/hms/utils/Util;->unBindServiceCatchException(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method
