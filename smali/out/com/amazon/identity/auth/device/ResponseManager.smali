.class public final Lcom/amazon/identity/auth/device/ResponseManager;
.super Ljava/lang/Object;
.source "ResponseManager.java"


# static fields
.field private static INSTANCE:Lcom/amazon/identity/auth/device/ResponseManager; = null

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ResponseManager"

.field static final MAX_RESPONSES:I = 0xa


# instance fields
.field private final pendingResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
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
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ResponseManager;->pendingResponses:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/identity/auth/device/ResponseManager;
    .registers 2

    const-class v0, Lcom/amazon/identity/auth/device/ResponseManager;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/ResponseManager;->INSTANCE:Lcom/amazon/identity/auth/device/ResponseManager;

    if-nez v1, :cond_e

    .line 39
    new-instance v1, Lcom/amazon/identity/auth/device/ResponseManager;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/ResponseManager;-><init>()V

    sput-object v1, Lcom/amazon/identity/auth/device/ResponseManager;->INSTANCE:Lcom/amazon/identity/auth/device/ResponseManager;

    .line 41
    :cond_e
    sget-object v1, Lcom/amazon/identity/auth/device/ResponseManager;->INSTANCE:Lcom/amazon/identity/auth/device/ResponseManager;
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
.method public declared-synchronized hasPendingResponseForRequest(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ResponseManager;->pendingResponses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putPendingResponse(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7

    monitor-enter p0

    if-eqz p1, :cond_60

    if-eqz p2, :cond_58

    .line 72
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ResponseManager;->pendingResponses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3b

    .line 74
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ResponseManager;->pendingResponses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/amazon/identity/auth/device/ResponseManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purging pending response for request ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ResponseManager;->pendingResponses:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 78
    :cond_3b
    sget-object v0, Lcom/amazon/identity/auth/device/ResponseManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording pending response for request ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ResponseManager;->pendingResponses:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_68

    .line 80
    monitor-exit p0

    return-void

    .line 70
    :cond_58
    :try_start_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "responseUri must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "requestId must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removePendingResponse(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    monitor-enter p0

    .line 88
    :try_start_1
    sget-object v0, Lcom/amazon/identity/auth/device/ResponseManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dequeuing pending response for request ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ResponseManager;->pendingResponses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object p1

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()I
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ResponseManager;->pendingResponses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
