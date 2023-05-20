.class public abstract Lcom/amazon/identity/auth/device/utils/LWAServiceWrapper;
.super Ljava/lang/Object;
.source "LWAServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.utils.LWAServiceWrapper"

.field private static final SERVICE_BINDING_RETRY_ATTEMPTS:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doWork(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final execute(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move v1, v0

    :goto_5
    const/4 v4, 0x3

    if-gt v1, v4, :cond_29

    if-ne v1, v4, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    move v4, v0

    .line 47
    :goto_d
    :try_start_d
    invoke-virtual {p2, p1, v4}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->getRemoteAndroidService(Landroid/content/Context;Z)Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 50
    invoke-virtual {p0, p1, v4}, Lcom/amazon/identity/auth/device/utils/LWAServiceWrapper;->doWork(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    invoke-static {p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->unbind(Landroid/content/Context;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_1b

    return-object v2

    :catch_1b
    move-exception v3

    .line 55
    sget-object v4, Lcom/amazon/identity/auth/device/utils/LWAServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "RemoteException"

    invoke-static {v4, v5, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    invoke-static {p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->unbind(Landroid/content/Context;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_29
    if-nez v2, :cond_38

    if-nez v3, :cond_2e

    goto :goto_38

    .line 64
    :cond_2e
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object p2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_THREAD:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v0, "Service Failure"

    invoke-direct {p1, v0, v3, p2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1

    :cond_38
    :goto_38
    return-object v2
.end method
