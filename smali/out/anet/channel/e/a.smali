.class public Lanet/channel/e/a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/e/a$b;,
        Lanet/channel/e/a$a;
    }
.end annotation


# static fields
.field private static a:Lanet/channel/e/a$b;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static e:J

.field private static f:Landroid/content/SharedPreferences;

.field private static g:Lanet/channel/strategy/IStrategyFilter;

.field private static h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static i:Lanet/channel/strategy/IStrategyListener;

.field private static j:Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lanet/channel/e/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lanet/channel/e/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/32 v0, 0x1499700

    .line 58
    sput-wide v0, Lanet/channel/e/a;->e:J

    .line 61
    new-instance v0, Lanet/channel/e/b;

    invoke-direct {v0}, Lanet/channel/e/b;-><init>()V

    sput-object v0, Lanet/channel/e/a;->g:Lanet/channel/strategy/IStrategyFilter;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lanet/channel/e/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    new-instance v0, Lanet/channel/e/c;

    invoke-direct {v0}, Lanet/channel/e/c;-><init>()V

    sput-object v0, Lanet/channel/e/a;->i:Lanet/channel/strategy/IStrategyListener;

    .line 104
    new-instance v0, Lanet/channel/e/d;

    invoke-direct {v0}, Lanet/channel/e/d;-><init>()V

    sput-object v0, Lanet/channel/e/a;->j:Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lanet/channel/strategy/IConnStrategy;)Lanet/channel/strategy/IConnStrategy;
    .registers 1

    .line 49
    invoke-static {p0}, Lanet/channel/e/a;->b(Lanet/channel/strategy/IConnStrategy;)Lanet/channel/strategy/IConnStrategy;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 49
    sput-object p0, Lanet/channel/e/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .registers 7

    const-string v0, "awcn.Http3ConnDetector"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "registerListener"

    const/4 v4, 0x2

    .line 190
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "http3Enable"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-static {}, Lanet/channel/AwcnConfig;->isHttp3Enable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v2, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 191
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lanet/channel/e/a;->f:Landroid/content/SharedPreferences;

    .line 193
    sget-object v3, Lanet/channel/e/a;->f:Landroid/content/SharedPreferences;

    const-string v4, "http3_detector_host"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lanet/channel/e/a;->b:Ljava/lang/String;

    .line 196
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v3

    invoke-static {v3}, Lanet/channel/e/a;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    .line 197
    sget-object v3, Lanet/channel/e/a;->j:Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;

    invoke-static {v3}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 198
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v3

    sget-object v4, Lanet/channel/e/a;->i:Lanet/channel/strategy/IStrategyListener;

    invoke-interface {v3, v4}, Lanet/channel/strategy/IStrategyInstance;->registerListener(Lanet/channel/strategy/IStrategyListener;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_46} :catch_47

    goto :goto_4f

    :catch_47
    move-exception v3

    .line 200
    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "[registerListener]error"

    invoke-static {v0, v4, v2, v3, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4f
    return-void
.end method

.method public static a(J)V
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_7

    return-void

    .line 210
    :cond_7
    sput-wide p0, Lanet/channel/e/a;->e:J

    return-void
.end method

.method public static a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .registers 12

    .line 112
    invoke-static {}, Lanet/channel/AwcnConfig;->isHttp3Enable()Z

    move-result v0

    const-string/jumbo v1, "startDetect"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "awcn.Http3ConnDetector"

    const/4 v5, 0x0

    if-nez v0, :cond_18

    .line 113
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "http3 global config close."

    aput-object v0, p0, v5

    invoke-static {v4, v1, v3, p0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 118
    :cond_18
    sget-object v0, Lanet/channel/e/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 119
    new-array p0, v5, [Ljava/lang/Object;

    const-string/jumbo v0, "tnet exception."

    invoke-static {v4, v0, v3, p0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 123
    :cond_29
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_30

    return-void

    .line 127
    :cond_30
    sget-object v0, Lanet/channel/e/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 128
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "host is null"

    aput-object v0, p0, v5

    invoke-static {v4, v1, v3, p0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 132
    :cond_42
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    sget-object v6, Lanet/channel/e/a;->b:Ljava/lang/String;

    sget-object v7, Lanet/channel/e/a;->g:Lanet/channel/strategy/IStrategyFilter;

    invoke-interface {v0, v6, v7}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;Lanet/channel/strategy/IStrategyFilter;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 134
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "http3 strategy is null."

    aput-object v0, p0, v5

    invoke-static {v4, v1, v3, p0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 139
    :cond_5e
    sget-object v1, Lanet/channel/e/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 141
    :try_start_66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 142
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v8, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v9, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v1, v8, v9}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lorg/android/spdy/SpdyAgent;->InitializeSecurityStuff()V

    const-string/jumbo v1, "tnet init http3."

    const/4 v8, 0x2

    .line 144
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "cost"

    aput-object v9, v8, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-static {v4, v1, v3, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_91} :catch_92

    goto :goto_a1

    :catch_92
    move-exception p0

    .line 146
    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "tnet init http3 error."

    invoke-static {v4, v1, v3, p0, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 147
    sget-object p0, Lanet/channel/e/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 152
    :cond_a1
    :goto_a1
    sget-object v1, Lanet/channel/e/a;->a:Lanet/channel/e/a$b;

    if-nez v1, :cond_ac

    .line 153
    new-instance v1, Lanet/channel/e/a$b;

    invoke-direct {v1}, Lanet/channel/e/a$b;-><init>()V

    sput-object v1, Lanet/channel/e/a;->a:Lanet/channel/e/a$b;

    .line 156
    :cond_ac
    sget-object v1, Lanet/channel/e/a;->a:Lanet/channel/e/a$b;

    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanet/channel/e/a$b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b9

    return-void

    .line 160
    :cond_b9
    new-instance v1, Lanet/channel/e/e;

    invoke-direct {v1, v0, p0}, Lanet/channel/e/e;-><init>(Ljava/util/List;Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    invoke-static {v1}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitDetectTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static a(Z)V
    .registers 3

    .line 221
    sget-object v0, Lanet/channel/e/a;->a:Lanet/channel/e/a$b;

    if-eqz v0, :cond_f

    .line 222
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/status/NetworkStatusHelper;->getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lanet/channel/e/a$b;->a(Ljava/lang/String;Z)V

    :cond_f
    return-void
.end method

.method private static b(Lanet/channel/strategy/IConnStrategy;)Lanet/channel/strategy/IConnStrategy;
    .registers 2

    .line 227
    new-instance v0, Lanet/channel/e/g;

    invoke-direct {v0, p0}, Lanet/channel/e/g;-><init>(Lanet/channel/strategy/IConnStrategy;)V

    return-object v0
.end method

.method public static b()Z
    .registers 2

    .line 214
    sget-object v0, Lanet/channel/e/a;->a:Lanet/channel/e/a$b;

    if-eqz v0, :cond_11

    .line 215
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/status/NetworkStatusHelper;->getUniqueId(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/e/a$b;->b(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .line 49
    sget-object v0, Lanet/channel/e/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Landroid/content/SharedPreferences;
    .registers 1

    .line 49
    sget-object v0, Lanet/channel/e/a;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 49
    sget-object v0, Lanet/channel/e/a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic f()Lanet/channel/e/a$b;
    .registers 1

    .line 49
    sget-object v0, Lanet/channel/e/a;->a:Lanet/channel/e/a$b;

    return-object v0
.end method

.method static synthetic g()J
    .registers 2

    .line 49
    sget-wide v0, Lanet/channel/e/a;->e:J

    return-wide v0
.end method
