.class public Lcom/alibaba/sdk/android/push/register/VivoRegister;
.super Ljava/lang/Object;
.source "VivoRegister.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MPS:vPush"

.field private static final VIVO_TOKEN:Ljava/lang/String; = "VIVO_TOKEN"

.field private static mContext:Landroid/content/Context;

.field private static vivoBadgeReceiver:Lcom/alibaba/sdk/android/push/VivoBadgeReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "MPS:vPush"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return v1

    .line 45
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/alibaba/sdk/android/push/register/VivoRegister;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p0}, Lcom/alibaba/sdk/android/push/utils/SysUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string p0, "not in main process, return"

    .line 48
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 52
    :cond_1a
    invoke-static {p0}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/push/PushClient;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "register start"

    .line 53
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v2, Lcom/alibaba/sdk/android/push/impl/VivoMsgParseImpl;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/push/impl/VivoMsgParseImpl;-><init>()V

    invoke-static {v2}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->registerImpl(Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;)V

    .line 55
    invoke-static {p0}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/push/PushClient;->initialize()V

    .line 56
    invoke-static {p0}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object v2

    new-instance v3, Lcom/alibaba/sdk/android/push/register/VivoRegister$2;

    invoke-direct {v3, p0}, Lcom/alibaba/sdk/android/push/register/VivoRegister$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/vivo/push/PushClient;->turnOnPush(Lcom/vivo/push/IPushActionListener;)V

    .line 70
    new-instance v2, Lcom/alibaba/sdk/android/push/VivoBadgeReceiver;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/push/VivoBadgeReceiver;-><init>()V

    sput-object v2, Lcom/alibaba/sdk/android/push/register/VivoRegister;->vivoBadgeReceiver:Lcom/alibaba/sdk/android/push/VivoBadgeReceiver;

    .line 71
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "msg.action.ACTION_MPM_MESSAGE_BOX_UNREAD"

    .line 72
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object v3, Lcom/alibaba/sdk/android/push/register/VivoRegister;->vivoBadgeReceiver:Lcom/alibaba/sdk/android/push/VivoBadgeReceiver;

    invoke-virtual {p0, v3, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p0, 0x1

    return p0

    :cond_62
    const-string/jumbo p0, "this device is not support vPush"

    .line 76
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6a} :catch_6b

    goto :goto_73

    :catch_6b
    move-exception p0

    .line 79
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "register"

    invoke-static {v0, v3, p0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_73
    return v1
.end method

.method public static registerAsync(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-static {}, Lcom/alibaba/sdk/android/push/utils/ThreadUtil;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/push/register/VivoRegister$1;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/push/register/VivoRegister$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static unregister()V
    .registers 3

    const/4 v0, 0x0

    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MPS:vPush"

    const-string/jumbo v2, "unregister"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/alibaba/sdk/android/push/register/VivoRegister;->vivoBadgeReceiver:Lcom/alibaba/sdk/android/push/VivoBadgeReceiver;

    if-eqz v0, :cond_1a

    .line 88
    sget-object v0, Lcom/alibaba/sdk/android/push/register/VivoRegister;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/register/VivoRegister;->vivoBadgeReceiver:Lcom/alibaba/sdk/android/push/VivoBadgeReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    :cond_1a
    sget-object v0, Lcom/alibaba/sdk/android/push/register/VivoRegister;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/push/register/VivoRegister$3;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/push/register/VivoRegister$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vivo/push/PushClient;->turnOffPush(Lcom/vivo/push/IPushActionListener;)V

    return-void
.end method
