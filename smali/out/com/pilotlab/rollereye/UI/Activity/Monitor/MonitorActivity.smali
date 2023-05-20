.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "MonitorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_detection_btn:Lcom/pilotlab/rollereye/CustomerView/RoundImageView;

.field private activity_patrol_btn:Lcom/pilotlab/rollereye/CustomerView/RoundImageView;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "MonitorActivity"

    .line 23
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .registers 2

    .line 39
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 40
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->activity_patrol_btn:Lcom/pilotlab/rollereye/CustomerView/RoundImageView;

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->activity_detection_btn:Lcom/pilotlab/rollereye/CustomerView/RoundImageView;

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 46
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0448

    .line 47
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 48
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->center_title:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0121

    .line 51
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->activity_patrol_btn:Lcom/pilotlab/rollereye/CustomerView/RoundImageView;

    const v0, 0x7f0a00c6

    .line 52
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->activity_detection_btn:Lcom/pilotlab/rollereye/CustomerView/RoundImageView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a00c6

    if-eq p1, v1, :cond_26

    const v1, 0x7f0a0121

    if-eq p1, v1, :cond_1d

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_19

    goto :goto_2e

    .line 83
    :cond_19
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->finish()V

    goto :goto_2e

    .line 86
    :cond_1d
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2e

    .line 90
    :cond_26
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2e
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 71
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 72
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 63
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0036

    .line 27
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 57
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setUpView()V
    .registers 4

    .line 32
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpView()V

    .line 33
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->initView()V

    .line 34
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->initEvent()V

    .line 35
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/MonitorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {p0, v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
