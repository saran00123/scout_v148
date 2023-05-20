.class Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;
.super Ljava/lang/Object;
.source "InternalAuthManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->authorize(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

.field final synthetic val$scopes:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;[Ljava/lang/String;)V
    .registers 7

    .line 70
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->this$0:Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$scopes:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->this$0:Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->isAPIKeyValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 74
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v3, "APIKey is invalid"

    invoke-direct {v1, v3, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void

    .line 78
    :cond_19
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$options:Landroid/os/Bundle;

    if-nez v0, :cond_24

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    goto :goto_2a

    :cond_24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v12, v1

    .line 79
    :goto_2a
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SANDBOX:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 82
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SANDBOX:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->isSandboxMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    :cond_41
    new-instance v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;-><init>()V

    .line 87
    :try_start_46
    iget-object v3, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$request:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->this$0:Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->access$000(Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->this$0:Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getRedirectURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$scopes:[Ljava/lang/String;

    const/4 v9, 0x1

    .line 88
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->access$100()Lcom/amazon/identity/auth/device/endpoint/TokenVendor;

    move-result-object v10

    iget-object v11, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    .line 87
    invoke-virtual/range {v2 .. v12}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationHelper;->authorize(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/amazon/identity/auth/device/endpoint/TokenVendor;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;Landroid/os/Bundle;)V
    :try_end_6a
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_46 .. :try_end_6a} :catch_6b

    goto :goto_71

    :catch_6b
    move-exception v0

    .line 90
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$1;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    :goto_71
    return-void
.end method
