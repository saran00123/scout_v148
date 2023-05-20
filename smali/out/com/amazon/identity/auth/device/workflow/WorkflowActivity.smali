.class public final Lcom/amazon/identity/auth/device/workflow/WorkflowActivity;
.super Landroid/app/Activity;
.source "WorkflowActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.workflow.WorkflowActivity"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static handleResponseUri(Landroid/net/Uri;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    if-nez p0, :cond_a

    const-string/jumbo p0, "uri is null onCreate - closing activity"

    .line 44
    invoke-static {p2, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    .line 47
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/amazon/identity/auth/device/RequestManager;->isInteractiveRequest(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string p1, "Receiving response for interactive request"

    .line 48
    invoke-static {p2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p0}, Lcom/amazon/identity/auth/device/RequestManager;->getRequestIdFromResponseUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receiving response for request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Lcom/amazon/identity/auth/device/ResponseManager;->getInstance()Lcom/amazon/identity/auth/device/ResponseManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/amazon/identity/auth/device/ResponseManager;->putPendingResponse(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    invoke-static {}, Lcom/amazon/identity/auth/device/RequestManager;->getInstance()Lcom/amazon/identity/auth/device/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/RequestManager;->getRequestContextForRequest(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 54
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->isHookNeededOnUIResume()Z

    move-result v1

    if-nez v1, :cond_80

    .line 55
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Request %s is not hooked on UI resume, should be handled immediately"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->onResume()V

    goto :goto_80

    :cond_59
    const-string v0, "Receiving response for auth request"

    .line 59
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/amazon/identity/auth/device/RequestManager;->getInstance()Lcom/amazon/identity/auth/device/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/amazon/identity/auth/device/RequestManager;->handleResponse(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_80

    const-string p1, "Could not find active request for redirect URI"

    .line 61
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_a .. :try_end_75} :catch_76

    goto :goto_80

    :catch_76
    move-exception p1

    .line 65
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Could not handle response URI"

    invoke-static {p2, v0, p0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_80
    :goto_80
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget-object p1, Lcom/amazon/identity/auth/device/workflow/WorkflowActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/workflow/WorkflowActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lcom/amazon/identity/auth/device/workflow/WorkflowActivity;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowActivity;->handleResponseUri(Landroid/net/Uri;Landroid/app/Activity;Ljava/lang/String;)V

    .line 38
    sget-object p1, Lcom/amazon/identity/auth/device/workflow/WorkflowActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "finish"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/workflow/WorkflowActivity;->finish()V

    return-void
.end method
