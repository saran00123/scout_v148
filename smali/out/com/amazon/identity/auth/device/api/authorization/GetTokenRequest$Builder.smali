.class public final Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;
.super Ljava/lang/Object;
.source "GetTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mRequest:Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    .line 75
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;-><init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$1;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;->mRequest:Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;

    return-void

    .line 73
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A RequestContext is necessary for making interactive requests"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addListener(Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;)Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;->mRequest:Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;->addListener(Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;)V

    return-object p0
.end method

.method public addScope(Lcom/amazon/identity/auth/device/api/authorization/Scope;)Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;->mRequest:Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;->addScope(Lcom/amazon/identity/auth/device/api/authorization/Scope;)V

    return-object p0
.end method

.method public varargs addScopes([Lcom/amazon/identity/auth/device/api/authorization/Scope;)Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;->mRequest:Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;->addScopes([Lcom/amazon/identity/auth/device/api/authorization/Scope;)V

    return-object p0
.end method

.method public build()Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;->mRequest:Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;->getListener()Lcom/amazon/identity/auth/device/api/authorization/GetTokenListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;->mRequest:Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;->getScopes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;->mRequest:Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;->getScopes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 121
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest$Builder;->mRequest:Lcom/amazon/identity/auth/device/api/authorization/GetTokenRequest;

    return-object v0

    .line 119
    :cond_1f
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_API:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "No scopes provided for the get token request"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    .line 115
    :cond_29
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_API:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "get token listener has not been registered"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method
