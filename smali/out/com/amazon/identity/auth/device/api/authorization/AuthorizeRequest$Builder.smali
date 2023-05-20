.class public final Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;
.super Lcom/amazon/identity/auth/device/interactive/InteractiveRequest$Builder;
.source "AuthorizeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/interactive/InteractiveRequest$Builder<",
        "Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V
    .registers 3

    .line 316
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequest$Builder;-><init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V

    .line 317
    new-instance p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->requestContext:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;-><init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    return-void
.end method


# virtual methods
.method public addScope(Lcom/amazon/identity/auth/device/api/authorization/Scope;)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->addScope(Lcom/amazon/identity/auth/device/api/authorization/Scope;)V

    return-object p0
.end method

.method public varargs addScopes([Lcom/amazon/identity/auth/device/api/authorization/Scope;)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->addScopes([Lcom/amazon/identity/auth/device/api/authorization/Scope;)V

    return-object p0
.end method

.method public addWorkflow(Lcom/amazon/identity/auth/device/api/authorization/Workflow;)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->addWorkflow(Lcom/amazon/identity/auth/device/api/authorization/Workflow;)V

    return-object p0
.end method

.method public varargs addWorkflows([Lcom/amazon/identity/auth/device/api/authorization/Workflow;)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->addWorkflows([Lcom/amazon/identity/auth/device/api/authorization/Workflow;)V

    return-object p0
.end method

.method public build()Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;
    .registers 2

    .line 306
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->build()Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public forGrantType(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->setGrantType(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;)V

    return-object p0
.end method

.method public shouldReturnUserData(Z)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->setShouldReturnUserData(Z)V

    return-object p0
.end method

.method public showProgress(Z)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->showProgress(Z)V

    return-object p0
.end method

.method public withProofKeyParameters(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;
    .registers 4

    .line 403
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;->setProofKeyParameters(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
