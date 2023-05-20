.class public final Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;
.super Ljava/lang/Object;
.source "RequestSourceSupportFragmentWrapper.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/interactive/RequestSource;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.interactive.RequestSourceSupportFragmentWrapper"


# instance fields
.field private final fragmentReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    return-void

    .line 23
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fragment must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getInteractiveStateAddingRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)Lcom/amazon/identity/auth/device/interactive/InteractiveState;
    .registers 7

    .line 39
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_65

    .line 41
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 43
    :try_start_e
    sget-object v2, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->TAG_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;

    if-nez v2, :cond_2a

    .line 45
    new-instance v2, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;

    invoke-direct {v2}, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;-><init>()V

    .line 46
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->TAG_ID:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2a
    if-eqz p1, :cond_41

    .line 50
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "wrappedFragment"

    .line 51
    invoke-virtual {v1, v3, v4, v0}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 52
    invoke-virtual {p1, v3}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->setFragmentWrapper(Landroid/os/Bundle;)V

    .line 53
    invoke-interface {v2}, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->getState()Lcom/amazon/identity/auth/device/interactive/InteractiveState;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveState;->onRequestStart(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)V

    .line 55
    :cond_41
    invoke-interface {v2}, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->getState()Lcom/amazon/identity/auth/device/interactive/InteractiveState;

    move-result-object p1
    :try_end_45
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_45} :catch_46

    return-object p1

    :catch_46
    move-exception p1

    .line 57
    sget-object v0, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found an invalid fragment looking for fragment with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->TAG_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Please use a different fragment tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c

    .line 61
    :cond_65
    sget-object p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Failed to get InteractiveState on a garbage-collected Fragment"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6c
    const/4 p1, 0x0

    return-object p1
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

    .line 93
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 94
    :cond_13
    check-cast p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;

    .line 95
    iget-object v2, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1e

    .line 96
    iget-object p1, p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_47

    return v1

    .line 97
    :cond_1e
    iget-object v3, p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_23

    return v1

    .line 100
    :cond_23
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_32

    .line 101
    iget-object p1, p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_47

    return v1

    .line 103
    :cond_32
    iget-object v2, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    return v1

    :cond_47
    return v0
.end method

.method public getBackingObject()Ljava/lang/Object;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getInteractiveState()Lcom/amazon/identity/auth/device/interactive/InteractiveState;
    .registers 2

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->getInteractiveStateAddingRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)Lcom/amazon/identity/auth/device/interactive/InteractiveState;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_18

    :cond_b
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->fragmentReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x0

    :goto_19
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isHookNeededOnUIResume()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onStartRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/interactive/RequestSourceSupportFragmentWrapper;->getInteractiveStateAddingRequest(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)Lcom/amazon/identity/auth/device/interactive/InteractiveState;

    return-void
.end method
