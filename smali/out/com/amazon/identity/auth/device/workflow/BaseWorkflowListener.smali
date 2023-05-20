.class public abstract Lcom/amazon/identity/auth/device/workflow/BaseWorkflowListener;
.super Ljava/lang/Object;
.source "BaseWorkflowListener.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/interactive/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/interactive/InteractiveListener<",
        "TT;TU;TV;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.workflow.BaseWorkflowListener"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestCancel(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;)V
    .registers 6

    .line 100
    sget-object v0, Lcom/amazon/identity/auth/device/workflow/BaseWorkflowListener;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRequestCancel"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/workflow/BaseWorkflowListener;->onWorkflowCancel(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;)V

    return-void
.end method

.method public final onRequestCompletion(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Landroid/net/Uri;)V
    .registers 7

    .line 74
    new-instance v0, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;

    invoke-direct {v0, p3}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;-><init>(Landroid/net/Uri;)V

    .line 75
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->isError()Z

    move-result p3

    if-eqz p3, :cond_31

    .line 76
    sget-object p3, Lcom/amazon/identity/auth/device/workflow/BaseWorkflowListener;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestCompletion failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->getError()Lcom/amazon/identity/auth/device/AuthError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->getError()Lcom/amazon/identity/auth/device/AuthError;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/workflow/BaseWorkflowListener;->onWorkflowError(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Ljava/lang/Exception;)V

    goto :goto_54

    .line 79
    :cond_31
    sget-object p3, Lcom/amazon/identity/auth/device/workflow/BaseWorkflowListener;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->getResultJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRequestCompletion success"

    invoke-static {p3, v2, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowResponse;->getResultJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/workflow/BaseWorkflowListener;->onWorkflowSuccess(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Lorg/json/JSONObject;)V

    :goto_54
    return-void
.end method

.method public final onRequestError(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Ljava/lang/Exception;)V
    .registers 7

    .line 90
    sget-object v0, Lcom/amazon/identity/auth/device/workflow/BaseWorkflowListener;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/workflow/BaseWorkflowListener;->onWorkflowError(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Ljava/lang/Exception;)V

    return-void
.end method

.method protected abstract onWorkflowCancel(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Lcom/amazon/identity/auth/device/workflow/WorkflowCancellation;)V
.end method

.method protected abstract onWorkflowError(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Ljava/lang/Exception;)V
.end method

.method protected abstract onWorkflowSuccess(Landroid/content/Context;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;Lorg/json/JSONObject;)V
.end method
