.class public Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;
.super Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;
.source "SettingSecrecyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private fragment_secrecy_2_step_authenticator_layout:Landroid/widget/RelativeLayout;

.field private fragment_secrecy_2_step_authenticator_lock:Landroid/widget/ImageView;

.field private fragment_secrecy_2_step_layout:Landroid/widget/RelativeLayout;

.field private fragment_secrecy_2_step_switch:Landroid/widget/Switch;

.field private fragment_secrecy_remove_account:Landroid/widget/RelativeLayout;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;-><init>()V

    const-string v0, "SettingSecrecyFragment"

    .line 47
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_authenticator_layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)Landroid/widget/Switch;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_switch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)Landroid/widget/ImageView;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_authenticator_lock:Landroid/widget/ImageView;

    return-object p0
.end method

.method private deleteAccount()V
    .registers 8

    const v0, 0x7f1102bd

    .line 257
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110071

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)V

    const v0, 0x7f11003a

    .line 299
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$4;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$4;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)V

    move-object v1, p0

    .line 257
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private deleteTotp()V
    .registers 8

    const v0, 0x7f1102b2

    .line 309
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$5;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)V

    const v0, 0x7f110007

    .line 344
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$6;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$6;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)V

    move-object v1, p0

    .line 309
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_remove_account:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_authenticator_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_authenticator_lock:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initScoutData()V
    .registers 1

    return-void
.end method

.method private initServerData()V
    .registers 4

    .line 172
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_52

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_switch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 175
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 176
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 177
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$2;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_63

    .line 208
    :cond_52
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setClickable(Z)V

    :goto_63
    return-void
.end method

.method private initView()V
    .registers 3

    .line 215
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 216
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->view:Landroid/view/View;

    const v1, 0x7f0a034d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_switch:Landroid/widget/Switch;

    .line 217
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->view:Landroid/view/View;

    const v1, 0x7f0a034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_authenticator_layout:Landroid/widget/RelativeLayout;

    .line 218
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->view:Landroid/view/View;

    const v1, 0x7f0a034c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_layout:Landroid/widget/RelativeLayout;

    .line 219
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->view:Landroid/view/View;

    const v1, 0x7f0a034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_authenticator_lock:Landroid/widget/ImageView;

    .line 220
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0352

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_remove_account:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;
    .registers 2

    .line 62
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setTFA()V
    .registers 5

    .line 355
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->fragment_secrecy_2_step_switch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 358
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->TFASettings(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 360
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$7;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    :pswitch_b
    goto :goto_38

    .line 113
    :pswitch_c
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultP2PClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_38

    .line 114
    :cond_2e
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->initP2PClient()V

    .line 115
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->initScoutData()V

    goto :goto_38

    .line 120
    :pswitch_35
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->initServerData()V

    :cond_38
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x20
        :pswitch_35
        :pswitch_35
        :pswitch_b
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 128
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_1b

    .line 130
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 131
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 135
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method protected initP2PClient()V
    .registers 3

    .line 162
    monitor-enter p0

    .line 163
    :try_start_1
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 164
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 225
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_26

    goto :goto_25

    .line 248
    :sswitch_8
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->deleteAccount()V

    goto :goto_25

    .line 242
    :sswitch_c
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->setTFA()V

    goto :goto_25

    .line 245
    :sswitch_10
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->deleteTotp()V

    goto :goto_25

    .line 237
    :sswitch_14
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 238
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TwoSetpAuthActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->startActivity(Landroid/content/Intent;)V

    :goto_25
    return-void

    :sswitch_data_26
    .sparse-switch
        0x7f0a034a -> :sswitch_14
        0x7f0a034b -> :sswitch_10
        0x7f0a034d -> :sswitch_c
        0x7f0a0352 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getArguments()Landroid/os/Bundle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d009d

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->view:Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->initView()V

    .line 82
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->initEvent()V

    .line 83
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .registers 1

    .line 105
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .registers 1

    .line 230
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 153
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onPause()V

    .line 154
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 155
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 157
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 158
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1b
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 143
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onResume()V

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 145
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 147
    :cond_14
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->initP2PClient()V

    .line 148
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->initServerData()V

    return-void
.end method
