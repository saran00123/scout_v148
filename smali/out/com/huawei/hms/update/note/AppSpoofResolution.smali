.class public Lcom/huawei/hms/update/note/AppSpoofResolution;
.super Ljava/lang/Object;
.source "AppSpoofResolution.java"

# interfaces
.implements Lcom/huawei/hms/activity/IBridgeActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/update/note/AppSpoofResolution$b;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/huawei/hms/update/note/AppSpoofResolution$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/huawei/hms/update/note/AppSpoofResolution;Lcom/huawei/hms/update/note/AppSpoofResolution$b;)Lcom/huawei/hms/update/note/AppSpoofResolution$b;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/update/note/AppSpoofResolution;->b:Lcom/huawei/hms/update/note/AppSpoofResolution$b;

    return-object p1
.end method

.method public static synthetic a(Lcom/huawei/hms/update/note/AppSpoofResolution;)V
    .registers 1

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/update/note/AppSpoofResolution;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/update/note/AppSpoofResolution;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2e

    :cond_d
    const-string v1, "AppSpoofResolution"

    const-string v2, "enter AppSpoofResolution finishBridgeActivity\uff1a"

    .line 8
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/huawei/hms/availableupdate/m;->c:Lcom/huawei/hms/availableupdate/m;

    invoke-virtual {v1}, Lcom/huawei/hms/availableupdate/m;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 10
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyNoticeResult(I)V

    .line 13
    :cond_2b
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final b()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/update/note/AppSpoofResolution;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2e

    .line 6
    :cond_d
    iget-object v1, p0, Lcom/huawei/hms/update/note/AppSpoofResolution;->b:Lcom/huawei/hms/update/note/AppSpoofResolution$b;

    if-nez v1, :cond_1a

    .line 7
    new-instance v1, Lcom/huawei/hms/update/note/AppSpoofResolution$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/huawei/hms/update/note/AppSpoofResolution$b;-><init>(Lcom/huawei/hms/update/note/AppSpoofResolution$a;)V

    iput-object v1, p0, Lcom/huawei/hms/update/note/AppSpoofResolution;->b:Lcom/huawei/hms/update/note/AppSpoofResolution$b;

    goto :goto_1d

    .line 9
    :cond_1a
    invoke-virtual {v1}, Lcom/huawei/hms/ui/AbstractPromptDialog;->dismiss()V

    :goto_1d
    const-string v1, "AppSpoofResolution"

    const-string v2, "enter AppSpoofResolution showPromptdlg to resolve conn error"

    .line 12
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/huawei/hms/update/note/AppSpoofResolution;->b:Lcom/huawei/hms/update/note/AppSpoofResolution$b;

    new-instance v2, Lcom/huawei/hms/update/note/AppSpoofResolution$a;

    invoke-direct {v2, p0}, Lcom/huawei/hms/update/note/AppSpoofResolution$a;-><init>(Lcom/huawei/hms/update/note/AppSpoofResolution;)V

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/ui/AbstractPromptDialog;->show(Landroid/app/Activity;Lcom/huawei/hms/ui/AbstractDialog$Callback;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/update/note/AppSpoofResolution;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "AppSpoofResolution"

    const-string v1, "enter AppSpoofResolution onBridgeActivityCreate"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/update/note/AppSpoofResolution;->a:Landroid/app/Activity;

    .line 3
    sget-object p1, Lcom/huawei/hms/availableupdate/m;->c:Lcom/huawei/hms/availableupdate/m;

    iget-object v0, p0, Lcom/huawei/hms/update/note/AppSpoofResolution;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/huawei/hms/availableupdate/m;->a(Landroid/app/Activity;)V

    .line 4
    sget-object p1, Lcom/huawei/hms/availableupdate/m;->c:Lcom/huawei/hms/availableupdate/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/availableupdate/m;->a(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/update/note/AppSpoofResolution;->b()V

    return-void
.end method

.method public onBridgeActivityDestroy()V
    .registers 4

    const-string v0, "AppSpoofResolution"

    const-string v1, "enter AppSpoofResolution onBridgeActivityDestroy"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/huawei/hms/availableupdate/m;->c:Lcom/huawei/hms/availableupdate/m;

    invoke-virtual {v0}, Lcom/huawei/hms/availableupdate/m;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyNoticeResult(I)V

    .line 5
    :cond_1e
    sget-object v0, Lcom/huawei/hms/availableupdate/m;->c:Lcom/huawei/hms/availableupdate/m;

    iget-object v1, p0, Lcom/huawei/hms/update/note/AppSpoofResolution;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/availableupdate/m;->b(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/huawei/hms/update/note/AppSpoofResolution;->a:Landroid/app/Activity;

    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/update/note/AppSpoofResolution;->getRequestCode()I

    move-result p2

    if-eq p1, p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string p1, "AppSpoofResolution"

    const-string p2, "enter AppSpoofResolution onBridgeActivityResult"

    .line 5
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBridgeConfigurationChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/update/note/AppSpoofResolution;->b:Lcom/huawei/hms/update/note/AppSpoofResolution$b;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "AppSpoofResolution"

    const-string v1, "enter AppSpoofResolution re show prompt dialog"

    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hms/update/note/AppSpoofResolution;->b()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .registers 3

    const-string p1, "AppSpoofResolution"

    const-string p2, "enter AppSpoofResolution On key up when resolve spoof error"

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
