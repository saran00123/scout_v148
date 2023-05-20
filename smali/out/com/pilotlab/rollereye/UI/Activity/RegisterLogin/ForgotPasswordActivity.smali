.class public Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$EmptyTextListener;,
        Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;
    }
.end annotation


# instance fields
.field private activity_forget_password_email_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_forget_password_email_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_forget_password_reset_btn:Landroidx/appcompat/widget/AppCompatButton;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mEmailError:Z

.field private myDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->mEmailError:Z

    return-void
.end method

.method private ResetPassword()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 105
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->activity_forget_password_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->resetPassword(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 107
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 108
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->activity_forget_password_email_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->mEmailError:Z

    return p1
.end method

.method private checkAvailable()Z
    .registers 4

    .line 206
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->mEmailError:Z

    if-eqz v0, :cond_1a

    const v0, 0x7f0a00cb

    .line 207
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110202

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 209
    :cond_1a
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->mEmailError:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private initEvents()V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->activity_forget_password_reset_btn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->activity_forget_password_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->activity_forget_password_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView()V
    .registers 2

    .line 79
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0448

    .line 80
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00cd

    .line 81
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->activity_forget_password_reset_btn:Landroidx/appcompat/widget/AppCompatButton;

    const v0, 0x7f0a00cb

    .line 82
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->activity_forget_password_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a00cc

    .line 83
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->activity_forget_password_email_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00cd

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_1c

    .line 96
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->finish()V

    goto :goto_1c

    .line 90
    :cond_13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->checkAvailable()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 91
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->ResetPassword()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d002b

    .line 54
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 67
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getEmail()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 68
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->activity_forget_password_email_et:Lcom/google/android/material/textfield/TextInputEditText;

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

    .line 59
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/StatusNavUtils;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 60
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->initView()V

    .line 61
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/ForgotPasswordActivity;->initEvents()V

    return-void
.end method
