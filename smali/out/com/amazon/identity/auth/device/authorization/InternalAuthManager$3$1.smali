.class Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3$1;
.super Ljava/lang/Object;
.source "InternalAuthManager.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/shared/APIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3$1;->this$1:Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/amazon/identity/auth/device/AuthError;)V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3$1;->this$1:Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3;->val$callbackFuture:Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 150
    check-cast p1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3$1;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3$1;->this$1:Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3;->val$callbackFuture:Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/thread/AuthzCallbackFuture;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 150
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager$3$1;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
