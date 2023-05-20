.class final Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;
.super Ljava/lang/Object;
.source "GenericInteractiveState.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/interactive/InteractiveState;


# static fields
.field static final INTERACTIVE_STATE_ID_KEY:Ljava/lang/String; = "interactiveStateId"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.interactive.GenericInteractiveState"

.field static final REQUEST_LIST_KEY:Ljava/lang/String; = "requestRecords"

.field static final SAVED_INSTANCE_STATE_KEY:Ljava/lang/String;


# instance fields
.field private backingFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final interactiveRequestMap:Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;

.field private final requests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final responseManager:Lcom/amazon/identity/auth/device/ResponseManager;

.field private stateId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/identity/auth/device/interactive/InteractiveState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".instanceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->SAVED_INSTANCE_STATE_KEY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;)V
    .registers 4

    .line 36
    invoke-static {}, Lcom/amazon/identity/auth/device/ResponseManager;->getInstance()Lcom/amazon/identity/auth/device/ResponseManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->getInstance()Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;-><init>(Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;Lcom/amazon/identity/auth/device/ResponseManager;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;Lcom/amazon/identity/auth/device/ResponseManager;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;)V
    .registers 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->backingFragment:Ljava/lang/ref/WeakReference;

    .line 43
    iput-object p2, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->responseManager:Lcom/amazon/identity/auth/device/ResponseManager;

    .line 44
    iput-object p3, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->interactiveRequestMap:Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;

    .line 45
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->requests:Ljava/util/Set;

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->stateId:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method doProcessPendingResponses(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V
    .registers 10

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->requests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;

    .line 94
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->getRequestId()Ljava/lang/String;

    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->responseManager:Lcom/amazon/identity/auth/device/ResponseManager;

    invoke-virtual {v4, v3}, Lcom/amazon/identity/auth/device/ResponseManager;->hasPendingResponseForRequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 97
    invoke-virtual {p0, v2}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->getRequestContextForRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object v4

    if-ne v4, p1, :cond_b

    .line 100
    sget-object v5, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InteractiveState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->stateId:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": Processing request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v5, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->responseManager:Lcom/amazon/identity/auth/device/ResponseManager;

    invoke-virtual {v5, v3}, Lcom/amazon/identity/auth/device/ResponseManager;->removePendingResponse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->processResponse(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Landroid/net/Uri;)V

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 106
    :cond_56
    iget-object p1, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->requests:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method getId()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->stateId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRequestContextForRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;
    .registers 3

    .line 117
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->getRequestSourceForRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)Ljava/lang/Object;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->interactiveRequestMap:Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestMap;->getRequestContextForSource(Ljava/lang/Object;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object p1

    return-object p1
.end method

.method getRequestSourceForRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)Ljava/lang/Object;
    .registers 3

    .line 135
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->getFragmentWrapper()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 137
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->backingFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->getFragment(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-nez p1, :cond_22

    .line 142
    iget-object p1, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->backingFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;

    invoke-interface {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->getParentActivity()Ljava/lang/Object;

    move-result-object p1

    :cond_22
    if-nez p1, :cond_30

    .line 145
    iget-object p1, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->backingFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;

    invoke-interface {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->getApplicationContext()Ljava/lang/Object;

    move-result-object p1

    :cond_30
    return-object p1
.end method

.method getRequests()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->requests:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized onRequestStart(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)V
    .registers 6

    monitor-enter p0

    .line 59
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->getFragmentWrapper()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "activity"

    goto :goto_c

    :cond_a
    const-string v0, "fragment"

    .line 60
    :goto_c
    sget-object v1, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractiveState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->stateId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Recording "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " request "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 63
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized processPendingResponses(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V
    .registers 4

    monitor-enter p0

    .line 83
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->shouldAttemptProcessingResponses()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 84
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->doProcessPendingResponses(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V

    goto :goto_28

    .line 86
    :cond_b
    sget-object p1, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractiveState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->stateId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": No responses to process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 88
    :goto_28
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readFromBundle(Landroid/os/Bundle;)V
    .registers 6

    if-eqz p1, :cond_54

    .line 156
    sget-object v0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->SAVED_INSTANCE_STATE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 158
    sget-object v0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Restoring interactive state from saved instance state"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "interactiveStateId"

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    .line 162
    sget-object v0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Restoring interactive state from instance state but no state ID found"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 164
    :cond_21
    sget-object v1, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reassigning interactive state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->stateId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->stateId:Ljava/util/UUID;

    :goto_47
    const-string v0, "requestRecords"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 170
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_54
    return-void
.end method

.method public shouldAttemptProcessingResponses()Z
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->requests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 71
    :goto_d
    iget-object v3, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->responseManager:Lcom/amazon/identity/auth/device/ResponseManager;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/ResponseManager;->size()I

    move-result v3

    if-lez v3, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v2

    :goto_18
    if-eqz v0, :cond_1d

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .registers 5

    .line 181
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->requests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->stateId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "interactiveStateId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->requests:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "requestRecords"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 186
    sget-object v1, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->SAVED_INSTANCE_STATE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 187
    sget-object p1, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractiveState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->stateId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": writing to save instance state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-void
.end method
