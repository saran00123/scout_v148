.class final Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;
.super Ljava/lang/Object;
.source "AmazonWorkflow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow;->openWorkflow(Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$minimumTokenLifetime:I

.field final synthetic val$request:Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

.field final synthetic val$workflowTokenString:Ljava/lang/String;

.field final synthetic val$workflowUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;Ljava/lang/String;I)V
    .registers 6

    .line 79
    iput-object p1, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$workflowTokenString:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$request:Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$workflowUrl:Ljava/lang/String;

    iput p5, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$minimumTokenLifetime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow;->access$000(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$workflowTokenString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/workflow/WorkflowToken;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow;->access$100()Lcom/amazon/identity/auth/device/workflow/WorkflowRequestFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$request:Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$workflowUrl:Ljava/lang/String;

    iget v4, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$minimumTokenLifetime:I

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/amazon/identity/auth/device/workflow/WorkflowRequestFactory;->getWorkflowRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;Ljava/lang/String;Lcom/amazon/identity/auth/device/workflow/WorkflowToken;I)Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$workflowTokenString:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow;->access$200(Landroid/content/Context;Lcom/amazon/identity/auth/device/workflow/WorkflowRequest;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 90
    invoke-static {}, Lcom/amazon/identity/auth/device/RequestManager;->getInstance()Lcom/amazon/identity/auth/device/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/identity/auth/device/RequestManager;->executeRequest(Lcom/amazon/identity/auth/device/AbstractRequest;Landroid/content/Context;)V
    :try_end_2d
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_42

    :catch_2e
    move-exception v0

    .line 93
    new-instance v1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$request:Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;->getRequestExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 94
    iget-object v2, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$request:Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/workflow/AmazonWorkflow$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequest;->onRequestError(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Ljava/lang/Exception;)V

    :cond_42
    :goto_42
    return-void
.end method
