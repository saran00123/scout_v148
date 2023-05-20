.class Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;
.super Ljava/lang/Object;
.source "AppFrontBackHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private activityStartCount:I

.field final synthetic this$0:Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->this$0:Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->activityStartCount:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

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

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 46
    iget p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->activityStartCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->activityStartCount:I

    .line 48
    iget p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->activityStartCount:I

    if-ne p1, v0, :cond_1b

    .line 50
    iget-object p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->this$0:Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;

    invoke-static {p1}, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;->access$000(Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;)Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 51
    iget-object p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->this$0:Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;

    invoke-static {p1}, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;->access$000(Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;)Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;->onFront()V

    :cond_1b
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 68
    iget p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->activityStartCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->activityStartCount:I

    .line 70
    iget p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->activityStartCount:I

    if-nez p1, :cond_1b

    .line 72
    iget-object p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->this$0:Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;

    invoke-static {p1}, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;->access$000(Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;)Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 73
    iget-object p1, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;->this$0:Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;

    invoke-static {p1}, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;->access$000(Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;)Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;->onBack()V

    :cond_1b
    return-void
.end method
