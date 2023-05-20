.class final Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;
.super Ljava/lang/Object;
.source "WorkflowFactory.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/authorization/Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GenericWorkflow"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final workflowData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 52
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->workflowData:Lorg/json/JSONObject;

    return-void

    .line 50
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Workflow must have a name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 79
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 80
    :cond_13
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;

    .line 81
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->name:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 82
    iget-object v2, p1, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->name:Ljava/lang/String;

    if-eqz v2, :cond_27

    return v1

    .line 83
    :cond_1e
    iget-object v3, p1, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 85
    :cond_27
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->workflowData:Lorg/json/JSONObject;

    if-nez v2, :cond_30

    .line 86
    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->workflowData:Lorg/json/JSONObject;

    if-eqz p1, :cond_39

    return v1

    .line 87
    :cond_30
    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->workflowData:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    return v1

    :cond_39
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkflowData()Lorg/json/JSONObject;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->workflowData:Lorg/json/JSONObject;

    if-nez v0, :cond_9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_9
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 71
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/WorkflowFactory$GenericWorkflow;->workflowData:Lorg/json/JSONObject;

    if-nez v2, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    return v0
.end method
