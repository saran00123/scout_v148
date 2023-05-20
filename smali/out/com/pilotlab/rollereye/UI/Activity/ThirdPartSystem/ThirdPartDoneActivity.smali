.class public Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "ThirdPartDoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_thirdpart_done_logo:Landroid/widget/ImageView;

.field private activity_thirdpart_done_logout:Landroid/widget/TextView;

.field private activity_thirdpart_done_tips_1:Landroid/widget/TextView;

.field private activity_thirdpart_done_tips_2:Landroid/widget/TextView;

.field private activity_thirdpart_down_other_method:Landroid/widget/TextView;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private param_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "ThirdPartDoneActivity"

    .line 22
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->param_type:Ljava/lang/String;

    return-void
.end method

.method private initEvent()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a0448

    .line 117
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 118
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->center_title:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a017c

    .line 120
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_logo:Landroid/widget/ImageView;

    const v0, 0x7f0a017e

    .line 121
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_tips_1:Landroid/widget/TextView;

    const v0, 0x7f0a017f

    .line 122
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_tips_2:Landroid/widget/TextView;

    const v0, 0x7f0a017d

    .line 123
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_logout:Landroid/widget/TextView;

    const v0, 0x7f0a0180

    .line 124
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_down_other_method:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_a

    goto :goto_d

    .line 132
    :cond_a
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->finish()V

    :goto_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 35
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->fullScreen()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 41
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 42
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d004a

    .line 54
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 6

    .line 65
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "param_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->param_type:Ljava/lang/String;

    .line 66
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_down_other_method:Landroid/widget/TextView;

    .line 67
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->param_type:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_CUSTOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->param_type:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_73

    .line 87
    :cond_30
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_logo:Landroid/widget/ImageView;

    const v1, 0x7f08016f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_logo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    .line 90
    invoke-static {p0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_tips_1:Landroid/widget/TextView;

    const v1, 0x7f11030c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_tips_2:Landroid/widget/TextView;

    const v1, 0x7f11030d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_logout:Landroid/widget/TextView;

    const v1, 0x7f110310

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity$2;

    const-string v1, "https://play.google.com/store/apps/details?id=com.google.android.apps.chromecast.app"

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;Ljava/lang/String;)V

    goto :goto_ad

    .line 70
    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_logo:Landroid/widget/ImageView;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_tips_1:Landroid/widget/TextView;

    const v1, 0x7f11030a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->param_type:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_CUSTOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 74
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_logout:Landroid/widget/TextView;

    const v1, 0x7f11030e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a6

    .line 76
    :cond_9e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_done_logout:Landroid/widget/TextView;

    const v1, 0x7f11030f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    :goto_a6
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity$1;

    const-string v1, "https://www.amazon.com/dp/B00P03D4D2"

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;Ljava/lang/String;)V

    :goto_ad
    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_down_other_method:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 108
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_down_other_method:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 109
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->activity_thirdpart_down_other_method:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->initView()V

    .line 60
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;->initEvent()V

    return-void
.end method
