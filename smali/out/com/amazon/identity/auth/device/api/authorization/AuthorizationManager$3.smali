.class final Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$3;
.super Ljava/lang/Object;
.source "AuthorizationManager.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/shared/APIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->getToken(Landroid/content/Context;[Lcom/amazon/identity/auth/device/api/authorization/Scope;Lcom/amazon/identity/auth/device/api/Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/amazon/identity/auth/device/api/Listener;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/Listener;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$3;->val$listener:Lcom/amazon/identity/auth/device/api/Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/amazon/identity/auth/device/AuthError;)V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$3;->val$listener:Lcom/amazon/identity/auth/device/api/Listener;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Listener;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 272
    check-cast p1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$3;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$3;->val$listener:Lcom/amazon/identity/auth/device/api/Listener;

    new-instance v1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/api/Listener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 272
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager$3;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
