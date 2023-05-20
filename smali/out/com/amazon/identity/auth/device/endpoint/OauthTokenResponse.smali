.class Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;
.source "OauthTokenResponse.java"


# static fields
.field static final AUTHZ_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field static final AUTHZ_ERROR_DESCIRPTION:Ljava/lang/String; = "error_description"

.field static final AUTHZ_INSUFFICIENT_SCOPE:Ljava/lang/String; = "insufficient_scope"

.field static final AUTHZ_INVALID_CLIENT:Ljava/lang/String; = "invalid_client"

.field static final AUTHZ_INVALID_GRANT:Ljava/lang/String; = "invalid_grant"

.field static final AUTHZ_INVALID_REQUEST:Ljava/lang/String; = "invalid_request"

.field static final AUTHZ_INVALID_SCOPE:Ljava/lang/String; = "invalid_scope"

.field static final AUTHZ_INVALID_TOKEN:Ljava/lang/String; = "invalid_token"

.field static final AUTHZ_UNAUTHORIZED_CLIENT:Ljava/lang/String; = "unauthorized_client"

.field static final AUTHZ_UNSUPPORTED_GRANT_TYPE:Ljava/lang/String; = "unsupported_grant_type"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.endpoint.OauthTokenResponse"

.field private static final REQUEST_ID_HEADER:Ljava/lang/String; = "x-amzn-RequestId"


# instance fields
.field protected mAccessToken:Lcom/amazon/identity/auth/device/token/AccessAtzToken;

.field private final mAppFamilyId:Ljava/lang/String;

.field private mDirectedId:Ljava/lang/String;

.field private mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;-><init>(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    .line 61
    iput-object p2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAppFamilyId:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mDirectedId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createPrimaryToken(Ljava/lang/String;J)Lcom/amazon/identity/auth/map/device/token/Token;
    .registers 12

    .line 79
    new-instance v7, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAppFamilyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mDirectedId:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V

    return-object v7
.end method

.method protected doParse(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->extractAccessAtzToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAccessToken:Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    .line 75
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->extractRefreshAtzToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    return-void
.end method

.method public extractAccessAtzToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/AccessAtzToken;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const-string v0, "access_token"

    .line 87
    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_c} :catch_2c

    .line 100
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->getExpiresIn(Lorg/json/JSONObject;)J

    move-result-wide v1

    .line 101
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/token/AbstractToken;->secsToMillis(J)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->createPrimaryToken(Ljava/lang/String;J)Lcom/amazon/identity/auth/map/device/token/Token;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    return-object p1

    .line 92
    :cond_1b
    :try_start_1b
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Unable to find AccessAtzToken in JSON response, throwing AuthError"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    const-string v0, "JSON response did not contain an AccessAtzToken"

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {p1, v0, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_2c} :catch_2c

    .line 97
    :catch_2c
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Error reading JSON response, throwing AuthError"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Error reading JSON response"

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
.end method

.method public extractRefreshAtzToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const-string v0, "refresh_token"

    .line 106
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Extracting RefreshToken"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    new-instance v0, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->getAppFamilyId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mDirectedId:Ljava/lang/String;

    invoke-direct {v0, v1, v3, p1, v2}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0

    .line 114
    :cond_20
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Unable to find RefreshAtzToken in JSON response"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_27} :catch_28

    return-object v2

    .line 119
    :catch_28
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Error reading JSON response, throwing AuthError"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Error reading JSON response"

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
.end method

.method protected extractResponseJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 158
    :try_start_0
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->extractResponseJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 162
    :catch_5
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No Response type in the response"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getAccessAtzToken()Lcom/amazon/identity/auth/device/token/AccessAtzToken;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAccessToken:Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    return-object v0
.end method

.method public getAppFamilyId()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAppFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAtzTokens()[Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;
    .registers 4

    const/4 v0, 0x2

    .line 144
    new-array v0, v0, [Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAccessToken:Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getRefreshAtzToken()Lcom/amazon/identity/auth/device/token/RefreshAtzToken;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "3.0.6"

    return-object v0
.end method

.method handleInvalidToken(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/InvalidTokenAuthError;
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid Token in exchange."

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleJSONError(Lorg/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "error"

    .line 171
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_123

    const-string v1, "error_description"

    .line 173
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isInvalidGrant(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_17} :catch_11d

    const-string v3, "info="

    if-nez v2, :cond_f2

    .line 181
    :try_start_1b
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isInvalidToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 183
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->handleInvalidToken(Lorg/json/JSONObject;)V

    goto/16 :goto_123

    .line 185
    :cond_26
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isInvalidClient(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c5

    .line 191
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isInvalidScope(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_98

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isInsufficientScope(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isUnauthorizedClient(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string v1, "Unauthorized Client.  The authenticated client is not authorized to use this authorization grant type. "

    .line 200
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_UNAUTHORIZED_CLIENT:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, p1, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v2

    :cond_6b
    const-string v1, "Server error doing authorization exchange. "

    .line 206
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, p1, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v2

    :cond_98
    const-string v1, "Invalid Scope. Authorization not valid for the requested scopes "

    .line 194
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_SCOPE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, p1, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v2

    :cond_c5
    const-string v1, "Invalid Client. ApiKey is invalid "

    .line 188
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_CLIENT:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, p1, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v2

    :cond_f2
    const-string v1, "Invalid source authorization in exchange."

    .line 178
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v2, Lcom/amazon/identity/auth/device/InvalidGrantAuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/amazon/identity/auth/device/InvalidGrantAuthError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11d
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_11d} :catch_11d

    .line 211
    :catch_11d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_124

    :cond_123
    :goto_123
    return-void

    .line 212
    :cond_124
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {p1, v0, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
.end method

.method isInsufficientScope(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p2, "insufficient_scope"

    .line 239
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isInvalidClient(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p2, "invalid_client"

    .line 229
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isInvalidGrant(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p2, "invalid_grant"

    .line 234
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    const-string/jumbo p2, "unsupported_grant_type"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    return p1
.end method

.method isInvalidScope(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p2, "invalid_scope"

    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isInvalidToken(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "invalid_token"

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "invalid_request"

    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f

    const-string p1, "access_token"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p1, 0x1

    :goto_22
    return p1
.end method

.method isUnauthorizedClient(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo p2, "unauthorized_client"

    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public testParse(Lorg/json/JSONObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->doParse(Lorg/json/JSONObject;)V

    return-void
.end method
