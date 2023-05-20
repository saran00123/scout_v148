.class public Lcom/taobao/accs/ACCSClient;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

.field public static mACCSClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/ACCSClient;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;


# instance fields
.field private log:Lcom/alibaba/sdk/android/logger/ILog;

.field protected mAccsManager:Lcom/taobao/accs/IACCSManager;

.field private mConfig:Lcom/taobao/accs/AccsClientConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ACCSClient"

    .line 36
    invoke-static {v0}, Lcom/taobao/accs/utl/AccsLogger;->getLogger(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/ACCSClient;->mACCSClients:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/accs/AccsClientConfig;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACCSClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/utl/AccsLogger;->getLogger(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    .line 47
    sget-object v0, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    return-void
.end method

.method public static changeNetworkSdkLoggerToAccs()V
    .registers 2

    .line 60
    sget-object v0, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "changeNetworkSdkLoggerToAccs"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/taobao/accs/utl/i;

    invoke-direct {v0}, Lcom/taobao/accs/utl/i;-><init>()V

    invoke-static {v0}, Lanet/channel/util/ALog;->setLog(Lanet/channel/util/ALog$ILog;)V

    return-void
.end method

.method public static enableChannelProcess(Landroid/content/Context;Z)V
    .registers 2

    .line 131
    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Z)V

    if-eqz p1, :cond_33

    .line 134
    :try_start_5
    const-class p1, Lcom/taobao/accs/ChannelService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_e

    .line 138
    :catch_e
    :try_start_e
    const-class p1, Lcom/taobao/accs/ChannelService$KernelService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_17} :catch_17

    .line 142
    :catch_17
    :try_start_17
    const-class p1, Lcom/taobao/accs/EventReceiver;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_20} :catch_20

    .line 146
    :catch_20
    :try_start_20
    const-class p1, Lcom/taobao/accs/ServiceReceiver;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_29

    .line 150
    :catch_29
    :try_start_29
    const-class p1, Lcom/taobao/accs/internal/AccsJobService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_32} :catch_60

    goto :goto_60

    .line 155
    :cond_33
    :try_start_33
    const-class p1, Lcom/taobao/accs/ChannelService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3c} :catch_3c

    .line 159
    :catch_3c
    :try_start_3c
    const-class p1, Lcom/taobao/accs/ChannelService$KernelService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_45} :catch_45

    .line 163
    :catch_45
    :try_start_45
    const-class p1, Lcom/taobao/accs/EventReceiver;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4e} :catch_4e

    .line 167
    :catch_4e
    :try_start_4e
    const-class p1, Lcom/taobao/accs/ServiceReceiver;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_57} :catch_57

    .line 171
    :catch_57
    :try_start_57
    const-class p1, Lcom/taobao/accs/internal/AccsJobService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_60} :catch_60

    :catch_60
    :goto_60
    return-void
.end method

