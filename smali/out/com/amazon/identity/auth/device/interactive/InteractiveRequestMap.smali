.class public final Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;
.super Ljava/lang/Object;
.source "InteractiveRequestMap.java"


# static fields
.field private static INSTANCE:Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;


# instance fields
.field private final sourceContextMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lcom/amazon/identity/auth/device/api/workflow/RequestContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->sourceContextMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;
    .registers 2

    const-class v0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->INSTANCE:Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;

    if-nez v1, :cond_e

    .line 23
    new-instance v1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;-><init>()V

    sput-object v1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->INSTANCE:Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;

    .line 25
    :cond_e
    sget-object v1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->INSTANCE:Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getRequestContextForSource(Ljava/lang/Object;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->sourceContextMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    return-object p1
.end method

.method public putRequestContextForSource(Ljava/lang/Object;Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->sourceContextMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
