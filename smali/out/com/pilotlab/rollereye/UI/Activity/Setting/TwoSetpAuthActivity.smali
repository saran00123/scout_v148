.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "TwoSetpAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_two_step_auth_btn:Landroid/widget/Button;

.field private activity_two_step_auth_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_two_step_auth_key:Landroid/widget/TextView;

.field private authKey:Ljava/lang/String;

.field private center_title:Landroid/widget/TextView;

.field private code:Ljava/lang/String;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->authKey:Ljava/lang/String;

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->code:Ljava/lang/String;

    const-string v0, "TwoSetpAuthActivity"

    .line 45
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private Verify()V
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->code:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_27

    .line 197
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_btn:Landroid/widget/Button;

    const v2, 0x7f1102b0

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_75

    .line 198
    :cond_27
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->authKey:Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 199
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 200
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

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->authKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->code:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->verifyTOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 201
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_75

    .line 245
    :cond_65
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_btn:Landroid/widget/Button;

    const v2, 0x7f1102c2

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_75
    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_et:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->authKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->authKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)Landroid/widget/TextView;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_key:Landroid/widget/TextView;

    return-object p0
.end method

.method private initData()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 117
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

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->TOTPKey(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 118
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 66
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0448

    .line 67
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 68
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->center_title:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f11006a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a018b

    .line 72
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a018c

    .line 73
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_key:Landroid/widget/TextView;

    const v0, 0x7f0a018a

    .line 75
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_btn:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_key:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 100
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a018a

    if-eq p1, v0, :cond_4a

    const v0, 0x7f0a018c

    if-eq p1, v0, :cond_1d

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_19

    goto :goto_4d

    .line 170
    :cond_19
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->finish()V

    goto :goto_4d

    :cond_1d
    const-string p1, "clipboard"

    .line 174
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 176
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_key:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Label"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 179
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->activity_two_step_auth_key:Landroid/widget/TextView;

    const v0, 0x7f1102b1

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_4d

    .line 182
    :cond_4a
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->Verify()V

    :goto_4d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 189
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 191
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 160
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 161
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 154
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d004d

    .line 55
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 112
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->initData()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->initView()V

    .line 61
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;->initEvent()V

    return-void
.end method
