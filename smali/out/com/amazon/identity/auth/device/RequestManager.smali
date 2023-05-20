.class public final Lcom/amazon/identity/auth/device/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# static fields
.field private static INSTANCE:Lcom/amazon/identity/auth/device/RequestManager; = null

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.RequestManager"

.field private static final MAX_ACTIVE_REQUESTS:I = 0xa

.field public static final REQUEST_ID_FIELD:Ljava/lang/String; = "clientRequestId"

.field public static final STATE_PARAMETER_NAME:Ljava/lang/String; = "state"


# instance fields
.field private final activeRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/AbstractRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final externalBrowserManager:Lcom/amazon/identity/auth/device/ExternalBrowserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/amazon/identity/auth/device/ExternalBrowserManager;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ExternalBrowserManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/RequestManager;-><init>(Lcom/amazon/identity/auth/device/ExternalBrowserManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ExternalBrowserManager;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/RequestManager;->activeRequests:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lcom/amazon/identity/auth/device/RequestManager;->externalBrowserManager:Lcom/amazon/identity/auth/device/ExternalBrowserManager;

    return-void
.end method

.method private cleanupOldActiveRequests()V
    .registers 6

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/RequestManager;->activeRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_44

    .line 105
    iget-object v0, p0, Lcom/amazon/identity/auth/device/RequestManager;->activeRequests:Ljava/util/Map;

    monitor-enter v0

    .line 107
    :try_start_d
    iget-object v1, p0, Lcom/amazon/identity/auth/device/RequestManager;->activeRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    sget-object v2, Lcom/amazon/identity/auth/device/RequestManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purging active request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/amazon/identity/auth/device/RequestManager;->activeRequests:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lcom/amazon/identity/auth/device/ResponseManager;->getInstance()Lcom/amazon/identity/auth/device/ResponseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/identity/auth/device/ResponseManager;->removePendingResponse(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    monitor-exit v0

    goto :goto_0

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_d .. :try_end_43} :catchall_41

    throw v1

    :cond_44
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/identity/auth/device/RequestManager;
    .registers 2

    const-class v0, Lcom/amazon/identity/auth/device/RequestManager;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/RequestManager;->INSTANCE:Lcom/amazon/identity/auth/device/RequestManager;

    if-nez v1, :cond_e

    .line 45
    new-instance v1, Lcom/amazon/identity/auth/device/RequestManager;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/RequestManager;-><init>()V

    sput-object v1, Lcom/amazon/identity/auth/device/RequestManager;->INSTANCE:Lcom/amazon/identity/auth/device/RequestManager;

    .line 47
    :cond_e
    sget-object v1, Lcom/amazon/identity/auth/device/RequestManager;->INSTANCE:Lcom/amazon/identity/auth/device/RequestManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getRequestIdFromResponseUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/ResponseUri;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/endpoint/ResponseUri;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/endpoint/ResponseUri;->getStateValues()Ljava/util/Map;

    move-result-object v0

    const-string v1, "clientRequestId"

    .line 117
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_14

    return-object v0

    .line 120
    :cond_14
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Response does not have a requestId: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method public static isInteractiveRequest(Landroid/net/Uri;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/ResponseUri;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/endpoint/ResponseUri;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/endpoint/ResponseUri;->getStateValues()Ljava/util/Map;

    move-result-object p0

    const-string v0, "InteractiveRequestType"

    .line 127
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static setInstance(Lcom/amazon/identity/auth/device/RequestManager;)V
    .registers 1

    .line 51
    sput-object p0, Lcom/amazon/identity/auth/device/RequestManager;->INSTANCE:Lcom/amazon/identity/auth/device/RequestManager;

    return-void
.end method


# virtual methods
.method public executeRequest(Lcom/amazon/identity/auth/device/AbstractRequest;Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/amazon/identity/auth/device/RequestManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AbstractRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AbstractRequest;->canAttempt()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 60
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AbstractRequest;->incrementAttemptCount()V

    .line 62
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/RequestManager;->cleanupOldActiveRequests()V

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/RequestManager;->activeRequests:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AbstractRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/amazon/identity/auth/device/RequestManager;->externalBrowserManager:Lcom/amazon/identity/auth/device/ExternalBrowserManager;

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/AbstractRequest;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/amazon/identity/auth/device/ExternalBrowserManager;->openUrl(Lcom/amazon/identity/auth/device/AbstractRequest;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 57
    :cond_39
    new-instance p2, Lcom/amazon/identity/auth/device/AuthError;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AbstractRequest;->getRequestId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Reached maximum attempts for the request: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {p2, p1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p2
.end method

.method public getRequestContextForRequest(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/amazon/identity/auth/device/RequestManager;->activeRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/AbstractRequest;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return-object v0

    .line 95
    :cond_c
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AbstractRequest;->getOriginalRequest()Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    .line 98
    :cond_13
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AbstractRequest;->getOriginalRequest()Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;->getRequestContext()Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object p1

    return-object p1
.end method

.method public handleResponse(Landroid/net/Uri;Landroid/content/Context;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/RequestManager;->handleResponse(Landroid/net/Uri;Landroid/content/Context;Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)Z

    move-result p1

    return p1
.end method

.method public handleResponse(Landroid/net/Uri;Landroid/content/Context;Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/amazon/identity/auth/device/RequestManager;->getRequestIdFromResponseUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/amazon/identity/auth/device/RequestManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling response for request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/amazon/identity/auth/device/RequestManager;->activeRequests:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/AbstractRequest;

    if-eqz v1, :cond_64

    if-eqz p3, :cond_43

    .line 79
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/AbstractRequest;->getOriginalRequest()Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;->setRequestContext(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V

    .line 81
    :cond_43
    invoke-virtual {v1, p1, p2}, Lcom/amazon/identity/auth/device/AbstractRequest;->handleResponse(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_62

    .line 82
    sget-object p1, Lcom/amazon/identity/auth/device/RequestManager;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying request "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0, v1, p2}, Lcom/amazon/identity/auth/device/RequestManager;->executeRequest(Lcom/amazon/identity/auth/device/AbstractRequest;Landroid/content/Context;)V

    :cond_62
    const/4 p1, 0x1

    return p1

    :cond_64
    const/4 p1, 0x0

    return p1
.end method
