.class public Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "GuidePwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$EmptyTextListener;,
        Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_guide_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_guide_pwd_confirm_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_guide_pwd_next_btn:Landroid/widget/Button;

.field private activity_guide_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

.field private activity_guide_pwd_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_guide_pwd_warnning:Landroid/widget/TextView;

.field private activity_guide_pwd_warnning_2:Landroid/widget/TextView;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private center_title:Landroid/widget/TextView;

.field private greenDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private isFirst:Z

.field private isWaitChangePWD:Z

.field private layout_left:Landroid/widget/LinearLayout;

.field private lm:Landroid/location/LocationManager;

.field private mConfirmPasswordError:Z

.field private mPasswordError:Z

.field private myDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "GuidePwdActivity"

    .line 61
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->mConfirmPasswordError:Z

    .line 69
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->mPasswordError:Z

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->isWaitChangePWD:Z

    .line 83
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->isFirst:Z

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->checkGPS()V

    return-void
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$302(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Z)Z
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->mPasswordError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_confirm_layout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$702(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Z)Z
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->mConfirmPasswordError:Z

    return p1
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$802(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method private changePwd()V
    .registers 5

    .line 406
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 407
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 408
    :cond_7
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 409
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 410
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v2, "passwd"

    .line 412
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ssid"

    const-string v3, ""

    .line 413
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v2

    .line 415
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 417
    :goto_2e
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    .line 419
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkAvailable()Z
    .registers 4

    .line 447
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->mPasswordError:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->mConfirmPasswordError:Z

    if-eqz v0, :cond_1e

    :cond_8
    const v0, 0x7f0a00d2

    .line 448
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110202

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 450
    :cond_1e
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->mPasswordError:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->mConfirmPasswordError:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method private checkGPS()V
    .registers 8

    const-string v0, "location"

    .line 215
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->lm:Landroid/location/LocationManager;

    .line 216
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->finish()V

    goto :goto_42

    :cond_25
    const v0, 0x7f1102ad

    .line 223
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$1;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_42
    return-void
.end method

.method private initEvent()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_next_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 161
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$EmptyTextListener;

    invoke-direct {v1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$EmptyTextListener;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 162
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;

    invoke-direct {v1, p0, v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$InputValidator;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initPermission()V
    .registers 4

    .line 237
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v1, 0x1

    .line 238
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->setLogging(Z)V

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 239
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)V

    .line 240
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initView()V
    .registers 2

    .line 167
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0448

    .line 168
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 169
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f0a00d3

    .line 170
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_pwd_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a00d0

    .line 171
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_confirm_et:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a00d4

    .line 172
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_pwd_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a00d1

    .line 173
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_confirm_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a00d2

    .line 174
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_next_btn:Landroid/widget/Button;

    const v0, 0x7f0a00d6

    .line 175
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_warnning:Landroid/widget/TextView;

    const v0, 0x7f0a00d7

    .line 176
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_warnning_2:Landroid/widget/TextView;

    return-void
.end method

.method private showChoise()V
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->greenDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_7

    .line 270
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 272
    :cond_7
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0067

    const/4 v2, 0x0

    .line 273
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11015c

    .line 274
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v2, 0x7f0a023d

    .line 275
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f11016b

    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f110071

    .line 276
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$3;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v2, 0x7f11003a

    .line 288
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$4;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 298
    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 299
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 300
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->createGreenButton()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->greenDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 301
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->greenDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 182
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->SOCKET_TYPE:I

    if-ne v0, v1, :cond_71

    .line 183
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 187
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x3f0

    if-eq p1, v1, :cond_21

    goto :goto_71

    .line 189
    :cond_21
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_2a

    .line 190
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2a
    const-string p1, "body"

    .line 191
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 192
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    if-nez p1, :cond_56

    .line 194
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->isFirst:Z

    if-eqz p1, :cond_45

    .line 195
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->showChoise()V

    goto :goto_71

    .line 197
    :cond_45
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 198
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->finish()V

    goto :goto_71

    :cond_56
    const p1, 0x7f0a00d2

    .line 203
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f11023d

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p1

    .line 208
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_71
    :goto_71
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 455
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1314

    if-ne p1, p2, :cond_3f

    .line 457
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->lm:Landroid/location/LocationManager;

    const-string p2, "gps"

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 459
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 460
    const-class p2, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->startActivity(Landroid/content/Intent;)V

    .line 462
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->finish()V

    goto :goto_3f

    :cond_22
    const p1, 0x7f110263

    .line 464
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$6;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00d2

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_1c

    .line 394
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->finish()V

    goto :goto_1c

    .line 397
    :cond_13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->checkAvailable()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 398
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->changePwd()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 117
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 119
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 120
    :cond_a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 123
    :cond_1b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->greenDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_22

    .line 124
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    :cond_22
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 105
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 98
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 99
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 111
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d002d

    .line 93
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 12

    .line 136
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "isFirst"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->isFirst:Z

    .line 138
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110194

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 141
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 144
    :cond_2c
    new-instance p1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_warnning:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_warnning_2:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v3, 0x7f0801ab

    .line 147
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 148
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_warnning:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_warnning:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    int-to-double v8, v5

    mul-double/2addr v8, v6

    double-to-int v5, v8

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v3, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v0, 0x22

    const/4 v3, 0x3

    .line 150
    invoke-virtual {p1, v4, v1, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 151
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_warnning:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 153
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->activity_guide_pwd_warnning_2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 129
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->initView()V

    .line 130
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;->initEvent()V

    return-void
.end method
