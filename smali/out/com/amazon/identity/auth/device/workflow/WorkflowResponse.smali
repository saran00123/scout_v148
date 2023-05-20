.class public Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;
.super Ljava/lang/Object;
.source "WorkflowResponse.java"


# static fields
.field private static final ERROR_DESCRIPTION_PARAMETER_NAME:Ljava/lang/String; = "error_description"

.field private static final ERROR_PARAMETER_NAME:Ljava/lang/String; = "error"

.field private static final ERROR_RECOVERABLE_PARAMETER_NAME:Ljava/lang/String; = "error_recoverable"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.workflow.WorkflowResponse"

.field private static final WORKFLOW_RESULT_PARAMETER_NAME:Ljava/lang/String; = "workflow_result"


# instance fields
.field private final error:Ljava/lang/String;

.field private final errorDescription:Ljava/lang/String;

.field private final isRecoverable:Z

.field private final workflowResult:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "workflow_result"

    .line 25
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->createResultJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->workflowResult:Lorg/json/JSONObject;

    const-string v0, "error"

    .line 26
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->error:Ljava/lang/String;

    const-string v0, "error_description"

    .line 27
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->errorDescription:Ljava/lang/String;

    const-string v0, "error_recoverable"

    .line 28
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->isRecoverable:Z

    return-void
.end method

.method private createResultJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 58
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    return-object v1

    :catch_a
    move-exception p1

    .line 60
    sget-object v1, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Caught JSONException while parsing workflow result"

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public getError()Lcom/amazon/identity/auth/device/AuthError;
    .registers 6

    .line 36
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->error:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->errorDescription:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 37
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v0, "error=%s error_description=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v0, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    return-object v2

    .line 38
    :cond_1f
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->workflowResult:Lorg/json/JSONObject;

    if-nez v0, :cond_2d

    .line 39
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v2, "Failed to parse workflow response"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    return-object v0

    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultJson()Lorg/json/JSONObject;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->workflowResult:Lorg/json/JSONObject;

    return-object v0
.end method

.method public isError()Z
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->getError()Lcom/amazon/identity/auth/device/AuthError;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRecoverable()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->isRecoverable:Z

    return v0
.end method
