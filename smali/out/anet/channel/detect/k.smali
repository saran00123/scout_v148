.class Lanet/channel/detect/k;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/detect/k;->a:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/util/concurrent/Future;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "Lorg/android/netutil/PingResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 140
    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/android/netutil/PingResponse;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-object p2, v0

    :goto_9
    if-nez p2, :cond_c

    return-void

    .line 146
    :cond_c
    invoke-virtual {p2}, Lorg/android/netutil/PingResponse;->getSuccessCnt()I

    move-result v1

    const/4 v2, 0x3

    rsub-int/lit8 v3, v1, 0x3

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {p2}, Lorg/android/netutil/PingResponse;->getResults()[Lorg/android/netutil/PingEntry;

    move-result-object v5

    .line 150
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1f
    if-ge v8, v6, :cond_34

    .line 152
    aget-object v9, v5, v8

    iget-wide v9, v9, Lorg/android/netutil/PingEntry;->rtt:D

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_31

    const-string v9, ","

    .line 155
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_34
    const/4 v5, 0x6

    .line 158
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "mtu"

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string/jumbo v7, "successCount"

    aput-object v7, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-string/jumbo v6, "timeoutCount"

    aput-object v6, v5, v2

    const/4 v2, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "anet.MTUDetector"

    const-string v6, "MTU detect result"

    invoke-static {v2, v6, v0, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    new-instance v0, Lanet/channel/statist/MtuDetectStat;

    invoke-direct {v0}, Lanet/channel/statist/MtuDetectStat;-><init>()V

    .line 160
    iput p1, v0, Lanet/channel/statist/MtuDetectStat;->mtu:I

    .line 161
    iput v1, v0, Lanet/channel/statist/MtuDetectStat;->pingSuccessCount:I

    .line 162
    iput v3, v0, Lanet/channel/statist/MtuDetectStat;->pingTimeoutCount:I

    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lanet/channel/statist/MtuDetectStat;->rtt:Ljava/lang/String;

    .line 164
    invoke-virtual {p2}, Lorg/android/netutil/PingResponse;->getErrcode()I

    move-result p1

    iput p1, v0, Lanet/channel/statist/MtuDetectStat;->errCode:I

    .line 165
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    invoke-interface {p1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    return-void
.end method

.method static synthetic a(Lanet/channel/detect/k;Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lanet/channel/detect/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 71
    invoke-static {}, Lanet/channel/AwcnConfig;->isNetworkDetectEnable()Z

    move-result v2

    const-string v3, "anet.MTUDetector"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_16

    .line 72
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "network detect closed."

    invoke-static {v3, v2, v5, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 75
    :cond_16
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "mtuDetectTask start"

    invoke-static {v3, v6, v5, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v6, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v7, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v2, v6, v7}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    .line 77
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return-void

    .line 81
    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 82
    sget-object v2, Lanet/channel/detect/k;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_46

    .line 83
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gez v2, :cond_46

    return-void

    .line 86
    :cond_46
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sp_mtu_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-interface {v2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v8, v6, v10

    if-gez v8, :cond_7b

    .line 89
    sget-object v2, Lanet/channel/detect/k;->a:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "mtuDetectTask in period of validity"

    invoke-static {v3, v2, v5, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 95
    :cond_7b
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v8

    const-string v10, "guide-acs.m.taobao.com"

    invoke-interface {v8, v10}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_98

    .line 96
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_98

    .line 97
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v8}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v8

    goto :goto_99

    :cond_98
    move-object v8, v5

    .line 99
    :goto_99
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a0

    return-void

    .line 103
    :cond_a0
    new-instance v16, Lorg/android/netutil/PingTask;

    const/16 v12, 0x3e8

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v16

    move-object v11, v8

    invoke-direct/range {v10 .. v15}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual/range {v16 .. v16}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object v16

    .line 105
    new-instance v17, Lorg/android/netutil/PingTask;

    const/16 v14, 0x494

    move-object/from16 v10, v17

    invoke-direct/range {v10 .. v15}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual/range {v17 .. v17}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object v15

    .line 106
    new-instance v17, Lorg/android/netutil/PingTask;

    const/16 v14, 0x4f8

    const/16 v18, 0x0

    move-object/from16 v10, v17

    move-object/from16 v19, v15

    move/from16 v15, v18

    invoke-direct/range {v10 .. v15}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual/range {v17 .. v17}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object v15

    .line 107
    new-instance v17, Lorg/android/netutil/PingTask;

    const/16 v14, 0x55c

    move-object/from16 v10, v17

    move-object/from16 v20, v15

    move/from16 v15, v18

    invoke-direct/range {v10 .. v15}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual/range {v17 .. v17}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object v15

    .line 108
    new-instance v17, Lorg/android/netutil/PingTask;

    const/16 v14, 0x598

    move-object/from16 v10, v17

    move-object v8, v15

    move/from16 v15, v18

    invoke-direct/range {v10 .. v15}, Lorg/android/netutil/PingTask;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual/range {v17 .. v17}, Lorg/android/netutil/PingTask;->launch()Ljava/util/concurrent/Future;

    move-result-object v10

    .line 112
    :try_start_f2
    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/android/netutil/PingResponse;
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f8} :catch_f9

    goto :goto_fa

    :catch_f9
    move-object v11, v5

    :goto_fa
    if-nez v11, :cond_fd

    goto :goto_16b

    .line 118
    :cond_fd
    invoke-virtual {v11}, Lorg/android/netutil/PingResponse;->getSuccessCnt()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_12c

    const/4 v1, 0x4

    .line 119
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "errCode"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {v11}, Lorg/android/netutil/PingResponse;->getErrcode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string/jumbo v2, "successCount"

    aput-object v2, v1, v13

    const/4 v2, 0x3

    invoke-virtual {v11}, Lorg/android/netutil/PingResponse;->getSuccessCnt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "MTU detect preTask error"

    invoke-static {v3, v2, v5, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16b

    :cond_12c
    const/16 v3, 0x4b0

    move-object/from16 v4, v19

    .line 122
    invoke-direct {v0, v3, v4}, Lanet/channel/detect/k;->a(ILjava/util/concurrent/Future;)V

    const/16 v3, 0x514

    move-object/from16 v4, v20

    .line 123
    invoke-direct {v0, v3, v4}, Lanet/channel/detect/k;->a(ILjava/util/concurrent/Future;)V

    const/16 v3, 0x578

    .line 124
    invoke-direct {v0, v3, v8}, Lanet/channel/detect/k;->a(ILjava/util/concurrent/Future;)V

    const/16 v3, 0x5b4

    .line 125
    invoke-direct {v0, v3, v10}, Lanet/channel/detect/k;->a(ILjava/util/concurrent/Future;)V

    const-wide/32 v3, 0x19bfcc00

    add-long/2addr v6, v3

    .line 127
    sget-object v3, Lanet/channel/detect/k;->a:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_16b
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 45
    new-instance v0, Lanet/channel/detect/l;

    invoke-direct {v0, p0}, Lanet/channel/detect/l;-><init>(Lanet/channel/detect/k;)V

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    return-void
.end method
