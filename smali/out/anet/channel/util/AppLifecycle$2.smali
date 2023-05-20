.class final Lanet/channel/util/AppLifecycle$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 90
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    .line 91
    sput-boolean p1, Lanet/channel/util/AppLifecycle;->isGoingForeground:Z

    :cond_9
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 104
    invoke-static {}, Lanet/channel/util/AppLifecycle;->onForeground()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 97
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    .line 98
    sput-boolean p1, Lanet/channel/util/AppLifecycle;->isGoingForeground:Z

    :cond_9
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
