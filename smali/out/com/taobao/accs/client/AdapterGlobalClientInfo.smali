.class public Lcom/taobao/accs/client/AdapterGlobalClientInfo;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final SECURITY_OFF:I = 0x2

.field public static final SECURITY_OPEN:I = 0x1

.field public static final SECURITY_TAOBAO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AdapterGlobalClientInfo"

.field public static mAgooCustomServiceName:Ljava/lang/String;

.field public static mAuthCode:Ljava/lang/String;

.field public static mChannelProcessName:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static volatile mInstance:Lcom/taobao/accs/client/AdapterGlobalClientInfo;

.field public static mMainProcessName:Ljava/lang/String;

.field public static mProcessNameImpl:Lcom/taobao/accs/IProcessName;

.field public static mSecurityType:I

.field public static mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    .line 61
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mContext:Landroid/content/Context;

    :cond_f
    return-void

    .line 59
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Context is null!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getAgooCustomServiceName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 85
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAgooCustomServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AdapterGlobalClientInfo"

    if-eqz v0, :cond_17

    .line 86
    invoke-static {p0}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->tryfindAgooService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 87
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "Please call TaobaoRegister.setAgooMsgReceiveService() first!"

    invoke-static {v2, v3, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .line 89
    :cond_17
    sget-object p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAgooCustomServiceName:Ljava/lang/String;

    :goto_19
    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "serviceName"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string v1, "getAgooCustomServiceName"

    invoke-static {v2, v1, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 54
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/AdapterGlobalClientInfo;
    .registers 3

    .line 43
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mInstance:Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    if-nez v0, :cond_17

    .line 44
    const-class v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    monitor-enter v0

    .line 45
    :try_start_7
    sget-object v1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mInstance:Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    if-nez v1, :cond_12

    .line 46
    new-instance v1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    invoke-direct {v1, p0}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mInstance:Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    .line 48
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 50
    :cond_17
    :goto_17
    sget-object p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mInstance:Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    return-object p0
.end method

.method public static isFirstStartProc()Z
    .registers 1

    .line 113
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static tryfindAgooService(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.agoo.android.intent.action.RECEIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 102
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 103
    iget-object p0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getActivityManager()Landroid/app/ActivityManager;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_10

    .line 68
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mActivityManager:Landroid/app/ActivityManager;

    .line 70
    :cond_10
    iget-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 76
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 79
    :cond_10
    iget-object v0, p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method
