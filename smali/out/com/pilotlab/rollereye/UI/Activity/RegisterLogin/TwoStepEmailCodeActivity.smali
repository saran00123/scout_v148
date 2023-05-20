.class public Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "TwoStepEmailCodeActivity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/CustomerView/CodeEditText$OnTextFinishListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_send_email_code_et:Lcom/pilotlab/rollereye/CustomerView/CodeEditText;

.field private activity_send_email_code_tv:Landroid/widget/TextView;

.field private activity_send_email_verify:Landroid/widget/TextView;

.field private code:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private msgNo:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "TwoStepEmailCodeActivity"

    .line 45
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->email:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->code:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->msgNo:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->password:Ljava/lang/String;

    return-void
.end method

.method private GetEmailCode()V
    .registers 9

    .line 101
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->email:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->sendEmailCode(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 102
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 128
    new-instance v0, Lcom/pilotlab/rollereye/Controller/CountDownTimerController;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->activity_send_email_code_tv:Landroid/widget/TextView;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/pilotlab/rollereye/Controller/CountDownTimerController;-><init>(Landroid/widget/TextView;JJ)V

    .line 129
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Controller/CountDownTimerController;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private QueryRobot()V
    .registers 3

    .line 192
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryRobot(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 194
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->msgNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->password:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->QueryRobot()V

    return-void
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;)Lcom/pilotlab/rollereye/CustomerView/CodeEditText;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->activity_send_email_code_et:Lcom/pilotlab/rollereye/CustomerView/CodeEditText;

    return-object p0
.end method

.method private initEvent()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->activity_send_email_code_et:Lcom/pilotlab/rollereye/CustomerView/CodeEditText;

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setOnTextFinishListener(Lcom/pilotlab/rollereye/CustomerView/CodeEditText$OnTextFinishListener;)V

    .line 76
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->activity_send_email_code_tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a0168

    .line 81
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->activity_send_email_verify:Landroid/widget/TextView;

    const v0, 0x7f0a0166

    .line 82
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->activity_send_email_code_et:Lcom/pilotlab/rollereye/CustomerView/CodeEditText;

    const v0, 0x7f0a0167

    .line 83
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->activity_send_email_code_tv:Landroid/widget/TextView;

    const v0, 0x7f0a0448

    .line 84
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->layout_left:Landroid/widget/LinearLayout;

    .line 85
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 263
    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 265
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0167

    if-eq p1, v0, :cond_20

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_23

    .line 275
    :cond_f
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 276
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 278
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->finish()V

    goto :goto_23

    .line 272
    :cond_20
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->GetEmailCode()V

    :goto_23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 58
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTextFinish(Ljava/lang/CharSequence;I)V
    .registers 6

    .line 135
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lenght:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p2, :cond_2b

    .line 138
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 140
    :cond_2b
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->code:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->email:Ljava/lang/String;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->msgNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->code:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->tfa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 143
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$2;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0047

    .line 63
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 9

    .line 90
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->email:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "msgNo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->msgNo:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->password:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->activity_send_email_verify:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f110338

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance p1, Lcom/pilotlab/rollereye/Controller/CountDownTimerController;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->activity_send_email_code_tv:Landroid/widget/TextView;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/pilotlab/rollereye/Controller/CountDownTimerController;-><init>(Landroid/widget/TextView;JJ)V

    .line 96
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Controller/CountDownTimerController;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected setUpView()V
    .registers 2

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/StatusNavUtils;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 69
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->initView()V

    .line 70
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/TwoStepEmailCodeActivity;->initEvent()V

    return-void
.end method
