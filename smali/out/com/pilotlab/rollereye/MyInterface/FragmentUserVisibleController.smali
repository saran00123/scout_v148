.class public Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;
.super Ljava/lang/Object;
.source "FragmentUserVisibleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentUserVisibleController"


# instance fields
.field private fragment:Landroidx/fragment/app/Fragment;

.field private fragmentName:Ljava/lang/String;

.field private userVisibleCallback:Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

.field private waitingShowToUser:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragment:Landroidx/fragment/app/Fragment;

    .line 63
    iput-object p2, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->userVisibleCallback:Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragmentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public activityCreated()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 76
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 77
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_22

    .line 83
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->userVisibleCallback:Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;->setWaitingShowToUser(Z)V

    .line 84
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->userVisibleCallback:Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;->callSuperSetUserVisibleHint(Z)V

    :cond_22
    return-void
.end method

.method public isVisibleToUser()Z
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isWaitingShowToUser()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->waitingShowToUser:Z

    return v0
.end method

.method public pause()V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->userVisibleCallback:Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;->onVisibleToUserChanged(ZZ)V

    :cond_f
    return-void
.end method

.method public resume()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 96
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->userVisibleCallback:Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;->onVisibleToUserChanged(ZZ)V

    :cond_e
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 130
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->userVisibleCallback:Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;->onVisibleToUserChanged(ZZ)V

    .line 133
    :cond_e
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 134
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->fragment:Landroidx/fragment/app/Fragment;

    .line 135
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p1, :cond_4f

    if-eqz v0, :cond_7b

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7b

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 140
    instance-of v3, v0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

    if-eqz v3, :cond_2f

    .line 141
    move-object v3, v0

    check-cast v3, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

    .line 142
    invoke-interface {v3}, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;->isWaitingShowToUser()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 150
    invoke-interface {v3, v1}, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;->setWaitingShowToUser(Z)V

    .line 151
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    goto :goto_2f

    :cond_4f
    if-eqz v0, :cond_7b

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7b

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5b
    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 160
    instance-of v3, v0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

    if-eqz v3, :cond_5b

    .line 161
    move-object v3, v0

    check-cast v3, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;

    .line 162
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 170
    invoke-interface {v3, v2}, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController$UserVisibleCallback;->setWaitingShowToUser(Z)V

    .line 171
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    goto :goto_5b

    :cond_7b
    return-void
.end method

.method public setWaitingShowToUser(Z)V
    .registers 2

    .line 193
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/MyInterface/FragmentUserVisibleController;->waitingShowToUser:Z

    return-void
.end method
