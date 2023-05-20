.class public Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;
.super Landroid/app/Activity;
.source "AuthorizationActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.AuthorizationActivity"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lcom/amazon/identity/auth/device/workflow/WorkflowActivity;->handleResponseUri(Landroid/net/Uri;Landroid/app/Activity;Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "finish"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->finish()V

    return-void
.end method
