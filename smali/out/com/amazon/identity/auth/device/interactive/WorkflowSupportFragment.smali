.class public final Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;
.super Landroidx/fragment/app/Fragment;
.source "WorkflowSupportFragment.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;


# instance fields
.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 18
    new-instance v0, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;-><init>(Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;->state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Ljava/lang/Object;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFragment(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 4

    .line 50
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "wrappedFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getParentActivity()Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/amazon/identity/auth/device/interactive/InteractiveState;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;->state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;->state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->readFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;->state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;->writeToBundle(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method setState(Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;->state:Lcom/amazon/identity/auth/device/interactive/GenericInteractiveState;

    return-void
.end method
