.class public final Lcom/amazon/identity/auth/device/interactive/WorkflowFragment;
.super Landroid/app/Fragment;
.source "WorkflowFragment.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;-><init>(Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowFragment;->state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Ljava/lang/Object;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/interactive/WorkflowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 55
    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public getFragment(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 4

    .line 49
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/interactive/WorkflowFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "wrappedFragment"

    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getParentActivity()Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/interactive/WorkflowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/amazon/identity/auth/device/interactive/InteractiveState;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowFragment;->state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 27
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowFragment;->state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->readFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowFragment;->state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->writeToBundle(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method setState(Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowFragment;->state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    return-void
.end method
