.class Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;
.super Lcom/amazon/identity/auth/device/AbstractRequest;
.source "WorkflowRequest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.workflow.WorkflowRequest"

.field private static final RELYING_PARTY_CONTEXT_PARAMETER_NAME:Ljava/lang/String; = "rpContext"

.field private static final RP_CONTEXT_ONE_TIME_CODE_FIELD:Ljava/lang/String; = "code"

.field private static final RP_CONTEXT_REDIRECT_URL_FIELD:Ljava/lang/String; = "redirect_uri"


# instance fields
.field private final appIdentifier:Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

.field private final minTokenLifetime:I

.field private final serverCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

.field private final workflowToken:Lcom/amazon/identity/auth/device/workflow/WorkflowToken;

.field private final workflowUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;Ljava/lang/String;Lcom/amazon/identity/auth/device/workflow/WorkflowToken;ILcom/amazon/identity/auth/device/endpoint/ServerCommunication;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveRequest<",
            "****>;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/workflow/WorkflowToken;",
            "I",
            "Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AbstractRequest;-><init>(Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;)V

    .line 34
    new-instance p1, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->appIdentifier:Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    .line 43
    invoke-virtual {p3, p2}, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->assertWorkflowUrlIsAllowed(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->workflowUrl:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->workflowToken:Lcom/amazon/identity/auth/device/workflow/WorkflowToken;

    .line 46
    iput p4, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->minTokenLifetime:I

    .line 47
    iput-object p5, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->serverCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    return-void
.end method

.method private getAppInfo(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->appIdentifier:Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method private getOneTimeCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->MINIMUM_TOKEN_LIFETIME:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->minTokenLifetime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->workflowToken:Lcom/amazon/identity/auth/device/workflow/WorkflowToken;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->getScopes()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->appIdentifier:Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v3

    invoke-static {p1, v1, v2, v3, v0}, Lcom/amazon/identity/auth/device/authorization/TokenHelper;->getTokenInternal(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 104
    new-instance v1, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->workflowToken:Lcom/amazon/identity/auth/device/workflow/WorkflowToken;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->getAppInfo(Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v3

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->serverCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;->executeRequest(Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;Landroid/content/Context;)Lcom/amazon/identity/auth/device/endpoint/Response;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeResponse;

    .line 106
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeResponse;->getOneTimeCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 102
    :cond_44
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_MISSING_TOKEN_FOR_REQUIRED_SCOPES:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Could not find token for scopes required to open workflow"

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
.end method

.method private getRedirectUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->appIdentifier:Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->getRedirectUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRelyingPartyContextParameter(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->getOneTimeCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->getRedirectUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "redirect_uri"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->getStateField()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStateField()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "clientRequestId"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->requestId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "InteractiveRequestType"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->originalRequest:Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

    .line 94
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;->getRequestType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s=%s&%s=%s"

    .line 92
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMaxAttemptCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->workflowUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "rpContext"

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->getRelyingPartyContextParameter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1c} :catch_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p1

    .line 64
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_IO:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "Error communicating with server"

    invoke-direct {v0, v2, p1, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    :catch_28
    move-exception p1

    .line 62
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_UNKNOWN:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "Error while generating workflow URL"

    invoke-direct {v0, v2, p1, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method public handleResponse(Landroid/net/Uri;Landroid/content/Context;)Z
    .registers 6

    .line 70
    sget-object v0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received response from workflow"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;-><init>(Landroid/net/Uri;)V

    .line 74
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->isError()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->isRecoverable()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 75
    sget-object p1, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Workflow response is a recoverable error. Retrying."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 78
    :cond_36
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->originalRequest:Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;->getInteractiveRequestRecord()Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;->onRequestCompletion(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1
.end method
