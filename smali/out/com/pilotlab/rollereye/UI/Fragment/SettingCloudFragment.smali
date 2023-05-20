.class public Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;
.super Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;
.source "SettingCloudFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$OnFragmentInteractionListener;
    }
.end annotation


# instance fields
.field private SN:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private fragment_cloud_notification_layout:Landroid/widget/LinearLayout;

.field private fragment_cloud_onoff_layout:Landroid/widget/RelativeLayout;

.field private fragment_cloud_switch:Landroid/widget/Switch;

.field private fragment_setting_notification_app_switch:Landroid/widget/Switch;

.field private fragment_setting_notification_email_switch:Landroid/widget/Switch;

.field private fragment_setting_notification_format:Landroid/widget/RelativeLayout;

.field private fragment_setting_notification_layout:Landroid/widget/LinearLayout;

.field private fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

.field private fragment_setting_system_cloud:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_cloud_service:Landroid/widget/RelativeLayout;

.field private fragment_system_delete_cloud_video:Landroid/widget/RelativeLayout;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$OnFragmentInteractionListener;

.field private myQueryPushMessageSettingBean:Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

.field private myUserBean:Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;-><init>()V

    const-string v0, "SettingCloudFragment"

    .line 45
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->SN:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/LinearLayout;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_notification_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/LinearLayout;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->SN:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/view/View;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_email_switch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_app_switch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$502(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->myUserBean:Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    return-object p0
.end method

.method static synthetic access$702(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->myUserBean:Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    return-object p1
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_switch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->myQueryPushMessageSettingBean:Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

    return-object p0
.end method

.method static synthetic access$902(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;)Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->myQueryPushMessageSettingBean:Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

    return-object p1
.end method

.method private initData()V
    .registers 5

    .line 290
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    const-string v2, "fragment_setting_notification_onoff_switch"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_d1

    .line 292
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 293
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_app_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 294
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_email_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 295
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 296
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_format:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 302
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->SN:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->SN:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_6a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 307
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 308
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryPushMsgSettings(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 310
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 311
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 314
    new-instance v2, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$8;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$8;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 322
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_124

    .line 383
    :cond_d1
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_app_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 384
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_email_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 385
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 386
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_email_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 387
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_app_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 388
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 389
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_format:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 392
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 393
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_onoff_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_124
    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$2;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_app_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$3;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_email_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$4;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_app_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_email_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_format:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_system_cloud_service:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_system_delete_cloud_video:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 403
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0388

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_layout:Landroid/widget/LinearLayout;

    .line 404
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0389

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

    .line 405
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_app_switch:Landroid/widget/Switch;

    .line 406
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0386

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_email_switch:Landroid/widget/Switch;

    .line 407
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_switch:Landroid/widget/Switch;

    .line 408
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0301

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_notification_layout:Landroid/widget/LinearLayout;

    .line 410
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0387

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_format:Landroid/widget/RelativeLayout;

    .line 412
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v1, 0x7f0a038d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_system_cloud_service:Landroid/widget/RelativeLayout;

    .line 414
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_system_delete_cloud_video:Landroid/widget/RelativeLayout;

    .line 416
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_onoff_layout:Landroid/widget/RelativeLayout;

    .line 419
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method public static newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;
    .registers 1

    .line 79
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;-><init>()V

    return-object v0
.end method

.method private setCloudService()V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_cloud_switch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 209
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->cloudServiceSettings(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 210
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$5;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private setNotificationConfig()V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->SN:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 241
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 244
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_app_switch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_email_switch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    .line 248
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v2

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->SN:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->pushMsgSettings(Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Observable;

    move-result-object v0

    .line 249
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$6;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 280
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result p1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_11

    const/16 v0, 0x21

    if-eq p1, v0, :cond_11

    goto :goto_14

    .line 283
    :cond_11
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->initData()V

    :goto_14
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 437
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 438
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_c

    .line 439
    check-cast p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$OnFragmentInteractionListener;

    return-void

    .line 441
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onButtonPressed(Landroid/net/Uri;)V
    .registers 3

    .line 425
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_7

    .line 426
    invoke-interface {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$OnFragmentInteractionListener;->onFragmentInteraction(Landroid/net/Uri;)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11

    .line 455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f11003a

    const v2, 0x7f110071

    sparse-switch p1, :sswitch_data_a8

    goto/16 :goto_a6

    :sswitch_14
    const p1, 0x7f1102ce

    .line 529
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    .line 564
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$12;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$12;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    move-object v3, p0

    .line 529
    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 569
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_a6

    .line 525
    :sswitch_37
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a6

    .line 464
    :sswitch_44
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->SN:Ljava/lang/String;

    if-nez p1, :cond_5a

    .line 465
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    const v0, 0x7f110265

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_a6

    .line 468
    :cond_5a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_onoff_switch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 469
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_app_switch:Landroid/widget/Switch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 470
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_email_switch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_79

    .line 472
    :cond_6e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_app_switch:Landroid/widget/Switch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 473
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->fragment_setting_notification_email_switch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 475
    :goto_79
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->setNotificationConfig()V

    goto :goto_a6

    :sswitch_7d
    const p1, 0x7f1102aa

    .line 478
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$9;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    .line 516
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$10;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$10;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V

    move-object v3, p0

    .line 478
    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 521
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_a6

    .line 460
    :sswitch_9f
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->setNotificationConfig()V

    goto :goto_a6

    .line 572
    :sswitch_a3
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->setCloudService()V

    :goto_a6
    return-void

    nop

    :sswitch_data_a8
    .sparse-switch
        0x7f0a0303 -> :sswitch_a3
        0x7f0a0384 -> :sswitch_9f
        0x7f0a0386 -> :sswitch_9f
        0x7f0a0387 -> :sswitch_7d
        0x7f0a0389 -> :sswitch_44
        0x7f0a038d -> :sswitch_37
        0x7f0a03af -> :sswitch_14
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 85
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d0099

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    .line 94
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->initView()V

    .line 95
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->initEvent()V

    .line 96
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .registers 1

    .line 432
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 448
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$OnFragmentInteractionListener;

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 111
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onPause()V

    .line 112
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 113
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 115
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 116
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 117
    :cond_1b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 101
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onResume()V

    .line 102
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 103
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 105
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->initData()V

    .line 106
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
