.class final Lcom/amazon/identity/auth/device/api/authorization/User$2;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/shared/APIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/authorization/User;->fetch(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;Lcom/amazon/identity/auth/device/api/Listener;)V
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

    .line 92
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/User$2;->val$listener:Lcom/amazon/identity/auth/device/api/Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/amazon/identity/auth/device/AuthError;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/User$2;->val$listener:Lcom/amazon/identity/auth/device/api/Listener;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Listener;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 92
    check-cast p1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/User$2;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/User$2;->val$listener:Lcom/amazon/identity/auth/device/api/Listener;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->PROFILE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/authorization/User;->userFromBundle(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/authorization/User;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Listener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 92
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/User$2;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
