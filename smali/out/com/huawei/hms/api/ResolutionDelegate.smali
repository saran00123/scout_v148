.class public Lcom/huawei/hms/api/ResolutionDelegate;
.super Ljava/lang/Object;
.source "ResolutionDelegate.java"

# interfaces
.implements Lcom/huawei/hms/activity/IBridgeActivityDelegate;


# static fields
.field public static final CALLBACK_METHOD:Ljava/lang/String; = "CALLBACK_METHOD"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/huawei/hms/activity/internal/BusResponseCallback;
    .registers 3

    .line 6
    invoke-static {}, Lcom/huawei/hms/activity/internal/ForegroundBusResponseMgr;->getInstance()Lcom/huawei/hms/activity/internal/ForegroundBusResponseMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/activity/internal/ForegroundBusResponseMgr;->get(Ljava/lang/String;)Lcom/huawei/hms/activity/internal/BusResponseCallback;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/api/ResolutionDelegate;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_10

    .line 5
    :cond_d
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_10
    :goto_10
    return-void
.end method

.method private b()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/ResolutionDelegate;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getRequestCode()I
    .registers 2

    const/16 v0, 0x3ea

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/api/ResolutionDelegate;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v1, "resolution"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Intent;

    const/16 v1, 0x3ea

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1e
    return-void
.end method

.method public onBridgeActivityDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/huawei/hms/api/ResolutionDelegate;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/api/ResolutionDelegate;->getRequestCode()I

    move-result p3

    if-eq p1, p3, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string p1, "CALLBACK_METHOD"

    .line 5
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/ResolutionDelegate;->a(Ljava/lang/String;)Lcom/huawei/hms/activity/internal/BusResponseCallback;

    move-result-object p1

    .line 7
    iget-object p3, p0, Lcom/huawei/hms/api/ResolutionDelegate;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    .line 9
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    const v1, 0x1c9c380

    invoke-virtual {v0, p3, v1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result p3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2e

    if-nez p3, :cond_2e

    const-string p1, "ResolutionDelegate"

    const-string p2, "Make service available success."

    .line 14
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 16
    :cond_2e
    iget-object p3, p0, Lcom/huawei/hms/api/ResolutionDelegate;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    const-string v0, "Make service available failed."

    invoke-interface {p1, p3, p2, v0}, Lcom/huawei/hms/activity/internal/BusResponseCallback;->innerError(Landroid/app/Activity;ILjava/lang/String;)Lcom/huawei/hms/activity/internal/BusResponseResult;

    .line 19
    :goto_3b
    invoke-direct {p0}, Lcom/huawei/hms/api/ResolutionDelegate;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public onBridgeConfigurationChanged()V
    .registers 1

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .registers 3

    return-void
.end method
