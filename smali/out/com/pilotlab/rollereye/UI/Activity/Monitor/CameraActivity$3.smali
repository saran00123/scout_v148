.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .registers 4

    .line 472
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 473
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 474
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 475
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;J)J

    return-void
.end method

.method public onActionUp()V
    .registers 5

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 481
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    .line 483
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_27

    .line 505
    :cond_20
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;D)D

    :goto_27
    return-void
.end method

.method public onReset()V
    .registers 1

    return-void
.end method

.method public onTouch(FF)V
    .registers 5

    .line 461
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    invoke-static {p2}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getControlConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Right_Sensitivity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {p2, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;D)D

    return-void
.end method
