.class public Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;
.super Lcom/amazon/identity/auth/device/AbstractRequest;
.source "AuthorizationRequest.java"


# instance fields
.field private final appInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

.field private final clientId:Ljava/lang/String;

.field private final listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

.field private final options:Landroid/os/Bundle;

.field private final scopes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V
    .registers 7

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AbstractRequest;-><init>(Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;)V

    .line 27
    iput-object p2, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->clientId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->scopes:[Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->options:Landroid/os/Bundle;

    .line 30
    iput-object p5, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->appInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    .line 31
    iput-object p6, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    if-eqz p1, :cond_1a

    .line 34
    iget-object p2, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->options:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->getRequestType()Ljava/lang/String;

    move-result-object p1

    const-string p3, "InteractiveRequestType"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public getUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->scopes:[Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->requestId:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->options:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->appInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->getOAuth2Url(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception p1

    .line 43
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_BAD_PARAM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "MalformedURLException"

    invoke-direct {v0, v2, p1, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method public handleResponse(Landroid/net/Uri;Landroid/content/Context;)Z
    .registers 7

    .line 48
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->originalRequest:Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 49
    :goto_8
    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->scopes:[Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationRequest;->listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    invoke-static {p2, p1, v2, v0, v3}, Lcom/amazon/identity/auth/device/authorization/AuthorizationResponseProcessor;->handleResponse(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;ZLcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V

    return v1
.end method
