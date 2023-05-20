.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;
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
.field private leftLastTime:J

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)V
    .registers 2

    .line 479
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 512
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 513
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->leftLastTime:J

    .line 514
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionDown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->leftLastTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActionUp()V
    .registers 6

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 520
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActionUp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->leftLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_41

    .line 523
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActionUp: delay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_58

    .line 550
    :cond_41
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActionUp: clear"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    .line 552
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    :goto_58
    return-void
.end method

.method public onReset()V
    .registers 1

    return-void
.end method

.method public onTouch(FF)V
    .registers 8

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->leftLastTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_12

    move v0, v1

    .line 494
    :cond_12
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)I

    move-result v2

    if-ne v1, v2, :cond_33

    .line 495
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p1, v2

    mul-float/2addr p1, v0

    float-to-double v3, p1

    invoke-static {v1, v3, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    .line 496
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    mul-float/2addr p2, v2

    mul-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    goto :goto_63

    .line 498
    :cond_33
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getControlConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Left_Sensitivity"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr p1, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p1, v1

    float-to-double v3, p1

    invoke-static {v0, v3, v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    .line 499
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getControlConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr p2, v0

    div-float/2addr p2, v1

    float-to-double v0, p2

    invoke-static {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    .line 501
    :goto_63
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Left horizontalPercent:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " Left verticalPercent:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
