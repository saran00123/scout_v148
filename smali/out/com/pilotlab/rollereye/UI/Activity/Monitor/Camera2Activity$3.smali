.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private rightLasTime:J

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V
    .registers 2

    .line 557
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .registers 3

    .line 587
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$2000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 588
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$2000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 589
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->rightLasTime:J

    return-void
.end method

.method public onActionUp()V
    .registers 5

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 595
    iget-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->rightLasTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 597
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_23

    .line 619
    :cond_1c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    :goto_23
    return-void
.end method

.method public onReset()V
    .registers 1

    return-void
.end method

.method public onTouch(FF)V
    .registers 7

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->rightLasTime:J

    sub-long/2addr v0, v2

    long-to-float p2, v0

    const/high16 v0, 0x44fa0000    # 2000.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_12

    move p2, v0

    .line 571
    :cond_12
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-ne v0, v1, :cond_2f

    .line 572
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    mul-float/2addr p1, v2

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v1

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {v0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    goto :goto_4a

    .line 574
    :cond_2f
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    mul-float/2addr p1, v2

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

    invoke-static {p2, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    :goto_4a
    return-void
.end method
