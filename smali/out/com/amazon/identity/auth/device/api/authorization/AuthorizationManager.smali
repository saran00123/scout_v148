.class public final Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;
.super Ljava/lang/Object;
.source "AuthorizationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.authorization.AuthorizationManager"

.field private static sandboxMode:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorize(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;)V
    .registers 13

    .line 149
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 150
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calling authorize"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->getScopes()Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 154
    new-array v3, v1, [Ljava/lang/String;

    .line 155
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v1, :cond_71

    .line 159
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/identity/auth/device/api/authorization/Scope;

    .line 160
    invoke-interface {v6}, Lcom/amazon/identity/auth/device/api/authorization/Scope;->getName()Ljava/lang/String;

    move-result-object v7

    .line 162
    aput-object v7, v3, v5

    .line 164
    invoke-interface {v6}, Lcom/amazon/identity/auth/device/api/authorization/Scope;->getScopeData()Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_6e

    .line 167
    :try_start_42
    invoke-interface {v6}, Lcom/amazon/identity/auth/device/api/authorization/Scope;->getScopeData()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_49} :catch_4a

    goto :goto_6e

    :catch_4a
    move-exception v8

    .line 169
    sget-object v9, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to serialize scope data for scope \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 170
    invoke-interface {v6}, Lcom/amazon/identity/auth/device/api/authorization/Scope;->getScopeData()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 169
    invoke-static {v9, v7, v6, v8}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6e
    :goto_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 176
    :cond_71
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 177
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_87

    .line 178
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SCOPE_DATA:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_87
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->getGrantType()Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;->AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    const/4 v4, 0x1

    if-ne v0, v1, :cond_97

    .line 181
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->GET_AUTH_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    :cond_97
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->getCodeChallenge()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 184
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CODE_CHALLENGE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->getCodeChallenge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_a8
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->getCodeChallengeMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 187
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CODE_CHALLENGE_METHOD:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->getCodeChallengeMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_b9
    sget-object v0, Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;->RETURN_ACCESS_TOKEN:Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    sget-object v0, Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;->SHOW_PROGRESS:Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/utils/LWAConstants$AUTHORIZE_BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->shouldShowProgress()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->X_AMAZON_OPTIONS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->buildXAmazonOptions(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    new-instance v6, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$2;

    invoke-direct {v6, v2, p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$2;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;)V

    move-object v1, p0

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->authorize(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static buildXAmazonOptions(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;)Ljava/lang/String;
    .registers 9

    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 219
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->getWorkflows()Ljava/util/List;

    move-result-object p0

    .line 221
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/api/authorization/Workflow;

    .line 222
    invoke-interface {v2}, Lcom/amazon/identity/auth/device/api/authorization/Workflow;->getName()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-interface {v2}, Lcom/amazon/identity/auth/device/api/authorization/Workflow;->getWorkflowData()Lorg/json/JSONObject;

    move-result-object v2

    .line 225
    :try_start_26
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_12

    :catch_2a
    move-exception v4

    .line 227
    sget-object v5, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to serialize workflow data for workflow \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v5, v3, v2, v4}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_4b
    :try_start_4b
    const-string/jumbo p0, "workflow_data"

    .line 233
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_51} :catch_52

    goto :goto_5e

    :catch_52
    move-exception p0

    .line 235
    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unable to add workflow_data to com.amazon.oauth2.options parameter"

    invoke-static {v2, v3, v1, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :goto_5e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRegion(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/authorization/Region;
    .registers 2

    .line 130
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getRegion(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/authorization/Region;

    move-result-object p0

    return-object p0
.end method

.method public static getToken(Landroid/content/Context;[Lcom/amazon/identity/auth/device/api/authorization/Scope;Lcom/amazon/identity/auth/device/api/Listener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/amazon/identity/auth/device/api/authorization/Scope;",
            "Lcom/amazon/identity/auth/device/api/Listener<",
            "Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;",
            "Lcom/amazon/identity/auth/device/AuthError;",
            ">;)V"
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " calling getToken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 269
    :goto_1e
    array-length v2, p1

    if-ge v1, v2, :cond_2c

    .line 270
    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/amazon/identity/auth/device/api/authorization/Scope;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 272
    :cond_2c
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object p1

    new-instance v1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$3;

    invoke-direct {v1, p2}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$3;-><init>(Lcom/amazon/identity/auth/device/api/Listener;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getToken(Landroid/content/Context;[Ljava/lang/String;Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static isSandboxMode(Landroid/content/Context;)Z
    .registers 2

    .line 103
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->sandboxMode:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 104
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->isSandboxMode(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->sandboxMode:Ljava/lang/Boolean;

    .line 106
    :cond_e
    sget-object p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->sandboxMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static setRegion(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/authorization/Region;)V
    .registers 3

    .line 118
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->setRegion(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/authorization/Region;)V

    return-void
.end method

.method public static setSandboxMode(Landroid/content/Context;Z)V
    .registers 6

    .line 68
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->isSandboxMode(Landroid/content/Context;)Z

    move-result v0

    .line 69
    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing sandbox mode from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p1, :cond_48

    .line 71
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 72
    new-instance v1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$1;

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->signOut(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/Listener;)V

    .line 85
    :try_start_32
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_3b
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    .line 89
    :goto_35
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/StoredPreferences;->setSandboxMode(Landroid/content/Context;Z)V

    goto :goto_48

    :catchall_39
    move-exception v0

    goto :goto_44

    :catch_3b
    move-exception v0

    .line 87
    :try_start_3c
    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interrupted waiting to sign out. Local auth state may be invalid"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_39

    goto :goto_35

    .line 89
    :goto_44
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/StoredPreferences;->setSandboxMode(Landroid/content/Context;Z)V

    .line 90
    throw v0

    .line 92
    :cond_48
    :goto_48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->sandboxMode:Ljava/lang/Boolean;

    .line 93
    sget-object p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sandbox mode changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static signOut(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/identity/auth/device/api/Listener<",
            "Ljava/lang/Void;",
            "Lcom/amazon/identity/auth/device/AuthError;",
            ">;)V"
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " calling signOut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$4;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$4;-><init>(Lcom/amazon/identity/auth/device/api/Listener;)V

    invoke-virtual {v0, p0, v1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->clearAuthorizationState(Landroid/content/Context;Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;

    return-void
.end method
