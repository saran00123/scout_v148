.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "AccoutPwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;,
        Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_account_pwd_btn:Landroid/widget/Button;

.field private activity_account_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_account_pwd_confirm_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_account_pwd_old_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_account_pwd_old_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_account_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_account_pwd_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mConfirmPasswordError:Z

.field private mNewPasswordError:Z

.field private mPasswordError:Z

.field private myDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "AccoutPwdActivity"

    .line 43
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mConfirmPasswordError:Z

    .line 55
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mPasswordError:Z

    .line 56
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mNewPasswordError:Z

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_old_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mPasswordError:Z

    return p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mNewPasswordError:Z

    return p1
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_confirm_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$802(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mConfirmPasswordError:Z

    return p1
.end method

.method static synthetic access$902(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private changePwd()V
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 284
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_old_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v2

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 289
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkAvailable()Z
    .registers 4

    .line 320
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mPasswordError:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mConfirmPasswordError:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mNewPasswordError:Z

    if-eqz v0, :cond_22

    :cond_c
    const v0, 0x7f0a0053

    .line 321
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110202

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 323
    :cond_22
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mPasswordError:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mConfirmPasswordError:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->mNewPasswordError:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0
.end method

.method private initEvent()V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_old_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 115
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 116
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 118
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_old_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView()V
    .registers 2

    .line 124
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0448

    .line 125
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 126
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f0a0056

    .line 127
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_old_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a0058

    .line 128
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a0054

    .line 129
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a0057

    .line 130
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_old_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a0059

    .line 131
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a0055

    .line 132
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_confirm_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a0053

    .line 133
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->activity_account_pwd_btn:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 139
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_76

    .line 140
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 144
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x3f0

    if-eq p1, v1, :cond_21

    goto :goto_76

    .line 146
    :cond_21
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_2a

    .line 147
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2a
    const-string p1, "body"

    .line 148
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 149
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    if-nez p1, :cond_5b

    const p1, 0x7f11026d

    .line 151
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_76

    :cond_5b
    const p1, 0x7f0a01b5

    .line 159
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f11023d

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception p1

    .line 164
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_76
    :goto_76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0053

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_1c

    .line 270
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->finish()V

    goto :goto_1c

    .line 273
    :cond_13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->checkAvailable()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 274
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->changePwd()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 64
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 94
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 96
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 82
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 76
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 88
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d001c

    .line 70
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 107
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f11000a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->center_title:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->initView()V

    .line 102
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;->initEvent()V

    return-void
.end method
