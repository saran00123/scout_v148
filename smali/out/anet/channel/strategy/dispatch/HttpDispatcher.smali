.class public Lanet/channel/strategy/dispatch/HttpDispatcher;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/dispatch/HttpDispatcher$a;,
        Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lanet/channel/strategy/dispatch/a;

.field private volatile c:Z

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 32
    new-instance v0, Lanet/channel/strategy/dispatch/a;

    invoke-direct {v0}, Lanet/channel/strategy/dispatch/a;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->b:Lanet/channel/strategy/dispatch/a;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->c:Z

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->d:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->e:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    invoke-direct {p0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/strategy/dispatch/e;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lanet/channel/strategy/dispatch/HttpDispatcher;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    .line 108
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 109
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 110
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->e:Ljava/util/Set;

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 112
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->e:Ljava/util/Set;

    sget-object v1, Lanet/channel/strategy/dispatch/DispatchConstants;->initHostArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_32
    return-void
.end method

.method public static getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;
    .registers 1

    .line 43
    sget-object v0, Lanet/channel/strategy/dispatch/HttpDispatcher$a;->a:Lanet/channel/strategy/dispatch/HttpDispatcher;

    return-object v0
.end method

.method public static setInitHosts(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_d

    const/4 v0, 0x0

    .line 98
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    sput-object p0, Lanet/channel/strategy/dispatch/DispatchConstants;->initHostArray:[Ljava/lang/String;

    :cond_d
    return-void
.end method


# virtual methods
.method a(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;

    .line 77
    :try_start_12
    invoke-interface {v1, p1}, Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;->onEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_6

    goto :goto_6

    :cond_16
    return-void
.end method

.method public declared-synchronized addHosts(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_11

    .line 90
    :try_start_3
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object p1, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    goto :goto_11

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1

    .line 93
    :cond_11
    :goto_11
    monitor-exit p0

    return-void
.end method

.method public addListener(Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;)V
    .registers 3

    .line 67
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized getInitHosts()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_1
    invoke-direct {p0}, Lanet/channel/strategy/dispatch/HttpDispatcher;->a()V

    .line 104
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitHostsChanged(Ljava/lang/String;)Z
    .registers 4

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 122
    :cond_8
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 124
    iget-object v1, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_15
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public removeListener(Lanet/channel/strategy/dispatch/HttpDispatcher$IDispatchEventListener;)V
    .registers 3

    .line 71
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendAmdcRequest(Ljava/util/Set;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "awcn.HttpDispatcher"

    if-eqz v0, :cond_41

    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_41

    :cond_11
    const/4 v0, 0x2

    .line 56
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v4

    const-string v5, "hosts"

    if-eqz v4, :cond_2a

    .line 57
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "sendAmdcRequest"

    invoke-static {v3, v1, v2, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_2a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "cv"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->b:Lanet/channel/strategy/dispatch/a;

    invoke-virtual {p1, v0}, Lanet/channel/strategy/dispatch/a;->a(Ljava/util/Map;)V

    return-void

    .line 52
    :cond_41
    :goto_41
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "invalid parameter"

    invoke-static {v3, p2, v2, p1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->c:Z

    return-void
.end method

.method public switchENV()V
    .registers 3

    .line 130
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 131
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 132
    iget-object v0, p0, Lanet/channel/strategy/dispatch/HttpDispatcher;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
