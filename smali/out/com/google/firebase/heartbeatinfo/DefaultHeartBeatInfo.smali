.class public Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;
.super Ljava/lang/Object;
.source "DefaultHeartBeatInfo.java"

# interfaces
.implements Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;


# static fields
.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final consumers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private storageProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$5;->lambdaFactory$()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/firebase/components/Lazy;

    invoke-static {p1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$1;->lambdaFactory$(Landroid/content/Context;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, v0, p2, p1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;-><init>(Lcom/google/firebase/inject/Provider;Ljava/util/Set;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/inject/Provider;Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 63
    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->consumers:Ljava/util/Set;

    .line 64
    iput-object p3, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static component()Lcom/google/firebase/components/Component;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Component<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;"
        }
    .end annotation

    .line 136
    const-class v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 137
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v1, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;

    .line 138
    invoke-static {v1}, Lcom/google/firebase/components/Dependency;->setOf(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$4;->lambdaFactory$()Lcom/google/firebase/components/ComponentFactory;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$component$4(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;
    .registers 4

    .line 140
    new-instance v0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;

    invoke-interface {p0, v2}, Lcom/google/firebase/components/ComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic lambda$getAndClearStoredHeartBeatInfo$2(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object p0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getStoredHeartBeats(Z)Ljava/util/List;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getLastGlobalHeartBeat()J

    move-result-wide v2

    .line 94
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;

    .line 97
    invoke-virtual {v4}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getMillis()J

    move-result-wide v5

    .line 96
    invoke-static {v2, v3, v5, v6}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->isSameDateUtc(JJ)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 99
    sget-object v6, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->COMBINED:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    goto :goto_35

    .line 101
    :cond_33
    sget-object v6, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->SDK:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    :goto_35
    if-eqz v5, :cond_3b

    .line 104
    invoke-virtual {v4}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getMillis()J

    move-result-wide v2

    .line 108
    :cond_3b
    invoke-virtual {v4}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getSdkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/firebase/heartbeatinfo/SdkHeartBeatResult;->getMillis()J

    move-result-wide v7

    .line 107
    invoke-static {v5, v7, v8, v6}, Lcom/google/firebase/heartbeatinfo/HeartBeatResult;->create(Ljava/lang/String;JLcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;)Lcom/google/firebase/heartbeatinfo/HeartBeatResult;

    move-result-object v4

    .line 106
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_4b
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_54

    .line 111
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->updateGlobalHeartBeat(J)V

    :cond_54
    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;
    .registers 1

    .line 51
    invoke-static {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->getInstance(Landroid/content/Context;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "heartbeat-information-executor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$storeHeartBeatInfo$3(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;Ljava/lang/String;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 126
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 127
    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendSdkHeartBeat(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 129
    iget-object p0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->storeHeartBeatInformation(Ljava/lang/String;J)V

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAndClearStoredHeartBeatInfo()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatResult;",
            ">;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getHeartBeatCode(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    .line 71
    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendSdkHeartBeat(Ljava/lang/String;J)Z

    move-result p1

    .line 72
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->storageProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->shouldSendGlobalHeartBeat(J)Z

    move-result v0

    if-eqz p1, :cond_23

    if-eqz v0, :cond_23

    .line 74
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->COMBINED:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object p1

    :cond_23
    if-eqz v0, :cond_28

    .line 76
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->GLOBAL:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object p1

    :cond_28
    if-eqz p1, :cond_2d

    .line 78
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->SDK:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object p1

    .line 80
    :cond_2d
    sget-object p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    return-object p1
.end method

.method public storeHeartBeatInfo(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->consumers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_e

    const/4 p1, 0x0

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 122
    :cond_e
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$Lambda$3;->lambdaFactory$(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