.method public static declared-synchronized getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    const-class v0, Lcom/taobao/accs/ACCSClient;

    monitor-enter v0

    .line 95
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p0, "default"

    .line 97
    sget-object v1, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v2, "getAccsClient with null tag, use default"

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    .line 99
    :cond_12
    invoke-static {p0}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 104
    sget-object v2, Lcom/taobao/accs/ACCSClient;->mACCSClients:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/ACCSClient;

    if-nez v2, :cond_38

    .line 106
    sget-object v2, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v3, "getAccsClient create client"

    invoke-interface {v2, v3}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    .line 107
    new-instance v2, Lcom/taobao/accs/ACCSClient;

    invoke-direct {v2, v1}, Lcom/taobao/accs/ACCSClient;-><init>(Lcom/taobao/accs/AccsClientConfig;)V

    .line 108
    sget-object v3, Lcom/taobao/accs/ACCSClient;->mACCSClients:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {v2, v1}, Lcom/taobao/accs/ACCSClient;->updateConfig(Lcom/taobao/accs/AccsClientConfig;)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_78

    .line 111
    monitor-exit v0

    return-object v2

    .line 114
    :cond_38
    :try_start_38
    iget-object p0, v2, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1, p0}, Lcom/taobao/accs/AccsClientConfig;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_5d

    .line 117
    :cond_41
    sget-object p0, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v3, "getAccsClient update config"

    invoke-interface {p0, v3}, Lcom/alibaba/sdk/android/logger/ILog;->warn(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p0

    const-string v3, "old"

    iget-object v4, v2, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-interface {p0, v3, v4}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p0

    const-string v3, "new"

    invoke-interface {p0, v3, v1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p0

    invoke-interface {p0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 118
    invoke-direct {v2, v1}, Lcom/taobao/accs/ACCSClient;->updateConfig(Lcom/taobao/accs/AccsClientConfig;)V
    :try_end_5d
    .catchall {:try_start_38 .. :try_end_5d} :catchall_78

    .line 120
    :goto_5d
    monitor-exit v0

    return-object v2

    .line 101
    :cond_5f
    :try_start_5f
    sget-object v1, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v2, "getAccsClient with null config, please init config first"

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    const-string v2, "configTag"

    invoke-interface {v1, v2, p0}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p0

    invoke-interface {p0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 102
    new-instance p0, Lcom/taobao/accs/AccsException;

    const-string v1, "configTag not exist"

    invoke-direct {p0, v1}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_78
    .catchall {:try_start_5f .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    const-class v0, Lcom/taobao/accs/ACCSClient;

    monitor-enter v0

    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    .line 78
    :try_start_7
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p0}, Lcom/taobao/accs/ACCSClient;->setCurrentProcessName(Landroid/content/Context;)V

    .line 81
    sget-object p0, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "init"

    invoke-interface {p0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->debug(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p0

    const-string v1, "config"

    invoke-interface {p0, v1, p1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p0

    invoke-interface {p0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 82
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object p0

    const-string v1, "sv"

    const-string v2, "4.5.2-emas"

    invoke-virtual {p0, v1, v2}, Lcom/taobao/accs/AccsState;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_54

    monitor-exit v0

    return-object p0

    .line 75
    :cond_35
    :try_start_35
    sget-object v1, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v2, "init AccsClient params error"

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    const-string v2, "context"

    invoke-interface {v1, v2, p0}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p0

    const-string v1, "config"

    invoke-interface {p0, v1, p1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p0

    invoke-interface {p0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 76
    new-instance p0, Lcom/taobao/accs/AccsException;

    const-string p1, "init AccsClient params error"

    invoke-direct {p0, p1}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setCurrentProcessName(Landroid/content/Context;)V
    .registers 3

    .line 184
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lanet/channel/GlobalAppRuntimeInfo;->setCurrentProcess(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    .line 186
    sget-object v0, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "setCurrentProcess"

    invoke-interface {v0, v1, p0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method

.method public static declared-synchronized setEnvironment(Landroid/content/Context;I)V
    .registers 7
    .param p1    # I
        .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
        .end annotation
    .end param

    const-class v0, Lcom/taobao/accs/ACCSClient;

    monitor-enter v0

    const/4 v1, 0x2

    if-ltz p1, :cond_8

    if-le p1, v1, :cond_1e

    .line 209
    :cond_8
    :try_start_8
    sget-object v2, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v3, "env invalid, reset to release"

    invoke-interface {v2, v3}, Lcom/alibaba/sdk/android/logger/ILog;->warn(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    const-string v3, "env"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    const/4 p1, 0x0

    .line 212
    :cond_1e
    sget v2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    .line 213
    sput p1, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    if-eq v2, p1, :cond_8b

    .line 215
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 216
    sget-object v3, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v4, "setEnvironment"

    invoke-interface {v3, v4}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v3

    const-string v4, "pre"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    const-string v3, "to"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 217
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->clearAllSharePreferences(Landroid/content/Context;)V

    .line 218
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->clearAgooBindCache(Landroid/content/Context;)V

    .line 219
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->killService(Landroid/content/Context;)V

    if-ne p1, v1, :cond_5a

    .line 222
    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    invoke-static {v1}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    goto :goto_62

    :cond_5a
    const/4 v1, 0x1

    if-ne p1, v1, :cond_62

    .line 224
    sget-object v1, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    invoke-static {v1}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    .line 227
    :cond_62
    :goto_62
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mACCSClients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_78} :catch_91
    .catchall {:try_start_8 .. :try_end_78} :catchall_8f

    .line 229
    :try_start_78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;
    :try_end_81
    .catch Lcom/taobao/accs/AccsException; {:try_start_78 .. :try_end_81} :catch_82
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_81} :catch_91
    .catchall {:try_start_78 .. :try_end_81} :catchall_8f

    goto :goto_6c

    :catch_82
    move-exception v2

    .line 231
    :try_start_83
    sget-object v3, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v4, "setEnvironment update client"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_8a} :catch_91
    .catchall {:try_start_83 .. :try_end_8a} :catchall_8f

    goto :goto_6c

    .line 238
    :cond_8b
    :goto_8b
    :try_start_8b
    invoke-static {p0, p1}, Lcom/taobao/accs/utl/Utils;->setMode(Landroid/content/Context;I)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_a0

    goto :goto_9a

    :catchall_8f
    move-exception v1

    goto :goto_9c

    :catch_91
    move-exception v1

    .line 236
    :try_start_92
    sget-object v2, Lcom/taobao/accs/ACCSClient;->defaultLog:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v3, "setEnvironment"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_8f

    goto :goto_8b

    .line 240
    :goto_9a
    monitor-exit v0

    return-void

    .line 238
    :goto_9c
    :try_start_9c
    invoke-static {p0, p1}, Lcom/taobao/accs/utl/Utils;->setMode(Landroid/content/Context;I)V

    .line 239
    throw v1
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private updateConfig(Lcom/taobao/accs/AccsClientConfig;)V
    .registers 5

    .line 191
    iput-object p1, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    .line 192
    sget-object v0, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    .line 193
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-eqz v0, :cond_19

    .line 194
    invoke-interface {v0, p1}, Lcom/taobao/accs/IACCSManager;->updateConfig(Lcom/taobao/accs/AccsClientConfig;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public bindApp(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .registers 9

    .line 250
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_23

    .line 251
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "bindApp mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    .line 252
    sget-object p1, Lcom/taobao/accs/a;->ERROR_SHOULD_NEVER_HAPPEN:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    const-string v0, "bindApp accs is null"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/taobao/accs/IAppReceiver;->onBindApp(I)V

    return-void

    .line 257
    :cond_23
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/IACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    return-void
.end method

.method public bindService(Ljava/lang/String;)V
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 327
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "bindService mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 330
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->bindService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bindUser(Ljava/lang/String;)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 283
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "bindUser mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 286
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->bindUser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bindUser(Ljava/lang/String;Z)V
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 299
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "bindUser mAccsManager null"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 302
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/taobao/accs/IACCSManager;->bindUser(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancel(Ljava/lang/String;)Z
    .registers 4

    .line 452
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_d

    .line 453
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "cancel mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 456
    :cond_d
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->cancel(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public cleanLocalBindInfo()V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 267
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "cleanLocalBindInfo mAccsManager null"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 271
    :cond_c
    invoke-interface {v0}, Lcom/taobao/accs/IACCSManager;->cleanLocalBindInfo()V

    return-void
.end method

.method public clearLoginInfo()V
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 438
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "clearLoginInfo mAccsManager null"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 441
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/taobao/accs/IACCSManager;->clearLoginInfo(Landroid/content/Context;)V

    return-void
.end method

.method public forceReConnectChannel()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_d

    .line 497
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "forceReConnectChannel mAccsManager null"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 500
    :cond_d
    invoke-interface {v0}, Lcom/taobao/accs/IACCSManager;->forceReConnectChannel()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChannelState()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_d

    .line 482
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "getChannelState mAccsManager null"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_d
    invoke-interface {v0}, Lcom/taobao/accs/IACCSManager;->getChannelState()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isChannelError(I)Z
    .registers 3

    .line 466
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_d

    .line 467
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "isChannelError mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 470
    :cond_d
    invoke-interface {v0, p1}, Lcom/taobao/accs/IACCSManager;->isChannelError(I)Z

    move-result p1

    return p1
.end method

.method public isNetworkReachable()Z
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_d

    .line 405
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "isNetworkReachable mAccsManager null"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 408
    :cond_d
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/taobao/accs/IACCSManager;->isNetworkReachable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public registerDataListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V
    .registers 5

    .line 539
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 540
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "registerDataListener mAccsManager null"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 543
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    return-void
.end method

.method public registerSerivce(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 512
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "registerSerivce mAccsManager null"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 515
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/taobao/accs/IACCSManager;->registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 562
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "sendBusinessAck mAccsManager null"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 565
    invoke-interface/range {v0 .. v6}, Lcom/taobao/accs/IACCSManager;->sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sendData(Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .registers 4

    .line 359
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_d

    .line 360
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "sendData mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 363
    :cond_d
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendPushResponse(Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    .registers 5

    .line 395
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_d

    .line 396
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "sendPushResponse mAccsManager null"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 399
    :cond_d
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_d

    .line 378
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "sendRequest mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 381
    :cond_d
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setLoginInfo(Lcom/taobao/accs/ILoginInfo;)V
    .registers 4

    .line 425
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 426
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "setLoginInfo mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 429
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->setLoginInfo(Landroid/content/Context;Lcom/taobao/accs/ILoginInfo;)V

    return-void
.end method

.method public startInAppConnection(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .registers 9

    .line 412
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 413
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "startInAppConnection mAccsManager null"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 416
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/ACCSClient;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/taobao/accs/IACCSManager;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    return-void
.end method

.method public unRegisterDataListener(Ljava/lang/String;)V
    .registers 4

    .line 552
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 553
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "unRegisterDataListener mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 556
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterSerivce(Ljava/lang/String;)V
    .registers 4

    .line 525
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 526
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "unRegisterSerivce mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 529
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->unRegisterSerivce(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public unbindService(Ljava/lang/String;)V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 342
    iget-object p1, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "unbindService mAccsManager null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 345
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/taobao/accs/IACCSManager;->unbindService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public unbindUser()V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->mAccsManager:Lcom/taobao/accs/IACCSManager;

    if-nez v0, :cond_c

    .line 312
    iget-object v0, p0, Lcom/taobao/accs/ACCSClient;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "unbindUser mAccsManager null"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 315
    :cond_c
    sget-object v1, Lcom/taobao/accs/ACCSClient;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/taobao/accs/IACCSManager;->unbindUser(Landroid/content/Context;)V

    return-void
.end method
