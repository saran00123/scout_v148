.class public Lanet/channel/strategy/StrategyCenter;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile instance:Lanet/channel/strategy/IStrategyInstance;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lanet/channel/strategy/IStrategyInstance;
    .registers 2

    .line 14
    sget-object v0, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    if-nez v0, :cond_17

    .line 15
    const-class v0, Lanet/channel/strategy/StrategyCenter;

    monitor-enter v0

    .line 16
    :try_start_7
    sget-object v1, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    if-nez v1, :cond_12

    .line 17
    new-instance v1, Lanet/channel/strategy/g;

    invoke-direct {v1}, Lanet/channel/strategy/g;-><init>()V

    sput-object v1, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    .line 19
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 21
    :cond_17
    :goto_17
    sget-object v0, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    return-object v0
.end method

.method public static setInstance(Lanet/channel/strategy/IStrategyInstance;)V
    .registers 1

    .line 25
    sput-object p0, Lanet/channel/strategy/StrategyCenter;->instance:Lanet/channel/strategy/IStrategyInstance;

    return-void
.end method
