.class public abstract Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;
.super Ljava/lang/Object;
.source "AbstractJSONTokenResponse.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/endpoint/Response;


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field protected static final COOKIE:Ljava/lang/String; = "cookie"

.field private static final DEFAULT_CHAR_SET:Ljava/lang/String; = "UTF-8"

.field public static final EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field protected static final FORCE_UPDATE:Ljava/lang/String; = "force_update"

.field private static final FORCE_UPDATE_REQUESTED:Ljava/lang/String; = "1"

.field private static final INVALID_SOURCE_TOKEN:Ljava/lang/String; = "InvalidSourceToken"

.field private static final INVALID_TOKEN:Ljava/lang/String; = "INVALID_TOKEN"

.field private static final INVALID_TOKEN_CODE:Ljava/lang/String; = "InvalidToken"

.field private static final JSON_CODE_FIELD:Ljava/lang/String; = "code"

.field protected static final JSON_ERROR_FIELD:Ljava/lang/String; = "error"

.field private static final JSON_MESSAGE_FIELD:Ljava/lang/String; = "message"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.endpoint.AbstractJSONTokenResponse"

.field public static final REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field private static final REQUEST_ID_HEADER:Ljava/lang/String; = "x-amzn-RequestId"

.field protected static final RESPONSE:Ljava/lang/String; = "response"

.field private static final SERVER_ERROR:Ljava/lang/String; = "ServerError"

.field private static final SERVER_ERROR_PAGE_IDENTIFIER:Ljava/lang/String; = "!DOCTYPE html"

.field protected static final TOKEN:Ljava/lang/String; = "token"

.field public static final TOKEN_EXPIRES_IN:Ljava/lang/String; = "token_expires_in"

.field public static final TOKEN_TYPE:Ljava/lang/String; = "token_type"

.field public static final VER_UNKOWN:Ljava/lang/String; = "Unkown"


# instance fields
.field private final responseBody:Ljava/lang/String;

.field private final responseCode:I

.field private final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseCode:I

    .line 69
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseBody:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected abstract doParse(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation
.end method

.method protected extractResponseJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "response"

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected getExpiresIn(Lorg/json/JSONObject;)J
    .registers 7

    const-string v0, "expires_in"

    const-string/jumbo v1, "token_expires_in"

    const-wide/16 v2, 0x0

    .line 264
    :try_start_7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 265
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_11
    move-wide v2, v0

    goto :goto_2d

    .line 266
    :cond_13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 267
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_11

    .line 269
    :cond_1e
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Unable to find expiration time in JSON response, AccessToken will not expire locally"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_25} :catch_26

    goto :goto_2d

    .line 273
    :catch_26
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Unable to parse expiration time in JSON response, AccessToken will not expire locally"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-wide v2
.end method

.method protected getJSONResponse()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Response Extracted"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseBody:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->extractResponseJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->logRequestId(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public getStatusCode()I
    .registers 2

    .line 283
    iget v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseCode:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "3.5.8"

    return-object v0
.end method

.method protected handleForceUpdate(Lorg/json/JSONObject;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "force_update"

    .line 130
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7} :catch_47

    if-eqz p1, :cond_51

    :try_start_9
    const-string v1, "1"

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_51

    .line 132
    :cond_12
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 133
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Force update requested ver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server denied request, requested Force Update ver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_FORCE_UPDATE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v1, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v2
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_45} :catch_45

    :catch_45
    move-exception v0

    goto :goto_4b

    :catch_47
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    .line 139
    :goto_4b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_52

    :cond_51
    :goto_51
    return-void

    .line 140
    :cond_52
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON exception parsing force update response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {p1, v1, v0, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
.end method

.method protected handleJSONError(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "error"

    .line 213
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string p1, "code"

    .line 215
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ServerError"

    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "message"

    .line 218
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "INVALID_TOKEN"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 222
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->throwUnknownAuthError(Ljava/lang/String;)V

    goto :goto_7f

    .line 220
    :cond_27
    new-instance p1, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;

    const-string v1, "Invalid Exchange parameter - SERVER_ERROR."

    invoke-direct {p1, v1}, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    const-string v1, "InvalidSourceToken"

    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "InvalidToken"

    .line 226
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 228
    iget v1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseCode:I

    invoke-static {v1}, Lcom/amazon/identity/auth/device/utils/NetworkUtils;->hasReceived500(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "500 error (status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->throwUnknownAuthError(Ljava/lang/String;)V

    goto :goto_7f

    .line 231
    :cond_68
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->throwUnknownAuthError(Ljava/lang/String;)V

    goto :goto_7f

    .line 227
    :cond_6c
    new-instance p1, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;

    const-string v1, "Token used is invalid."

    invoke-direct {p1, v1}, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_74
    new-instance p1, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;

    const-string v1, "Invalid Source Token in exchange parameter"

    invoke-direct {p1, v1}, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception p1

    if-nez v0, :cond_80

    :goto_7f
    return-void

    .line 237
    :cond_80
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "JSON exception parsing json error response:"

    invoke-direct {v0, v2, p1, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method protected logRequestId(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    const-string v0, "request_id"

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeResponse requestId from response body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_24

    .line 112
    :catch_1d
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No RequestId in JSON response"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_24
    sget-object p1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExchangeResponse requestId from response header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseHeaders:Ljava/util/Map;

    const-string/jumbo v2, "x-amzn-RequestId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public parse()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const-string v0, " response:"

    const-string v1, ""

    .line 165
    :try_start_4
    iget v2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseCode:I

    invoke-static {v2}, Lcom/amazon/identity/auth/device/utils/NetworkUtils;->hasReceived500(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "500 error (status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    :cond_26
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->getJSONResponse()Lorg/json/JSONObject;

    move-result-object v2

    .line 170
    invoke-virtual {p0, v2}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->handleJSONError(Lorg/json/JSONObject;)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->doParse(Lorg/json/JSONObject;)V

    .line 172
    invoke-virtual {p0, v2}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->handleForceUpdate(Lorg/json/JSONObject;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_33} :catch_61
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception v2

    .line 184
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception accessing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_COM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    :catch_61
    move-exception v2

    .line 174
    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseBody:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 175
    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseBody:Ljava/lang/String;

    const-string v4, "!DOCTYPE html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 176
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Server sending back default error page - BAD request"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    .line 180
    :cond_83
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON exception parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON exception html = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseBody:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method public throwUnknownAuthError(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const/4 v0, 0x2

    .line 249
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->responseBody:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Error code: %s Server response: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 250
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method
