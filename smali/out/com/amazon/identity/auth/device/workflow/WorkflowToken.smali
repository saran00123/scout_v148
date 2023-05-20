.class public Lcom/amazon/identity/auth/device/workflow/WorkflowToken;
.super Ljava/lang/Object;
.source "WorkflowToken.java"


# static fields
.field private static final JWT_CLIENT_ID_KEY:Ljava/lang/String; = "clientId"

.field private static final JWT_EXPECTED_ISSUER:Ljava/lang/String; = "Amazon"

.field private static final JWT_EXPECTED_TYPE:Ljava/lang/String; = "WorkflowToken"

.field private static final JWT_ISSUER_KEY:Ljava/lang/String; = "iss"

.field private static final JWT_SCOPES_KEY:Ljava/lang/String; = "scopes"

.field private static final JWT_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final JWT_WORKFLOW_ENDPOINTS_KEY:Ljava/lang/String; = "workflowEndpoints"


# instance fields
.field private final clientId:Ljava/lang/String;

.field private final scopes:[Ljava/lang/String;

.field private final workflowEndpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/amazon/identity/auth/device/utils/JWTDecoder;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/utils/JWTDecoder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->decode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_83

    const-string/jumbo v0, "type"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WorkflowToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "iss"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "clientId"

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->clientId:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->clientId:Ljava/lang/String;

    if-eqz v0, :cond_65

    const-string v0, "scopes"

    .line 44
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/utils/JSONUtils;->getStringArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->scopes:[Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->scopes:[Ljava/lang/String;

    if-eqz v0, :cond_5b

    const-string/jumbo v0, "workflowEndpoints"

    .line 48
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/utils/JSONUtils;->getStringList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->workflowEndpoints:Ljava/util/List;

    .line 49
    iget-object p1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->workflowEndpoints:Ljava/util/List;

    if-eqz p1, :cond_51

    return-void

    .line 50
    :cond_51
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Workflow Token missing endpoints"

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1

    .line 46
    :cond_5b
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Workflow Token missing scopes"

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1

    .line 42
    :cond_65
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Workflow Token missing clientId"

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1

    .line 38
    :cond_6f
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Workflow Token has invalid issuer"

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1

    .line 35
    :cond_79
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Workflow Token has invalid type"

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1

    .line 32
    :cond_83
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v1, "Workflow Token is invalid"

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
.end method

.method private normalizeWorkflowUrl(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 70
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public assertWorkflowUrlIsAllowed(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->normalizeWorkflowUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->workflowEndpoints:Ljava/util/List;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 65
    :cond_11
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Workflow URL %s is not allowed"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getScopes()[Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;->scopes:[Ljava/lang/String;

    return-object v0
.end method
