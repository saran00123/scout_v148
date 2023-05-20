.class public Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "GuideConDevActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_guide_con_dev_forget_tv:Landroid/widget/TextView;

.field private activity_guide_con_dev_next_btn:Landroid/widget/Button;

.field private center_title:Landroid/widget/TextView;

.field private configSettingWiFi:Z

.field private connectedIP:Ljava/lang/String;

.field private greenDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private isTrack:I

.field private layout_left:Landroid/widget/LinearLayout;

.field private lm:Landroid/location/LocationManager;

.field private mCheckWifiDisposable:Lio/reactivex/disposables/Disposable;

.field private myDisposable:Lio/reactivex/disposables/Disposable;

.field private myImgDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private myWifiTipsDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private right_img_btn:Landroid/widget/ImageButton;

.field private wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "GuideConDevActivity"

    .line 59
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->connectedIP:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->configSettingWiFi:Z

    .line 78
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->isTrack:I

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->mCheckWifiDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->initWiFiStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->checkGPS()V

    return-void
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->configSettingWiFi:Z

    return p1
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myImgDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method private checkGPS()V
    .registers 8

    const-string v0, "location"

    .line 377
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->lm:Landroid/location/LocationManager;

    .line 378
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 380
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 381
    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3f

    :cond_22
    const v0, 0x7f1102ad

    .line 384
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$4;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_3f
    return-void
.end method

.method private getInitState()V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 250
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_14

    .line 253
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    :cond_14
    const-wide/16 v0, 0x1

    .line 255
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->right_img_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->activity_guide_con_dev_next_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->activity_guide_con_dev_forget_tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    const v1, 0x7f0a0284

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    const v1, 0x7f0a0286

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    const v1, 0x7f0a0285

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    const v1, 0x7f0a0287

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPermission()V
    .registers 5

    .line 398
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v1, 0x1

    .line 399
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->setLogging(Z)V

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 400
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    .line 401
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initView()V
    .registers 4

    .line 229
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    .line 230
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    const v2, 0x7f0a0285

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 231
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    const v1, 0x7f0a0287

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 232
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0448

    .line 233
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->layout_left:Landroid/widget/LinearLayout;

    .line 234
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->layout_left:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0210

    .line 235
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f0a04f0

    .line 236
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->right_img_btn:Landroid/widget/ImageButton;

    .line 237
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->right_img_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a00ce

    .line 238
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->activity_guide_con_dev_forget_tv:Landroid/widget/TextView;

    const v0, 0x7f0a00cf

    .line 239
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->activity_guide_con_dev_next_btn:Landroid/widget/Button;

    return-void
.end method

.method private initWiFiStatus()V
    .registers 8

    .line 160
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->getWifiIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->connectedIP:Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->connectedIP:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->WIFI_DIRECT_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 163
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->activity_guide_con_dev_next_btn:Landroid/widget/Button;

    const v1, 0x7f110039

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_70

    .line 164
    :cond_25
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_68

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->connectedIP:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->WIFI_DIRECT_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 165
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myWifiTipsDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_46

    return-void

    :cond_46
    const v0, 0x7f110164

    .line 168
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$2;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myWifiTipsDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 174
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myWifiTipsDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_70

    .line 178
    :cond_68
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->activity_guide_con_dev_next_btn:Landroid/widget/Button;

    const v1, 0x7f11015d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_70
    return-void
.end method

