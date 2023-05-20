.class public Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "ThirdPartLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_thirdpart_login_logo:Landroid/widget/ImageView;

.field private activity_thirdpart_login_logo_2:Landroid/widget/ImageView;

.field private activity_thirdpart_login_other_method:Landroid/widget/TextView;

.field private activity_thirdpart_login_sign_in:Landroid/widget/Button;

.field private activity_thirdpart_login_tips:Landroid/widget/TextView;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private needCheckStatus:Z

.field private param_type:Ljava/lang/String;

.field private param_url:Ljava/lang/String;

.field private requestCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "ThirdPartLoginActivity"

    .line 40
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_type:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_url:Ljava/lang/String;

    const/16 v0, 0x123

    .line 54
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->requestCode:I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->needCheckStatus:Z

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_type:Ljava/lang/String;

    return-object p0
.end method

.method private initEvent()V
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_sign_in:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a0448

    .line 196
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 197
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->center_title:Landroid/widget/TextView;

    .line 198
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 199
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0187

    .line 200
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_sign_in:Landroid/widget/Button;

    const v0, 0x7f0a0186

    .line 201
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_other_method:Landroid/widget/TextView;

    const v0, 0x7f0a0184

    .line 202
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_logo:Landroid/widget/ImageView;

    const v0, 0x7f0a0185

    .line 203
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_logo_2:Landroid/widget/ImageView;

    const v0, 0x7f0a0188

    .line 204
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_tips:Landroid/widget/TextView;

    return-void
.end method

.method private querySkillStatus()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 77
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->querySkills(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 78
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 234
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 235
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/16 p3, 0x124

    const-string v0, "param_type"

    if-eq p2, p3, :cond_21

    const/16 p3, 0x125

    if-eq p2, p3, :cond_13

    goto :goto_31

    .line 244
    :cond_13
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_type:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-class p2, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartFailActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_31

    .line 238
    :cond_21
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_type:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-class p2, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartDoneActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->finish()V

    :goto_31
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0187

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_59

    .line 212
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->finish()V

    goto :goto_59

    .line 215
    :cond_13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 216
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_type:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_CUSTOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_type:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_41

    .line 222
    :cond_2d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->needCheckStatus:Z

    goto :goto_59

    .line 217
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_type:Ljava/lang/String;

    const-string v1, "param_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_url:Ljava/lang/String;

    const-string v1, "param_url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v0, 0x123

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 61
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->fullScreen()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 67
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->fullScreen()V

    .line 69
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->needCheckStatus:Z

    if-eqz v0, :cond_10

    .line 70
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->querySkillStatus()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->needCheckStatus:Z

    :cond_10
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 127
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d004c

    .line 133
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 6

    .line 144
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "param_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_type:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "param_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_url:Ljava/lang/String;

    .line 146
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_other_method:Landroid/widget/TextView;

    .line 147
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_type:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_CUSTOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->param_type:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_77

    .line 165
    :cond_3c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_logo:Landroid/widget/ImageView;

    const v1, 0x7f08016f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_logo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    .line 169
    invoke-static {p0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_sign_in:Landroid/widget/Button;

    const v1, 0x7f11019d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_tips:Landroid/widget/TextView;

    const v1, 0x7f11015a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$3;

    const-string v1, "https://play.google.com/store/apps/details?id=com.google.android.apps.chromecast.app"

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;Ljava/lang/String;)V

    goto :goto_a6

    .line 150
    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_logo:Landroid/widget/ImageView;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_logo_2:Landroid/widget/ImageView;

    const v1, 0x7f0800fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_tips:Landroid/widget/TextView;

    const v1, 0x7f1100ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_sign_in:Landroid/widget/Button;

    const v1, 0x7f1100cb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 155
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$2;

    const-string v1, "https://www.amazon.com/dp/B00P03D4D2"

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;Ljava/lang/String;)V

    :goto_a6
    const/4 v1, 0x0

    .line 184
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_other_method:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_other_method:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 187
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->activity_thirdpart_login_other_method:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 138
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->initView()V

    .line 139
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;->initEvent()V

    return-void
.end method
