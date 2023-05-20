.class public Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;,
        Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;
    }
.end annotation


# instance fields
.field private activity_login_email_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_login_email_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_login_forget_btn:Landroidx/appcompat/widget/AppCompatButton;

.field private activity_login_login_btn:Landroidx/appcompat/widget/AppCompatButton;

.field private activity_login_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_login_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mEmailError:Z

.field private mPasswordError:Z

.field private myDisposable:Lio/reactivex/disposables/Disposable;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "LoginActivity"

    .line 49
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->tag:Ljava/lang/String;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->mEmailError:Z

    .line 59
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->mPasswordError:Z

    return-void
.end method

.method private Login(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 134
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->login(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 137
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;

    invoke-direct {v0, p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private QueryRobot()V
    .registers 3

    .line 192
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryRobot(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 195
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->QueryRobot()V

    return-void
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_email_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$502(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Z)Z
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->mEmailError:Z

    return p1
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$702(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Z)Z
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->mPasswordError:Z

    return p1
.end method

.method private checkAvailable()Z
    .registers 4

    .line 329
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->mEmailError:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->mPasswordError:Z

    if-eqz v0, :cond_1e

    :cond_8
    const v0, 0x7f0a00e5

    .line 330
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110202

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 332
    :cond_1e
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->mEmailError:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->mPasswordError:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method private initEvent()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 98
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 99
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_login_btn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_forget_btn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 2

    .line 83
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a00ea

    .line 85
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a00e9

    .line 86
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a00e6

    .line 87
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_email_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a00e5

    .line 88
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a00e8

    .line 89
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_login_btn:Landroidx/appcompat/widget/AppCompatButton;

    const v0, 0x7f0a00e7

    .line 90
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_forget_btn:Landroidx/appcompat/widget/AppCompatButton;

    const v0, 0x7f0a0448

    .line 91
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->layout_left:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_38

    goto :goto_37

    .line 120
    :sswitch_8
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->finish()V

    goto :goto_37

    .line 114
    :sswitch_c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->checkAvailable()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->Login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 123
    :sswitch_2a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 124
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->startActivity(Landroid/content/Intent;)V

    :cond_37
    :goto_37
    return-void

    :sswitch_data_38
    .sparse-switch
        0x7f0a00e7 -> :sswitch_2a
        0x7f0a00e8 -> :sswitch_c
        0x7f0a0448 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 66
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0031

    .line 71
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 106
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getEmail()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 107
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->activity_login_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    return-void
.end method

.method protected setUpView()V
    .registers 2

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/StatusNavUtils;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 77
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->initView()V

    .line 78
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LoginActivity;->initEvent()V

    return-void
.end method