.method private setTrackParam(Ljava/lang/String;I)V
    .registers 6

    .line 358
    invoke-static {p0, p1, p2}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setTrackParam(Landroid/content/Context;Ljava/lang/String;I)V

    .line 360
    new-instance p1, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    invoke-direct {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;-><init>()V

    .line 361
    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;->setTrack(I)V

    .line 363
    sget-object p2, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_SET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 364
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 366
    :try_start_12
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "motion"

    .line 367
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    .line 370
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 372
    :goto_33
    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    return-void
.end method

.method private showChoise()V
    .registers 5

    .line 430
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->greenDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_7

    .line 431
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 433
    :cond_7
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0067

    const/4 v2, 0x0

    .line 434
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11015c

    .line 435
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v2, 0x7f0a023d

    .line 436
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f11016b

    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f110071

    .line 437
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$6;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v2, 0x7f11003a

    .line 448
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$7;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 458
    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 459
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 460
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->createGreenButton()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->greenDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 461
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->greenDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 300
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result p1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_d

    goto :goto_20

    .line 302
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->mCheckWifiDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_14

    .line 303
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 304
    :cond_14
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_1d

    .line 305
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 306
    :cond_1d
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->initWiFiStatus()V

    :goto_20
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "body"

    .line 313
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v1

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->SOCKET_TYPE:I

    if-ne v1, v2, :cond_7f

    .line 314
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 315
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :try_start_13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 318
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x3e9

    if-eq p1, v2, :cond_23

    goto :goto_7f

    .line 320
    :cond_23
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    const/4 p1, 0x1

    const/4 v2, 0x0

    .line 321
    invoke-static {v2, p1, v2}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->symTimeAndZone(Lcom/pilotlab/rollereye/P2P/P2PClient;ZLjava/lang/String;)V

    .line 322
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "sn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->isTrack:I

    invoke-direct {p0, v2, v3}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->setTrackParam(Ljava/lang/String;I)V

    .line 324
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "init"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 325
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_54

    :cond_53
    const/4 p1, 0x0

    .line 326
    :goto_54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz v2, :cond_69

    .line 329
    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuidePwdActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "isFirst"

    .line 330
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7f

    :cond_69
    if-eqz p1, :cond_6f

    .line 334
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->showChoise()V

    goto :goto_7f

    .line 336
    :cond_6f
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->startActivity(Landroid/content/Intent;)V

    .line 338
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->finish()V
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception p1

    .line 344
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7f
    :goto_7f
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 568
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1315

    if-ne p1, p2, :cond_3f

    .line 570
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->lm:Landroid/location/LocationManager;

    const-string p2, "gps"

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 572
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 573
    const-class p2, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 574
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->startActivity(Landroid/content/Intent;)V

    .line 575
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->finish()V

    goto :goto_3f

    :cond_22
    const p1, 0x7f110263

    .line 577
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$13;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$13;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 586
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f11003a

    const v1, 0x7f110071

    const v2, 0x7f0a0287

    const v3, 0x7f0a0285

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_f0

    goto/16 :goto_ef

    :sswitch_17
    const p1, 0x7f11015f

    .line 495
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$10;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    .line 503
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$11;

    invoke-direct {v7, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    move-object v2, p0

    .line 495
    invoke-virtual/range {v2 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 508
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_ef

    .line 469
    :sswitch_3a
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->finish()V

    goto/16 :goto_ef

    .line 531
    :sswitch_3f
    iput v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->isTrack:I

    .line 532
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 533
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_ef

    .line 539
    :sswitch_55
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->dismiss()V

    .line 540
    iput-boolean v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->configSettingWiFi:Z

    .line 541
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_ef

    .line 526
    :sswitch_68
    iput v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->isTrack:I

    .line 527
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 528
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_ef

    .line 536
    :sswitch_7d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->wheelSwitchDialog:Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->dismiss()V

    goto :goto_ef

    .line 472
    :sswitch_83
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v2, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v2, :cond_9d

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->connectedIP:Ljava/lang/String;

    sget-object v2, Lcom/pilotlab/rollereye/Common/CommonConstant;->WIFI_DIRECT_IP:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 473
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getInitState()V

    goto :goto_ef

    :cond_9d
    const p1, 0x7f110160

    .line 476
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$8;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    .line 484
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$9;

    invoke-direct {v7, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    move-object v2, p0

    .line 476
    invoke-virtual/range {v2 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_ef

    .line 511
    :sswitch_bf
    new-instance p1, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {p1, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0068

    const/4 v1, 0x0

    .line 512
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a024d

    .line 513
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$12;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$12;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x3f0ccccd    # 0.55f

    .line 520
    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 521
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 522
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myImgDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 523
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myImgDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_ef
    return-void

    :sswitch_data_f0
    .sparse-switch
        0x7f0a00ce -> :sswitch_bf
        0x7f0a00cf -> :sswitch_83
        0x7f0a0284 -> :sswitch_7d
        0x7f0a0285 -> :sswitch_68
        0x7f0a0286 -> :sswitch_55
        0x7f0a0287 -> :sswitch_3f
        0x7f0a0448 -> :sswitch_3a
        0x7f0a04f0 -> :sswitch_17
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 101
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 209
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 210
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 211
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 212
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myImgDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_11

    .line 213
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 214
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myWifiTipsDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_18

    .line 215
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    :cond_18
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 184
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    .line 185
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 186
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 189
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 190
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_25
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 113
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->fullScreen()V

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 119
    :cond_17
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-eq v0, v1, :cond_2b

    .line 120
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->activity_guide_con_dev_next_btn:Landroid/widget/Button;

    const v1, 0x7f11015d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 124
    :cond_2b
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->configSettingWiFi:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_58

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->configSettingWiFi:Z

    .line 128
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    const-wide/16 v0, 0x1388

    .line 130
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_58
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 197
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d002c

    .line 107
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 244
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f110102

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->center_title:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 203
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->initView()V

    .line 204
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->initEvent()V

    return-void
.end method
