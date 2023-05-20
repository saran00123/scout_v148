.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "WiFiPwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$EmptyTextListener;,
        Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$InputValidator;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_wifi_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_wifi_pwd_confirm_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_wifi_pwd_next_btn:Landroid/widget/Button;

.field private activity_wifi_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_wifi_pwd_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_wifi_pwd_warnning:Landroid/widget/TextView;

.field private activity_wifi_pwd_warnning_2:Landroid/widget/TextView;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private center_title:Landroid/widget/TextView;

.field private isWaitChangePWD:Z

.field private layout_left:Landroid/widget/LinearLayout;

.field private mConfirmPasswordError:Z

.field private mPasswordError:Z

.field private myDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "WiFiPwdActivity"

    .line 50
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->mConfirmPasswordError:Z

    .line 59
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->mPasswordError:Z

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->isWaitChangePWD:Z

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->mPasswordError:Z

    return p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_confirm_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->mConfirmPasswordError:Z

    return p1
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$702(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method private changePwd()V
    .registers 6

    .line 294
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 295
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 296
    :cond_7
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 297
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 298
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v2, "passwd"

    .line 300
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ssid"

    const-string v3, ""

    .line 301
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v2

    .line 303
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    :goto_2e
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 307
    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_46
    const-wide/16 v0, 0x1

    .line 308
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkAvailable()Z
    .registers 4

    .line 336
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->mPasswordError:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->mConfirmPasswordError:Z

    if-eqz v0, :cond_1e

    :cond_8
    const v0, 0x7f0a01b5

    .line 337
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110202

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 339
    :cond_1e
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->mPasswordError:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->mConfirmPasswordError:Z

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

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_next_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 142
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 143
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$InputValidator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$InputValidator;

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView()V
    .registers 2

    .line 148
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0448

    .line 149
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 150
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f0a01b6

    .line 151
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a01b3

    .line 152
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a01b7

    .line 153
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a01b4

    .line 154
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_confirm_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a01b5

    .line 155
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_next_btn:Landroid/widget/Button;

    const v0, 0x7f0a01b9

    .line 156
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_warnning:Landroid/widget/TextView;

    const v0, 0x7f0a01ba

    .line 157
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_warnning_2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 163
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_76

    .line 164
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 168
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x3f0

    if-eq p1, v1, :cond_21

    goto :goto_76

    .line 170
    :cond_21
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_2a

    .line 171
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2a
    const-string p1, "body"

    .line 172
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    if-nez p1, :cond_5b

    const p1, 0x7f11026d

    .line 175
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_76

    :cond_5b
    const p1, 0x7f0a01b5

    .line 183
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f11023d

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->getString(I)Ljava/lang/String;

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

    .line 188
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_76
    :goto_76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01b5

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_1c

    .line 282
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->finish()V

    goto :goto_1c

    .line 285
    :cond_13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->checkAvailable()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 286
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->changePwd()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 72
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 102
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 104
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 105
    :cond_a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 90
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 83
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 96
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0053

    .line 78
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 10

    .line 118
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f11026c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->center_title:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 124
    :cond_1f
    new-instance p1, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_warnning:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v1, 0x7f0801ab

    .line 126
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_warnning:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_warnning:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v6, v4

    double-to-int v3, v6

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    new-instance v2, Landroid/text/style/ImageSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v1, 0x22

    const/4 v3, 0x3

    .line 129
    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 130
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_warnning:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance p1, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_warnning_2:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 134
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->activity_wifi_pwd_warnning_2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 112
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->initView()V

    .line 113
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;->initEvent()V

    return-void
.end method
