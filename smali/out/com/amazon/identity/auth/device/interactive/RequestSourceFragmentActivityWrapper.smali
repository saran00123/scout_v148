.class public final Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;
.super Ljava/lang/Object;
.source "RequestSourceFragmentActivityWrapper.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/interactive/RequestSource;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.interactive.RequestSourceFragmentActivityWrapper"


# instance fields
.field private final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    return-void

    .line 22
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "activity must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 86
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 87
    :cond_13
    check-cast p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;

    .line 88
    iget-object v2, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1e

    .line 89
    iget-object p1, p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_47

    return v1

    .line 90
    :cond_1e
    iget-object v3, p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_23

    return v1

    .line 93
    :cond_23
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_32

    .line 94
    iget-object p1, p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_47

    return v1

    .line 96
    :cond_32
    iget-object v2, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    return v1

    :cond_47
    return v0
.end method

.method public getBackingObject()Ljava/lang/Object;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getInteractiveState()Lcom/amazon/identity/auth/device/interactive/InteractiveState;
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_4e

    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 41
    :try_start_e
    sget-object v1, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->TAG_ID:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;

    if-nez v1, :cond_2a

    .line 44
    new-instance v1, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/interactive/WorkflowSupportFragment;-><init>()V

    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v2, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->TAG_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 48
    :cond_2a
    invoke-interface {v1}, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->getState()Lcom/amazon/identity/auth/device/interactive/InteractiveState;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception v0

    .line 50
    sget-object v1, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found an invalid fragment looking for fragment with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/identity/auth/device/interactive/InteractiveStateFragment;->TAG_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Please use a different fragment tag."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 54
    :cond_4e
    sget-object v0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed to get InteractiveState on a garbage-collected FragmentActivity"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_18

    :cond_b
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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
    .registers 3

    .line 29
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/interactive/RequestSourceFragmentActivityWrapper;->getInteractiveState()Lcom/amazon/identity/auth/device/interactive/InteractiveState;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 31
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveState;->onRequestStart(Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;)V

    :cond_9
    return-void
.end method
