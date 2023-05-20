.class public Lcom/alibaba/sdk/android/push/g/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/push/g/a$b;,
        Lcom/alibaba/sdk/android/push/g/a$a;
    }
.end annotation


# static fields
.field private static e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field private static f:Lcom/alibaba/sdk/android/push/g/a;

.field private static final g:[Ljava/lang/String;

.field private static final h:Landroid/content/IntentFilter;

.field private static final i:Landroid/content/IntentFilter;


# instance fields
.field volatile a:Lcom/alibaba/sdk/android/push/g/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/push/g/a$a<",
            "Lcom/alibaba/sdk/android/push/g/d;",
            ">;"
        }
    .end annotation
.end field

.field volatile b:Z

.field volatile c:Z

.field volatile d:Z

.field private final j:Lcom/alibaba/sdk/android/push/g/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "MPS:AppRegister"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/push/g/a;->f:Lcom/alibaba/sdk/android/push/g/a;

    const-string v0, "amdcopen.m.taobao.com"

    const-string v1, "amdc.wapa.taobao.com"

    const-string v2, "amdc.taobao.net"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/g/a;->g:[Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/g/a;->h:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/push/g/a;->i:Landroid/content/IntentFilter;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/push/g/a$b;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/g/a$b;-><init>(Lcom/alibaba/sdk/android/push/g/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/g/a;->j:Lcom/alibaba/sdk/android/push/g/a$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->b:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/push/g/a;
    .registers 2

    sget-object v0, Lcom/alibaba/sdk/android/push/g/a;->f:Lcom/alibaba/sdk/android/push/g/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/alibaba/sdk/android/push/g/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/alibaba/sdk/android/push/g/a;->f:Lcom/alibaba/sdk/android/push/g/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/alibaba/sdk/android/push/g/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/push/g/a;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/push/g/a;->f:Lcom/alibaba/sdk/android/push/g/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/alibaba/sdk/android/push/g/a;->f:Lcom/alibaba/sdk/android/push/g/a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/push/g/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/a;->f()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/push/g/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/a;->e()V

    return-void
.end method

.method private b(ZJ)V
    .registers 11

    const-string v0, "AliyunPush"

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AMS]appkey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/alibaba/sdk/android/ams/common/b/b;->d()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/sdk/android/push/g/a;->g:[Ljava/lang/String;

    invoke-static {v5}, Lanet/channel/strategy/dispatch/DispatchConstants;->setAmdcServerDomain([Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lanet/channel/AwcnConfig;->setWifiInfoEnable(Z)V

    invoke-static {v5}, Lanet/channel/AwcnConfig;->setCarrierInfoEnable(Z)V

    :try_start_34
    invoke-static {v1, v5}, Lcom/taobao/agoo/TaobaoRegister;->setEnv(Landroid/content/Context;I)V

    new-instance v6, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v6}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    invoke-virtual {v6, v3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppSecret(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    const-string v4, "acs4public.m.taobao.com"

    invoke-virtual {v3, v4}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    const-string v4, "accscdn4public.m.taobao.com"

    invoke-virtual {v3, v4}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAccsHeartbeatEnable(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/taobao/accs/AccsClientConfig$Builder;->setConfigEnv(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/taobao/accs/AccsClientConfig$Builder;->loopChannelStart(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/taobao/accs/AccsClientConfig$Builder;->loopChannelInterval(J)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    move-result-object p1

    invoke-static {v1, v0}, Lcom/taobao/agoo/TaobaoRegister;->setAccsConfigTag(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/taobao/accs/ACCSClient;->init(Landroid/content/Context;Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    new-instance p1, Lcom/alibaba/sdk/android/push/g/a$1;

    invoke-direct {p1, p0, v2}, Lcom/alibaba/sdk/android/push/g/a$1;-><init>(Lcom/alibaba/sdk/android/push/g/a;Lcom/alibaba/sdk/android/ams/common/b/b;)V

    invoke-static {p1}, Lcom/taobao/agoo/TaobaoRegister;->setReportPushArrive(Lcom/aliyun/ams/emas/push/IReportPushArrive;)V
    :try_end_77
    .catch Lcom/taobao/accs/AccsException; {:try_start_34 .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception p1

    invoke-virtual {p1}, Lcom/taobao/accs/AccsException;->printStackTrace()V

    :goto_7c
    return-void
.end method

.method static synthetic c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-object v0
.end method

.method private d()V
    .registers 5

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/common/util/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    :try_start_a
    iget-object v1, p0, Lcom/alibaba/sdk/android/push/g/a;->j:Lcom/alibaba/sdk/android/push/g/a$b;

    sget-object v2, Lcom/alibaba/sdk/android/push/g/a;->h:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/g/a;->j:Lcom/alibaba/sdk/android/push/g/a$b;

    sget-object v2, Lcom/alibaba/sdk/android/push/g/a;->i:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v1

    sget-object v2, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v3, "Fail to register broad"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    invoke-static {v0}, Lcom/alibaba/sdk/android/push/common/util/AppInfoUtil;->isChannelProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/c/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/c/a;->a()Lcom/alibaba/sdk/android/push/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/c/a;->b()V

    :cond_31
    return-void
.end method

.method private e()V
    .registers 5

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/push/common/util/AppInfoUtil;->getChannelServiceData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, -0x1

    if-eq v3, v1, :cond_62

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_3e

    return-void

    :cond_3e
    new-instance v0, Lcom/alibaba/sdk/android/push/b/e;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->d:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->d:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw v0

    :cond_50
    new-instance v0, Lcom/alibaba/sdk/android/push/b/e;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->c:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->c:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw v0

    :cond_62
    new-instance v0, Lcom/alibaba/sdk/android/push/b/e;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->f:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->f:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw v0
.end method

.method private f()V
    .registers 8

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/b;->values()[Lcom/alibaba/sdk/android/push/common/a/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_6f

    aget-object v3, v0, v2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alibaba/sdk/android/push/common/util/AppInfoUtil;->isComponentExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6c

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/b;->c()Z

    move-result v4

    const-string/jumbo v5, "\u672a\u914d\u7f6e"

    if-nez v4, :cond_43

    sget-object v4, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; \u5efa\u8bae\u914d\u7f6e,\u53ef\u6709\u6548\u63d0\u9ad8\u63a8\u9001\u5230\u8fbe\u7387"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->w(Ljava/lang/String;)V

    goto :goto_6c

    :cond_43
    new-instance v0, Lcom/alibaba/sdk/android/push/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->g:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->g:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw v0

    :cond_6c
    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6f
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->c:Z

    if-eqz v0, :cond_e

    sget-object p1, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "Already startReg, skip."

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_36

    monitor-exit p0

    return-void

    :cond_e
    const/4 v0, 0x1

    :try_start_f
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->c:Z

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/a;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    new-instance v0, Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/g/a$a;-><init>(Lcom/alibaba/sdk/android/push/g/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    new-instance v1, Lcom/alibaba/sdk/android/push/g/a$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/push/g/a$2;-><init>(Lcom/alibaba/sdk/android/push/g/a;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/g/a$a;->a(Lcom/alibaba/sdk/android/push/g/c;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a;->a:Lcom/alibaba/sdk/android/push/g/a$a;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/a$a;->start()V

    sget-object p1, Lcom/alibaba/sdk/android/push/g/a;->e:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "getLooper called."

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_36

    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ZJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/push/g/a;->b(ZJ)V

    return-void
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/sdk/android/push/g/a;->b(ZJ)V

    return-void
.end method
