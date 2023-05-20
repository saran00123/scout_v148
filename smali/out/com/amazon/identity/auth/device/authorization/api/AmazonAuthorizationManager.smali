.class public Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;
.super Ljava/lang/Object;
.source "AmazonAuthorizationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.api.AmazonAuthorizationManager"

.field private static final appIdentifier:Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;


# instance fields
.field private clientId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->appIdentifier:Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "options="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmazonAuthorizationManager:sdkVer=3.0.6 libVer=3.5.8"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5b

    .line 112
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    if-nez p2, :cond_28

    .line 114
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Options bundle is null"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_28
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->appIdentifier:Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 118
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 121
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->clientId:Ljava/lang/String;

    if-eqz p2, :cond_52

    .line 123
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SANDBOX:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->setSandboxMode(Landroid/content/Context;Z)V

    :cond_52
    return-void

    .line 119
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid API Key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isAPIKeyValid()Z
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->isAPIKeyValid(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public authorize([Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)Ljava/util/concurrent/Future;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->authorize(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public clearAuthorizationState(Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/shared/APIListener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->clearAuthorizationState(Landroid/content/Context;Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getAppId()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->isAPIKeyValid()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 218
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " calling getAppId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/amazon/identity/auth/device/appid/AppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v0

    if-nez v0, :cond_37

    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_37
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_3c
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "APIKey is invalid"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method public getAppVariantId()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->isAPIKeyValid()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 243
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " calling getAppId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/amazon/identity/auth/device/appid/AppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v0

    if-nez v0, :cond_37

    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_37
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppVariantId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :cond_3c
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "APIKey is invalid"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfile(Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/shared/APIListener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getProfile(Landroid/content/Context;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getRedirectURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken([Ljava/lang/String;Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/shared/APIListener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getToken(Landroid/content/Context;[Ljava/lang/String;Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
