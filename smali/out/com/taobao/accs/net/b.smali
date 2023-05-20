.class public abstract Lcom/taobao/accs/net/b;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final ACCS_RECEIVE_TIMEOUT:I = 0x9c40

.field public static final INAPP:I = 0x1

.field public static final SERVICE:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field protected c:I

.field protected d:Landroid/content/Context;

.field protected e:Lcom/taobao/accs/data/d;

.field protected f:I

.field protected volatile g:Z

.field public h:Lcom/taobao/accs/client/c;

.field public i:Lcom/taobao/accs/AccsClientConfig;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 8

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/taobao/accs/net/b;->f:I

    const-wide/16 v1, 0x0

    .line 82
    iput-wide v1, p0, Lcom/taobao/accs/net/b;->n:J

    .line 84
    iput-boolean v0, p0, Lcom/taobao/accs/net/b;->g:Z

    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    .line 94
    new-instance v1, Lcom/taobao/accs/net/BaseConnection$1;

    invoke-direct {v1, p0}, Lcom/taobao/accs/net/BaseConnection$1;-><init>(Lcom/taobao/accs/net/b;)V

    iput-object v1, p0, Lcom/taobao/accs/net/b;->l:Ljava/util/LinkedHashMap;

    .line 106
    iput p2, p0, Lcom/taobao/accs/net/b;->c:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    .line 109
    invoke-static {p3}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object p2

    if-nez p2, :cond_55

    .line 111
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "BaseConnection config null!!"

    invoke-static {v1, v3, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :try_start_33
    new-instance v1, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v1}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/taobao/accs/ACCSManager;->getDefaultAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1, p3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    move-result-object p2
    :try_end_48
    .catch Lcom/taobao/accs/AccsException; {:try_start_33 .. :try_end_48} :catch_49

    goto :goto_55

    :catch_49
    move-exception p3

    .line 117
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "BaseConnection build config"

    invoke-static {v1, v3, p3, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 120
    :cond_55
    :goto_55
    invoke-virtual {p2}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 123
    new-instance p2, Lcom/taobao/accs/data/d;

    invoke-direct {p2, p1, p0}, Lcom/taobao/accs/data/d;-><init>(Landroid/content/Context;Lcom/taobao/accs/net/b;)V

    iput-object p2, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    .line 124
    iget-object p1, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    iget p2, p0, Lcom/taobao/accs/net/b;->c:I

    iput p2, p1, Lcom/taobao/accs/data/d;->b:I

    .line 126
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "new connection"

    invoke-static {p1, p3, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const-string v1, "DISCONNECTED"

    if-eq p1, v0, :cond_15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    goto :goto_17

    :cond_f
    const-string v1, "DISCONNECTING"

    goto :goto_17

    :cond_12
    const-string v1, "CONNECTING"

    goto :goto_17

    :cond_15
    const-string v1, "CONNECTED"

    :cond_17
    :goto_17
    return-object v1
.end method

.method public abstract a()V
.end method

.method protected a(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    .line 386
    :try_start_1
    sget-object v1, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    .line 387
    sget v2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 388
    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    .line 389
    invoke-static {v1}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    goto :goto_18

    .line 390
    :cond_e
    sget v2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 391
    sget-object v1, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    .line 392
    invoke-static {v1}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    .line 394
    :cond_18
    :goto_18
    new-instance v2, Lanet/channel/Config$Builder;

    invoke-direct {v2}, Lanet/channel/Config$Builder;-><init>()V

    iget-object v3, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    .line 395
    invoke-virtual {v2, v3}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 396
    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanet/channel/Config$Builder;->setAppSecret(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 397
    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lanet/channel/Config$Builder;->setAuthCode(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v2

    .line 398
    invoke-virtual {v2, v1}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    .line 399
    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanet/channel/Config$Builder;->setTag(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object v1

    .line 402
    invoke-static {p1, v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Lanet/channel/Config;)V

    const-string p1, "acs"

    .line 404
    iget-object v1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_62

    iget-object v1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getInappPubKey()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_64

    :cond_62
    const-string p1, "open"

    .line 407
    :cond_64
    invoke-static {}, Lanet/channel/strategy/StrategyTemplate;->getInstance()Lanet/channel/strategy/StrategyTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http2"

    const-string v4, "0rtt"

    invoke-static {v3, v4, p1, v0}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lanet/channel/strategy/StrategyTemplate;->registerConnProtocol(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_79} :catch_7a

    goto :goto_86

    :catch_7a
    move-exception p1

    .line 409
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "initAwcn"

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_86
    return-void
.end method

.method public a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V
    .registers 4

    .line 414
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void
.end method

.method protected abstract a(Lcom/taobao/accs/data/Message;Z)V
.end method

.method protected a(Ljava/lang/String;ZJ)V
    .registers 12

    .line 260
    new-instance v6, Lcom/taobao/accs/net/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/accs/net/c;-><init>(Lcom/taobao/accs/net/b;Ljava/lang/String;JZ)V

    .line 271
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, p3, p4, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected abstract a(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract a(ZZ)V
.end method

.method protected a(Lcom/taobao/accs/data/Message;I)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 284
    :try_start_2
    iget v2, p1, Lcom/taobao/accs/data/Message;->R:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_8

    return v0

    .line 287
    :cond_8
    iget v2, p1, Lcom/taobao/accs/data/Message;->R:I

    add-int/2addr v2, v1

    iput v2, p1, Lcom/taobao/accs/data/Message;->R:I

    int-to-long v2, p2

    .line 288
    iput-wide v2, p1, Lcom/taobao/accs/data/Message;->Q:J

    .line 289
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reSend dataid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " retryTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/taobao/accs/data/Message;->R:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p2, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0, p1, v1}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_39} :catch_67

    .line 292
    :try_start_39
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 293
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    const-wide/16 v2, 0x0

    iput-wide v2, p2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->take_date:J

    .line 294
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    iput-wide v2, p2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->to_tnet_date:J

    .line 295
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p2

    iget v2, p1, Lcom/taobao/accs/data/Message;->R:I

    iput v2, p2, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->retry_times:I

    .line 297
    iget p2, p1, Lcom/taobao/accs/data/Message;->R:I

    if-ne p2, v1, :cond_8b

    const-string p2, "accs"

    const-string v2, "resend"

    const-string v3, "total"

    const-wide/16 v4, 0x0

    .line 298
    invoke-static {p2, v2, v3, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_64} :catch_65

    goto :goto_8b

    :catch_65
    move-exception p2

    goto :goto_69

    :catch_67
    move-exception p2

    move v1, v0

    .line 302
    :goto_69
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "reSend error"

    invoke-static {v2, v3, p2, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v2, Lcom/taobao/accs/a;->UNKNOWN_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    :cond_8b
    :goto_8b
    return v1
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 358
    iget-object v0, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1a

    move-object v3, v4

    goto :goto_1b

    :cond_1a
    move-object v3, p1

    :goto_1b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    :try_start_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object p1, v4

    :cond_34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_3e} :catch_3f

    goto :goto_4a

    :catch_3f
    move-exception p1

    const/4 v0, 0x0

    .line 365
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "InAppConnection"

    const-string v3, "getHost"

    invoke-static {v2, v3, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4a
    return-object v1
.end method

.method public abstract b()V
.end method

.method protected b(I)V
    .registers 6

    if-gez p1, :cond_38

    .line 311
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dataId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "reSendAck"

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/taobao/accs/net/b;->l:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/data/Message;

    if-eqz p1, :cond_38

    const/16 v0, 0x1388

    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;I)Z

    const-wide/16 v0, 0x0

    const-string p1, "accs"

    const-string v2, "resend"

    const-string v3, "ack"

    .line 315
    invoke-static {p1, v2, v3, v0, v1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_38
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 5

    .line 431
    :try_start_0
    new-instance v0, Lcom/taobao/accs/net/e;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/net/e;-><init>(Lcom/taobao/accs/net/b;Landroid/content/Context;)V

    const-wide/16 v1, 0x2710

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_1a

    :catch_d
    move-exception p1

    .line 460
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startChannelService"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1a
    return-void
.end method

.method public b(Lcom/taobao/accs/data/Message;Z)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 199
    iget-boolean v2, v1, Lcom/taobao/accs/data/Message;->c:Z

    const-string v3, "dataId"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v2, :cond_2e

    iget-object v2, v0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v6, v4

    const-string v3, "sendMessage ready no network"

    invoke-static {v2, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v2, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v3, Lcom/taobao/accs/a;->NO_NETWORK:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    .line 205
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v2

    const-wide/16 v7, 0x0

    if-eq v2, v6, :cond_43

    .line 206
    iget-object v2, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    iget-object v2, v2, Lcom/taobao/accs/data/d;->d:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v9, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    iget-object v10, v1, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_44

    :cond_43
    move-wide v9, v7

    :goto_44
    const-wide/16 v11, -0x1

    cmp-long v2, v9, v11

    if-nez v2, :cond_63

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v6, v4

    const-string v3, "sendMessage ready server limit high"

    invoke-static {v2, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v2, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v3, Lcom/taobao/accs/a;->SERVIER_HIGH_LIMIT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    :cond_63
    const-wide/16 v11, -0x3e8

    cmp-long v2, v9, v11

    if-nez v2, :cond_82

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v6, v4

    const-string v3, "sendMessage ready server limit high for brush"

    invoke-static {v2, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v2, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v3, Lcom/taobao/accs/a;->SERVIER_HIGH_LIMIT_BRUSH:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    :cond_82
    cmp-long v2, v9, v7

    const-string v8, "delay"

    const/4 v11, 0x4

    const/4 v12, 0x3

    const-string v13, "type"

    const/4 v14, 0x6

    if-lez v2, :cond_d6

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v17, v8

    iget-wide v7, v0, Lcom/taobao/accs/net/b;->n:J

    cmp-long v15, v15, v7

    if-lez v15, :cond_9c

    .line 222
    iput-wide v9, v1, Lcom/taobao/accs/data/Message;->Q:J

    goto :goto_a4

    :cond_9c
    add-long/2addr v7, v9

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v1, Lcom/taobao/accs/data/Message;->Q:J

    .line 226
    :goto_a4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/taobao/accs/data/Message;->Q:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/taobao/accs/net/b;->n:J

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v3, v8, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v8, v4

    aput-object v13, v8, v6

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v3

    invoke-static {v3}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v12

    aput-object v17, v8, v11

    iget-wide v9, v1, Lcom/taobao/accs/data/Message;->Q:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v2, 0x5

    aput-object v3, v8, v2

    const-string v2, "sendMessage ready delayed"

    invoke-static {v7, v2, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_139

    :cond_d6
    move-object/from16 v17, v8

    .line 229
    iget-object v7, v1, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const-string v8, "accs"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "sendMessage ready"

    if-eqz v7, :cond_10b

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v7

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v3, v9, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v9, v4

    aput-object v13, v9, v6

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v3

    invoke-static {v3}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v12

    aput-object v17, v9, v11

    iget-wide v10, v1, Lcom/taobao/accs/data/Message;->Q:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v2, 0x5

    aput-object v3, v9, v2

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_139

    .line 231
    :cond_10b
    sget-object v7, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v7}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v7

    if-eqz v7, :cond_139

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v7

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v3, v9, v5

    iget-object v3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    aput-object v3, v9, v4

    aput-object v13, v9, v6

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->a()I

    move-result v3

    invoke-static {v3}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v12

    aput-object v17, v9, v11

    iget-wide v10, v1, Lcom/taobao/accs/data/Message;->Q:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v2, 0x5

    aput-object v3, v9, v2

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_139
    :goto_139
    :try_start_139
    iget-object v2, v0, Lcom/taobao/accs/net/b;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 237
    iget-object v2, v0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/accs/net/b;->j:Ljava/lang/String;

    .line 240
    :cond_149
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/accs/data/Message;->g()Z

    move-result v2

    if-nez v2, :cond_153

    .line 241
    invoke-virtual/range {p0 .. p2}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_1ae

    .line 243
    :cond_153
    iget-object v2, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v3, Lcom/taobao/accs/a;->REQ_TIME_OUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v3

    const-string v7, "\u91cd\u8bd5\u6216\u8005\u5ef6\u671f\u7b49\u5bfc\u81f4\u7684\u8d85\u65f6\uff0c\u4e0d\u53d1\u9001"

    invoke-virtual {v3, v7}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V
    :try_end_168
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_139 .. :try_end_168} :catch_169

    goto :goto_1ae

    .line 246
    :catch_169
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getSendScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    .line 247
    iget-object v3, v0, Lcom/taobao/accs/net/b;->e:Lcom/taobao/accs/data/d;

    sget-object v7, Lcom/taobao/accs/a;->MESSAGE_QUEUE_FULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    const-string v6, "size"

    aput-object v6, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "sendMessage ready queue full"

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1ae
    return-void
.end method

.method public abstract c()Lcom/taobao/accs/ut/a/c;
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 465
    iget-object v0, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 468
    :try_start_6
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_18

    :catch_b
    move-exception v1

    .line 470
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "buildAuthUrl"

    invoke-static {v2, v4, v1, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 472
    :goto_18
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    .line 473
    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 476
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "auth?1="

    .line 477
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&2="

    .line 478
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&3="

    .line 479
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-object p1, p0, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    if-eqz p1, :cond_60

    const-string p1, "&4="

    .line 481
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->k:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_60
    const-string p1, "&5="

    .line 483
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/taobao/accs/net/b;->c:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&6="

    .line 484
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&7="

    .line 485
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&8="

    .line 486
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/taobao/accs/net/b;->c:I

    const/16 v0, 0xdd

    const/4 v1, 0x1

    if-ne p1, v1, :cond_93

    const-string p1, "1.1.2"

    goto :goto_97

    :cond_93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&9="

    .line 487
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&10="

    .line 488
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&11="

    .line 489
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&12="

    .line 490
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&13="

    .line 491
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&14="

    .line 492
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&15="

    .line 493
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&16="

    .line 494
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&17="

    .line 495
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&19="

    .line 496
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->k()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&20="

    .line 497
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p1}, Lcom/taobao/accs/AccsClientConfig;->getStoreId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method protected f()V
    .registers 6

    .line 327
    iget-object v0, p0, Lcom/taobao/accs/net/b;->o:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 328
    new-instance v0, Lcom/taobao/accs/net/d;

    invoke-direct {v0, p0}, Lcom/taobao/accs/net/d;-><init>(Lcom/taobao/accs/net/b;)V

    iput-object v0, p0, Lcom/taobao/accs/net/b;->o:Ljava/lang/Runnable;

    .line 340
    :cond_b
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->g()V

    .line 341
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/net/b;->o:Ljava/lang/Runnable;

    const-wide/32 v2, 0x9c40

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/b;->p:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected g()V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/taobao/accs/net/b;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 349
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_8
    return-void
.end method

.method protected h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/taobao/accs/client/c;
    .registers 6

    .line 422
    iget-object v0, p0, Lcom/taobao/accs/net/b;->h:Lcom/taobao/accs/client/c;

    if-nez v0, :cond_2d

    .line 423
    invoke-virtual {p0}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "configTag"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "new ClientManager"

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    new-instance v0, Lcom/taobao/accs/client/c;

    iget-object v1, p0, Lcom/taobao/accs/net/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getInappHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/accs/client/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/net/b;->h:Lcom/taobao/accs/client/c;

    .line 426
    :cond_2d
    iget-object v0, p0, Lcom/taobao/accs/net/b;->h:Lcom/taobao/accs/client/c;

    return-object v0
.end method

.method public k()Z
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getSecurity()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method
