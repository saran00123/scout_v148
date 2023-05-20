.class public Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private btn_login:Landroid/widget/Button;

.field private btn_sign:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "LaunchActivity"

    .line 17
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private initEvent()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->btn_sign:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->btn_login:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a01f7

    .line 45
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->btn_sign:Landroid/widget/Button;

    const v0, 0x7f0a01f4

    .line 46
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->btn_login:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a01f4

    if-eq p1, v1, :cond_1d

    const v1, 0x7f0a01f7

    if-eq p1, v1, :cond_14

    goto :goto_25

    .line 63
    :cond_14
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_25

    .line 59
    :cond_1d
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    :goto_25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 21
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0030

    .line 27
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected setUpView()V
    .registers 2

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/StatusNavUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 33
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/StatusNavUtils;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 35
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->initView()V

    .line 36
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;->initEvent()V

    return-void
.end method
