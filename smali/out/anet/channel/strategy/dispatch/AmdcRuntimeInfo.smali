.class public Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.AmdcRuntimeInfo"

.field private static volatile amdcLimitLevel:I = 0x0

.field private static volatile amdcLimitTime:J = 0x0L

.field public static volatile appChannel:Ljava/lang/String; = null

.field public static volatile appName:Ljava/lang/String; = null

.field public static volatile appVersion:Ljava/lang/String; = null

.field private static volatile context:Landroid/content/Context; = null

.field private static volatile forceHttps:Z = false

.field private static iSign:Lanet/channel/strategy/dispatch/IAmdcSign;

.field public static volatile latitude:D

.field public static volatile longitude:D

.field private static params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmdcLimitLevel()I
    .registers 4

    .line 50
    sget v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitLevel:I

    if-lez v0, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 51
    sput-wide v2, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitTime:J

    const/4 v0, 0x0

    .line 52
    sput v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitLevel:I

    .line 54
    :cond_16
    sget v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitLevel:I

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 63
    sget-object v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getParams()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;

    monitor-enter v0

    .line 94
    :try_start_3
    sget-object v1, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->params:Ljava/util/Map;

    if-nez v1, :cond_b

    .line 95
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_14

    monitor-exit v0

    return-object v1

    .line 97
    :cond_b
    :try_start_b
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->params:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSign()Lanet/channel/strategy/dispatch/IAmdcSign;
    .registers 1

    .line 71
    sget-object v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->iSign:Lanet/channel/strategy/dispatch/IAmdcSign;

    return-object v0
.end method

.method public static isForceHttps()Z
    .registers 1

    .line 101
    sget-boolean v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->forceHttps:Z

    return v0
.end method

.method public static setAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 81
    sput-object p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->appName:Ljava/lang/String;

    .line 82
    sput-object p1, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->appVersion:Ljava/lang/String;

    .line 83
    sput-object p2, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->appChannel:Ljava/lang/String;

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    .line 59
    sput-object p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->context:Landroid/content/Context;

    return-void
.end method

.method public static setForceHttps(Z)V
    .registers 1

    .line 105
    sput-boolean p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->forceHttps:Z

    return-void
.end method

.method public static declared-synchronized setParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;

    monitor-enter v0

    .line 87
    :try_start_3
    sget-object v1, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->params:Ljava/util/Map;

    if-nez v1, :cond_e

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->params:Ljava/util/Map;

    .line 90
    :cond_e
    sget-object v1, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->params:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 91
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setSign(Lanet/channel/strategy/dispatch/IAmdcSign;)V
    .registers 1

    .line 67
    sput-object p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->iSign:Lanet/channel/strategy/dispatch/IAmdcSign;

    return-void
.end method

.method public static updateAmdcLimit(II)V
    .registers 7

    const/4 v0, 0x4

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "level"

    aput-object v2, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "time"

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "awcn.AmdcRuntimeInfo"

    const-string v3, "set amdc limit"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p0, :cond_36

    if-le p0, v2, :cond_29

    goto :goto_36

    .line 45
    :cond_29
    sput p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitLevel:I

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long p0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    add-long/2addr v0, p0

    sput-wide v0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->amdcLimitTime:J

    :cond_36
    :goto_36
    return-void
.end method

.method public static updateLocation(DD)V
    .registers 4

    .line 76
    sput-wide p0, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->latitude:D

    .line 77
    sput-wide p2, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->longitude:D

    return-void
.end method
