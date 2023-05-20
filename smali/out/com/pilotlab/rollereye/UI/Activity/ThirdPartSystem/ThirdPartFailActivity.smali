.class public Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "ThirdPartFailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_thirdpart_fail_logo:Landroid/widget/ImageView;

.field private activity_thirdpart_fail_tips_1:Landroid/widget/TextView;

.field private activity_thirdpart_fail_tips_2:Landroid/widget/TextView;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private param_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "ThirdPartDoneActivity"

    .line 15
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->param_type:Ljava/lang/String;

    return-void
.end method

.method private initEvent()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a0448

    .line 74
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 75
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->center_title:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0181

    .line 77
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->activity_thirdpart_fail_logo:Landroid/widget/ImageView;

    const v0, 0x7f0a0182

    .line 78
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->activity_thirdpart_fail_tips_1:Landroid/widget/TextView;

    const v0, 0x7f0a0183

    .line 79
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->activity_thirdpart_fail_tips_2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_a

    goto :goto_d

    .line 87
    :cond_a
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->finish()V

    :goto_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->fullScreen()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 32
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 33
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 39
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d004b

    .line 45
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 56
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "param_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->param_type:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->param_type:Ljava/lang/String;

    sget-object v0, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_CUSTOM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->param_type:Ljava/lang/String;

    sget-object v0, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_VIDEO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_3a

    .line 63
    :cond_21
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f110025

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->activity_thirdpart_fail_tips_1:Landroid/widget/TextView;

    const v0, 0x7f110314

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->activity_thirdpart_fail_tips_2:Landroid/widget/TextView;

    const v0, 0x7f110313

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5a

    .line 58
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f110002

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->activity_thirdpart_fail_logo:Landroid/widget/ImageView;

    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->activity_thirdpart_fail_tips_1:Landroid/widget/TextView;

    const v0, 0x7f110312

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->activity_thirdpart_fail_tips_2:Landroid/widget/TextView;

    const v0, 0x7f110311

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_5a
    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->initView()V

    .line 51
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;->initEvent()V

    return-void
.end method
