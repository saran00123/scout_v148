.class public Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "SendEmailCodeActivity.java"

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

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "SendEmailCodeActivity"

    .line 36
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->email:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->code:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->password:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->username:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->msgNo:Ljava/lang/String;

    return-void
.end method

.method private GetEmailCode()V
    .registers 9

    .line 90
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->email:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->sendEmailCode(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 91
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 117
    new-instance v0, Lcom/pilotlab/rollereye/Controller/CountDownTimerController;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->activity_send_email_code_tv:Landroid/widget/TextView;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/pilotlab/rollereye/Controller/CountDownTimerController;-><init>(Landroid/widget/TextView;JJ)V

    .line 118
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Controller/CountDownTimerController;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->msgNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->username:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->password:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->email:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)Lcom/pilotlab/rollereye/CustomerView/CodeEditText;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->activity_send_email_code_et:Lcom/pilotlab/rollereye/CustomerView/CodeEditText;

    return-object p0
.end method

.method private initEvent()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->activity_send_email_code_et:Lcom/pilotlab/rollereye/CustomerView/CodeEditText;

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;->setOnTextFinishListener(Lcom/pilotlab/rollereye/CustomerView/CodeEditText$OnTextFinishListener;)V

    .line 68
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->activity_send_email_code_tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a0168

    .line 73
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->activity_send_email_verify:Landroid/widget/TextView;

    const v0, 0x7f0a0166

    .line 74
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/CodeEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->activity_send_email_code_et:Lcom/pilotlab/rollereye/CustomerView/CodeEditText;

    const v0, 0x7f0a0167

    .line 75
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->activity_send_email_code_tv:Landroid/widget/TextView;

    const v0, 0x7f0a0448

    .line 76
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->layout_left:Landroid/widget/LinearLayout;

    .line 77
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0167

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_16

    .line 189
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->finish()V

    goto :goto_16

    .line 186
    :cond_13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->GetEmailCode()V

    :goto_16
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 50
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTextFinish(Ljava/lang/CharSequence;I)V
    .registers 9

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->TAG:Ljava/lang/String;

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

    .line 126
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p2, :cond_2b

    .line 127
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 129
    :cond_2b
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->code:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->email:Ljava/lang/String;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->msgNo:Ljava/lang/String;

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->code:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->emailRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 132
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0047

    .line 55
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 4

    .line 82
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->email:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->password:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->username:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->activity_send_email_verify:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f110338

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->GetEmailCode()V

    return-void
.end method

.method protected setUpView()V
    .registers 2

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/StatusNavUtils;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 61
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/SendEmailCodeActivity;->initEvent()V

    return-void
.end method
