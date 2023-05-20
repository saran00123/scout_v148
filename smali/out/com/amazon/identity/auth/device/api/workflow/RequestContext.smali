.class public final Lcom/amazon/identity/auth/device/api/workflow/RequestContext;
.super Ljava/lang/Object;
.source "RequestContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.workflow.RequestContext"


# instance fields
.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveListener<",
            "***>;>;>;"
        }
    .end annotation
.end field

.field private final requestContextId:Ljava/util/UUID;

.field private final requestSource:Lcom/amazon/identity/auth/device/interactive/RequestSource;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/interactive/RequestSource;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_15

    .line 157
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestSource:Lcom/amazon/identity/auth/device/interactive/RequestSource;

    .line 158
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    .line 159
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->listeners:Ljava/util/Map;

    return-void

    .line 155
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "requestSource must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/workflow/ListenerNotFoundException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->getListenersInternal(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 56
    sget-object v0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)Ljava/util/UUID;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    return-object p0
.end method

.method public static create(Landroid/app/Activity;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    new-instance v0, Lcom/amazon/identity/auth/device/interactive/RequestSourceActivityWrapper;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/interactive/RequestSourceActivityWrapper;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->create(Lcom/amazon/identity/auth/device/interactive/RequestSource;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/app/Fragment;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;
    .registers 2

    .line 101
    new-instance v0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentWrapper;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->create(Lcom/amazon/identity/auth/device/interactive/RequestSource;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;
    .registers 2

    .line 73
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_b

    .line 74
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->create(Landroidx/fragment/app/FragmentActivity;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object p0

    return-object p0

    .line 75
    :cond_b
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 76
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->create(Landroid/app/Activity;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object p0

    return-object p0

    .line 78
    :cond_16
    new-instance v0, Lcom/amazon/identity/auth/device/interactive/RequestSourceContextWrapper;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/interactive/RequestSourceContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->create(Lcom/amazon/identity/auth/device/interactive/RequestSource;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroidx/fragment/app/Fragment;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;
    .registers 2

    .line 128
    new-instance v0, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->create(Lcom/amazon/identity/auth/device/interactive/RequestSource;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroidx/fragment/app/FragmentActivity;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    new-instance v0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->create(Lcom/amazon/identity/auth/device/interactive/RequestSource;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object p0

    return-object p0
.end method

.method private static create(Lcom/amazon/identity/auth/device/interactive/RequestSource;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;
    .registers 6

    .line 139
    invoke-interface {p0}, Lcom/amazon/identity/auth/device/interactive/RequestSource;->getBackingObject()Ljava/lang/Object;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->getInstance()Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->getRequestContextForSource(Ljava/lang/Object;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object v1

    const-string v2, "requestSource="

    if-nez v1, :cond_48

    .line 142
    new-instance v1, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    invoke-direct {v1, p0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;-><init>(Lcom/amazon/identity/auth/device/interactive/RequestSource;)V

    .line 143
    invoke-static {}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->getInstance()Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->putRequestContextForSource(Ljava/lang/Object;Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V

    .line 144
    sget-object v0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created RequestContext "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {p0}, Lcom/amazon/identity/auth/device/interactive/RequestSource;->getBackingObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-static {v0, v3, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 147
    :cond_48
    sget-object v0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reusing RequestContext "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {p0}, Lcom/amazon/identity/auth/device/interactive/RequestSource;->getBackingObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-static {v0, v3, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    return-object v1
.end method

.method private getListenersInternal(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/workflow/ListenerNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_97

    .line 385
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->listeners:Ljava/util/Map;

    monitor-enter v0

    .line 386
    :try_start_5
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 387
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_94

    if-eqz v1, :cond_65

    .line 388
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    if-nez p2, :cond_1a

    const/4 p1, 0x0

    return-object p1

    .line 399
    :cond_1a
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 400
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;

    .line 402
    :try_start_33
    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_3a} :catch_3b

    goto :goto_27

    :catch_3b
    move-exception v0

    .line 404
    new-instance v1, Lcom/amazon/identity/auth/device/api/workflow/ListenerNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve listener of class type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" for request type \""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/amazon/identity/auth/device/api/workflow/ListenerNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_64
    return-object v0

    .line 389
    :cond_65
    new-instance p2, Lcom/amazon/identity/auth/device/api/workflow/ListenerNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No listeners were registered with type \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" for RequestContext "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Listener types present: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->listeners:Ljava/util/Map;

    .line 390
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/api/workflow/ListenerNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_94
    move-exception p1

    .line 387
    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw p1

    .line 381
    :cond_97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "requestType must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public assertListenerPresent(Lcom/amazon/identity/auth/device/interactive/InteractiveAPI;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/workflow/ListenerNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 311
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveAPI;->getRequestType()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->getListenersInternal(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    return-void

    .line 309
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "api must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAggregateListener(Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;)Lcom/amazon/identity/auth/device/interactive/InteractiveListener;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveListener<",
            "TS;TU;TV;>;S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveRequest<",
            "TT;TS;TU;TV;>;)",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveListener<",
            "TS;TU;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/workflow/ListenerNotFoundException;
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;->getListenerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->getListeners(Lcom/amazon/identity/auth/device/interactive/InteractiveAPI;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;->getRequestType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/amazon/identity/auth/device/interactive/AggregateInteractiveListener;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestSource:Lcom/amazon/identity/auth/device/interactive/RequestSource;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/interactive/RequestSource;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListeners(Lcom/amazon/identity/auth/device/interactive/InteractiveAPI;Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveAPI;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_15

    if-eqz p2, :cond_d

    .line 351
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveAPI;->getRequestType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->getListenersInternal(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 349
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listenerClass must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "api must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isHookNeededOnUIResume()Z
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestSource:Lcom/amazon/identity/auth/device/interactive/RequestSource;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/interactive/RequestSource;->isHookNeededOnUIResume()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    .line 228
    sget-object v0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": onResume"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestSource:Lcom/amazon/identity/auth/device/interactive/RequestSource;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/interactive/RequestSource;->getInteractiveState()Lcom/amazon/identity/auth/device/interactive/InteractiveState;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 231
    invoke-interface {v0, p0}, Lcom/amazon/identity/auth/device/interactive/InteractiveState;->processPendingResponses(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V

    goto :goto_44

    .line 233
    :cond_29
    sget-object v0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": could not retrieve interactive state to process pending responses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method

.method public onStartRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)V
    .registers 5

    if-eqz p1, :cond_2c

    .line 249
    sget-object v0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onStartRequest for request ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestSource:Lcom/amazon/identity/auth/device/interactive/RequestSource;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/interactive/RequestSource;->onStartRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)V

    return-void

    .line 247
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "request must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processResponse(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Landroid/net/Uri;)V
    .registers 7

    if-eqz p1, :cond_51

    if-eqz p2, :cond_48

    .line 268
    sget-object v0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": processing response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestSource:Lcom/amazon/identity/auth/device/interactive/RequestSource;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/interactive/RequestSource;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 271
    sget-object v1, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->THREAD_POOL:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/amazon/identity/auth/device/api/workflow/RequestContext$1;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext$1;-><init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;Landroid/net/Uri;Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 266
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "uri must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 263
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerListener(Lcom/amazon/identity/auth/device/interactive/InteractiveListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveListener<",
            "***>;)V"
        }
    .end annotation

    if-eqz p1, :cond_56

    .line 184
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;->getRequestType()Ljava/lang/String;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": registerListener for of request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->listeners:Ljava/util/Map;

    monitor-enter v1

    .line 188
    :try_start_3a
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->listeners:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_4e

    .line 190
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 191
    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->listeners:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_4e
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    monitor-exit v1

    return-void

    :catchall_53
    move-exception p1

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_53

    throw p1

    .line 182
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterListener(Lcom/amazon/identity/auth/device/interactive/InteractiveListener;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveListener<",
            "***>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_50

    .line 208
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveListener;->getRequestType()Ljava/lang/String;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->requestContextId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": unregisterListener for listener of request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->listeners:Ljava/util/Map;

    monitor-enter v1

    .line 212
    :try_start_3a
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->listeners:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_47

    const/4 p1, 0x0

    .line 214
    monitor-exit v1

    return p1

    .line 216
    :cond_47
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_4d
    move-exception p1

    .line 218
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_4d

    throw p1

    .line 206
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
