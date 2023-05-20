.class public Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;,
        Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;
    }
.end annotation


# instance fields
.field private activity_register_email_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_register_email_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_register_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_register_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_register_re_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_register_re_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_register_register_btn:Landroidx/appcompat/widget/AppCompatButton;

.field private activity_register_terms_n_condition_checkbox:Landroid/widget/CheckBox;

.field private activity_register_username_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_register_username_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_tv_terms_conditions:Landroid/widget/TextView;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mConfirmPasswordError:Z

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mEmailError:Z

.field private mNameError:Z

.field private mPasswordError:Z

.field private mTermsAndCondiionCheckError:Z

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "RegisterActivity"

    .line 57
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->tag:Ljava/lang/String;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mNameError:Z

    .line 59
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mConfirmPasswordError:Z

    .line 60
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mPasswordError:Z

    .line 61
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mEmailError:Z

    .line 62
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mTermsAndCondiionCheckError:Z

    return-void
.end method

.method private Register()V
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 149
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_username_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_re_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v4

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->verifyEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v3

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    .line 155
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mPasswordError:Z

    return p1
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mTermsAndCondiionCheckError:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_re_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_re_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mConfirmPasswordError:Z

    return p1
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Landroidx/appcompat/widget/AppCompatButton;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_register_btn:Landroidx/appcompat/widget/AppCompatButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_email_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mEmailError:Z

    return p1
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_username_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$802(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mNameError:Z

    return p1
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method private checkAvailable()Z
    .registers 4

    .line 311
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mNameError:Z

    const/4 v1, -0x1

    const v2, 0x7f0a014f

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mEmailError:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mPasswordError:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mConfirmPasswordError:Z

    if-eqz v0, :cond_15

    goto :goto_2c

    .line 314
    :cond_15
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mTermsAndCondiionCheckError:Z

    if-eqz v0, :cond_3e

    .line 315
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f11022b

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_3e

    .line 312
    :cond_2c
    :goto_2c
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f110202

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 318
    :cond_3e
    :goto_3e
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mNameError:Z

    if-nez v0, :cond_54

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mEmailError:Z

    if-nez v0, :cond_54

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mPasswordError:Z

    if-nez v0, :cond_54

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mConfirmPasswordError:Z

    if-nez v0, :cond_54

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mTermsAndCondiionCheckError:Z

    if-nez v0, :cond_54

    const/4 v0, 0x1

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    return v0
.end method

.method private initEvent()V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_tv_terms_conditions:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_register_btn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_username_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_re_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_username_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 112
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 113
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_re_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 115
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_terms_n_condition_checkbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 83
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a014a

    .line 85
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_email_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a0448

    .line 86
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0152

    .line 87
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_username_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a014c

    .line 88
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a014e

    .line 89
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_re_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a0149

    .line 90
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_email_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a0151

    .line 91
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_username_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a014b

    .line 92
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a014d

    .line 93
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_re_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a0150

    .line 94
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_terms_n_condition_checkbox:Landroid/widget/CheckBox;

    const v1, 0x7f0a014f

    .line 95
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_register_btn:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0a0189

    .line 96
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_tv_terms_conditions:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->activity_register_terms_n_condition_checkbox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a014f

    if-eq p1, v0, :cond_29

    const v0, 0x7f0a0189

    if-eq p1, v0, :cond_18

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_14

    goto :goto_32

    .line 141
    :cond_14
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->finish()V

    goto :goto_32

    .line 137
    :cond_18
    new-instance p1, Landroid/content/Intent;

    const-string v0, "https://www.moorebot.com/policies/terms-of-service"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_32

    .line 132
    :cond_29
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->checkAvailable()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 133
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->Register()V

    :cond_32
    :goto_32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 66
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 195
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 197
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 198
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_11

    .line 199
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_11
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0043

    .line 71
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected setUpView()V
    .registers 2

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/StatusNavUtils;->setNavigationBarColor(Landroid/app/Activity;I)V

    .line 77
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->initView()V

    .line 78
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/RegisterActivity;->initEvent()V

    return-void
.end method
